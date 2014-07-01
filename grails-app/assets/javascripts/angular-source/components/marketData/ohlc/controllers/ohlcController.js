//=require angular-source/components/marketData/ohlc/ohlc.module

'use strict';

angular.module('marketData.ohlc').controller('OhlcController', [
    '$scope', '$timeout', 'OhlcService', function ($scope, $timeout, ohlcService) {
        var loaded = false;
        var currencyPair = '';

        loadOhlc();
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadOhlc();
                intervalFunction()
            }, 30000)
        };

        function loadOhlc(){
            ohlcService.query()
                .success(function (data) {
                    $scope.ohlc = data;
                    var arrangedOhlcArray = arrangeOhlcData($scope.ohlc);
                    $scope.ohlcChartConfig.series.splice(0,1);
                    $scope.ohlcChartConfig.series = getOhlcSeries(arrangedOhlcArray[0], arrangedOhlcArray[1], arrangedOhlcArray[2]);
                    $scope.loaded = true;

                }).error(function () {
                    $scope.ohlc = [];
                });
        }

        // Arrange the OHLC data so that it is in the format that can be understood by HighStocks
        function arrangeOhlcData(data){
            if(data != null){
                currencyPair = data['PairName'];
                var volumeArray = [];
                var arrangedArray = [];
                var ohlcArray = data['OhlcInfo'];
                for(var i = 0; i < ohlcArray.length; i++){
                    var currentArrayElement = ohlcArray[i];

                    var dateTime = convertStringToDateTImeFormat(currentArrayElement[4]);
                    var volumeArrayElement = [dateTime, currentArrayElement[5]];
                    volumeArray.push(volumeArrayElement);
                    var arrangedArrayElement = [dateTime, currentArrayElement[0], currentArrayElement[1],
                        currentArrayElement[2], currentArrayElement[3]];
                    arrangedArray.push(arrangedArrayElement);
                }
                return [currencyPair, arrangedArray, volumeArray];
            }
        }

        function convertStringToDateTImeFormat(element){
            var dateTimeArray = element.split('T');
            var dateArray = dateTimeArray[0].split('-');
            var timeZoneSplitArray = dateTimeArray[1].split('+');
            var timeArray = timeZoneSplitArray[0].split(':');
            return Date.UTC(dateArray[0],dateArray[1], dateArray[2], timeArray[0], timeArray[1], timeArray[2].split('.')[0]);
        }

        // set the allowed units for data grouping
        var groupingUnits = [[
            'week',                         // unit name
            [1]                             // allowed multiples
        ], [
            'month',
            [1, 2, 3, 4, 6]
        ]];

        function getOhlcSeries(currencyPair, data, volumeData){
            var series = [{
                type: 'spline',
                name: '.',
                // ToDo: Provide Weighted Average here from TickerInfo
                data: data,
                dataGrouping: {
                    units: groupingUnits
                }
            },{
                type : 'candlestick',
               // name : 'Hourly Price History ' +currencyPair,
                name : '.',
                yAxis: 1,
                data : data,
                dataGrouping : {
                    units : groupingUnits
                }
            }];
            return series;
        }

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.ohlcChartConfig = {
            //This is not a highcharts object. It just looks a little like one!
            options: {
                //This is the Main Highcharts chart config. Any Highchart options are valid here.
                //will be ovverriden by values specified below.
                chart: {
                    type: 'area'
                },
                tooltip: {
                    style: {
                        padding: 10,
                        fontWeight: 'bold'
                    }/*,
                    formatter: function() {
                        var s = [];
                        $.each(this.points, function(i, point) {
                            if(point.x != null && point.x != undefined && point.y != null && point.y != undefined){
                                s.push('<span style="color:#2E64FE;font-weight:bold;">'+ 'High: ' +' : '+
                                    point.y + '<br/>' + 'Volume' + ' : ' + point.x +'<span>');
                            }
                        });
                        return s.join(' <br /> ');
                    }*/,
                    shared:true
                },
                rangeSelector : {
                    enabled: false
                },
                navigator: {
                    enabled: false
                }
            },
            //The below properties are watched separately for changes.
            //Series object (optional) - a list of series using normal highcharts series options.
            series: [{
                data: []
            }],
            //Title configuration (optional)
            title: {
                text: 'Hourly Price History ' + currencyPair
            },
            //Boolean to control showng loading status on chart (optional)
            loading: false,
            xAxis: {
                type: 'datetime',
                labels: {
                    formatter: function() {
                        return Highcharts.dateFormat('{%H:%M:%S}', this.value);
                    }
                },
                title: {text: 'Timeline'}
            },
            yAxis: [{
                title: {
                    text: 'Price'},
                labels: {
                overflow: 'justify'
                },
                plotLines: [{
                    color: '#B40404',
                    width: 2,
                    value: 290,
                    dashStyle: 'solid'
                },
                {
                    text: 'Price',
                    color: '#424242',
                    width: 2,
                    value: 310,
                    dashStyle: 'solid'
                }]//,
               // opposite: true
            },
                {
                    linkedTo:0,
                    title: {text: 'Weighted Average'},
                    opposite: false
            }],
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 1000,
                height: 400
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: true
        }
    }]);
