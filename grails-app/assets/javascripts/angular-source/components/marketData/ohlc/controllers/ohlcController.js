//=require angular-source/components/marketData/ohlc/ohlc.module

'use strict';

angular.module('marketData.ohlc').controller('OhlcController', [
    '$scope', '$timeout', 'OhlcService', function ($scope, $timeout, ohlcService) {
        var loaded = false;
        var currencyPair = '';
        var bbo = [];

        loadOhlc();
        //intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                //loadOhlc();
                intervalFunction()
            }, 30000)
        };

        $scope.loadOhlc = function(){
            loadOhlc();
        };

        function loadOhlc(){
            ohlcService.query()
                .success(function (data) {
                    // Get the chart fror OHLC
                    var chart = Highcharts.charts[0];
                    bbo = data[0]['BBO'];
                    // Draw lines for best Bid and Ask
                    addBidAskPlotLines(chart, bbo.BestBidPrice, bbo.BestAskPrice);

                    $scope.ohlc = data[0]['Ohlc'];
                    var arrangedOhlcArray = arrangeOhlcData($scope.ohlc);
                    $scope.ohlcChartConfig.series.splice(0,1);
                    $scope.ohlcChartConfig.series = getOhlcSeries(arrangedOhlcArray[0], arrangedOhlcArray[1], arrangedOhlcArray[2],
                    arrangedOhlcArray[3]);

                    $scope.loaded = true;
                    loadFullCanvas(chart);

                }).error(function () {
                    $scope.ohlc = [];
                });
        }

        // Loads the image on canvas after 2 seconds so that the chart is rendered completely by then
        function loadFullCanvas(chart){
            $timeout(function() {
                drawOhlcOnCanvas(chart);
            }, 1000)
        }

        function addBidAskPlotLines(chart, bestBidPrice, bestAskPrice){
            // Add a plot line for Bid
            chart.yAxis[0].addPlotLine({
                color: '#B40404',
                width: 2,
                value: bestBidPrice,
                dashStyle: 'solid',
                id: 'bid-plot-line2'
            });

            // Add a plot line for Ask
            chart.yAxis[0].addPlotLine({
                color: '#424242',
                width: 2,
                value: bestAskPrice,
                dashStyle: 'solid',
                id: 'ask-plot-line'
            });
        }

        function drawOhlcOnCanvas(chart){
            var canvasElement = document.getElementById("ohlcCanvas");
            var ohlcSvg = chart.getSVG();
            // Get chart aspect ratio
            var c_ar = chart.chartHeight / chart.chartWidth;
            // Set canvas size
            canvasElement.width = 72;
            canvasElement.height = canvasElement.width * c_ar;

            var canvgRender = canvg(canvasElement, ohlcSvg, {
                ignoreDimensions: true,
                scaleWidth: canvasElement.width,
                scaleHeight: canvasElement.height
            });
        }

        // Arrange the OHLC data so that it is in the format that can be understood by HighStocks
        function arrangeOhlcData(data){
            if(data != null){
                currencyPair = data['PairName'];
                var volumeArray = [];
                var arrangedArray = [];
                var weightedAverageArray = [];
                var ohlcArray = data['OhlcInfo'];
                for(var i = 0; i < ohlcArray.length; i++){
                    var currentArrayElement = ohlcArray[i];

                    var dateTime = convertStringToDateTImeFormat(currentArrayElement[4]);
                    var volumeArrayElement = [dateTime, currentArrayElement[5]];
                    volumeArray.push(volumeArrayElement);
                    var arrangedArrayElement = [dateTime, currentArrayElement[0], currentArrayElement[1],
                        currentArrayElement[2], currentArrayElement[3]];
                    arrangedArray.push(arrangedArrayElement);

                    var weightedAverageElement = [dateTime, currentArrayElement[6]];
                    weightedAverageArray.push(weightedAverageElement);
                }
                return [currencyPair, arrangedArray, volumeArray, weightedAverageArray];
            }
        }

        function convertStringToDateTImeFormat(element){
            var dateTimeArray = element.split('T');
            var dateArray = dateTimeArray[0].split('-');
            var timeZoneSplitArray = dateTimeArray[1].split('+');
            var timeArray = timeZoneSplitArray[0].split(':');
            // The months in highcharts start from 0 = January, 1= Febrauary and so on, so remove 1 from the month provided by
            // the backend
            return Date.UTC(dateArray[0], dateArray[1] - 1, dateArray[2], timeArray[0], timeArray[1], timeArray[2].split('.')[0]);
        }

        // set the allowed units for data grouping
        var groupingUnits = [[
            'week',                         // unit name
            [1]                             // allowed multiples
        ], [
            'month',
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        ]];

        function getOhlcSeries(currencyPair, data, volumeData, weightedAverageData){
            var series = [{
                type : 'candlestick',
               // name : 'Hourly Price History ' +currencyPair,
                name : ' ',
                data : data,
                dataGrouping : {
                    units : groupingUnits
                },
                color: 'green',
                upColor: 'red'
            },
                {
                    type: 'spline',
                    color: '#0099CC',
                    name: 'Weighted Average',
                    data: weightedAverageData,
                    yAxis: 1,
                    dataGrouping: {
                        units: groupingUnits
                    }
                },
                {
                    type: 'area',
                    name: 'Volume',
                    color: 'orange',
                    data: volumeData,
                    yAxis: 2,
                    dataGrouping: {
                        units: groupingUnits
                    }
                }];
            return series;
        }

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.ohlcChartConfig = {
            options: {
                chart: {
                    type: 'area'
                },
                exporting: { enabled: false },
                tooltip: {
                    style: {
                        padding: 10,
                        fontWeight: 'bold'
                    },
                    shared:true
                },
                rangeSelector : {
                    enabled: false
                },
                navigator: {
                    enabled: false
                }
            },
            series: [{
                data: []
            }],
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
                height: 250,
                labels: {
                overflow: 'justify'
                },
                plotLines: [{
                    color: '#B40404',
                    width: 2,
                    value: 0,
                    dashStyle: 'solid',
                    id: 'bid-plot-line'
                },
                {
                    text: 'Price',
                    color: '#424242',
                    width: 2,
                    value: 0,
                    dashStyle: 'solid',
                    id: 'ask-plot-line'
                }]//,
               // opposite: true
            },
                {
                    linkedTo:0,
                    height: 250,
                    title: {text: 'Weighted Average'},
                    opposite: false
            },
                {
                    title: {
                        text: 'Volume'
                    },
                    top: 310,
                    height: 85,
                    offset: 0,
                    lineWidth: 2
                }],
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 1000,
                height: 500
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: true
        }
    }]);
