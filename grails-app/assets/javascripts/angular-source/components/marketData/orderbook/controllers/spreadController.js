//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').controller('SpreadController', [
    '$scope', '$timeout', 'DepthService', 'BidsService', 'AsksService', 'SpreadService', function ($scope, $timeout, depthService, bidsService, asksService, spreadService) {
        var loaded = false;

        $scope.isLoaded = function () {
            return !loaded;
        };

        loadSpread();
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadSpread();
                intervalFunction()
            }, 30000)
        };

        function loadSpread(){
            spreadService.query()
                .success(function (data) {
                    $scope.spread = data;
                    var bidsAskSeries = generateSpreadData(data);
                    $scope.bidAskChartConfig.series.splice(0,1);
                    $scope.bidAskChartConfig.series = bidsAskSeries[0];

                    $scope.spreadChartConfig.series.splice(0,1);
                    $scope.spreadChartConfig.series = bidsAskSeries[1];

                }).error(function () {
                    $scope.spread = [];
                });
        }

        function generateSpreadData(data){
            var series = [];
            var spreadSeries = [];

            var bidsData = [];
            var asksData = [];
            var spreadsData = [];

            var bidTag = 'Bid';
            var askTag = 'Ask';
            var dateTimeTag = 'DateTime';
            var spreadTag = 'Difference';

            series.push({
                name: 'Bid',
                color: '#B40404',
                pointInterval: 36000,
                pointStart: Date.UTC(2014, 0, 1),
                step: true,
                data: []
            });

            series.push({
                name: 'Ask',
                color: '#424242',
                pointInterval: 36000,
                pointStart: Date.UTC(2014, 0, 1),
                step: true,
                data: []
            });

            spreadSeries.push({
                name: 'Spread',
                color: '#2E64FE',
                pointStart: Date.UTC(2014, 0, 1),
                data: []
            });

            for (var i = 0; i < data.length; i++) {
                if(data != null){
                    var dateTimeArray = data[i][dateTimeTag].split('T');
                    var dateArray = dateTimeArray[0].split('-');
                    var timeZoneSplitArray = dateTimeArray[1].split('+');
                    var timeArray = timeZoneSplitArray[0].split(':');

                    // For bids series
                    bidsData[i] = {
                        x: Date.UTC(dateArray[0],dateArray[1], dateArray[2], timeArray[0], timeArray[1], timeArray[2].split('.')[0]),
                        y: data[i][bidTag],
                        Bid: data[i][bidTag]//,
                        /*Ask: data[i][askTag],
                        Spread: data[i][spreadTag]*/
                    };

                    // For asks series
                    asksData[i] = {
                        x: Date.UTC(dateArray[0],dateArray[1], dateArray[2], timeArray[0], timeArray[1], timeArray[2].split('.')[0]),
                        y: data[i][askTag],
                       // Bid: data[i][bidTag],
                        ask: data[i][askTag]//,
                        //Spread: data[i][spreadTag]
                    };

                    // For spreads series
                    spreadsData[i] = {
                        x: Date.UTC(dateArray[0],dateArray[1], dateArray[2], timeArray[0], timeArray[1], timeArray[2].split('.')[0]),
                        y: data[i][spreadTag],
                       // Bid: data[i][bidTag],
                       // Ask: data[i][askTag],
                        Spread: data[i][spreadTag]
                    };
                };
            }

            for (i = 0; i < data.length; i++) {
                var bid = bidsData[i];
                var ask = asksData[i];
                var spread = spreadsData[i];

                series[0].data.push(bid);
                series[1].data.push(ask);
                spreadSeries[0].data.push(spread);
            }
            return [series, spreadSeries];
        }

        $scope.toggleLoading = function () {
            this.chartConfig.loading = !this.chartConfig.loading
        }

        $scope.bidAskChartConfig = {
            //This is not a highcharts object. It just looks a little like one!
            options: {
                //This is the Main Highcharts chart config. Any Highchart options are valid here.
                //will be ovverriden by values specified below.
                chart: {
                    type: 'line'
                },
                tooltip: {
                    style: {
                        padding: 10,
                        fontWeight: 'bold'
                    },
                    formatter: function() {
                        var s = [];
                        $.each(this.points, function(i, point) {
                            var color = '';
                            if(point.series.name === 'Bid'){
                              color = '#B40404';
                            }
                            else if(point.series.name === 'Ask'){
                                color = '#424242';
                            }
                            if(point.x != null && point.x != undefined && point.y != null && point.y != undefined){
                                s.push('<span style="color:'+color+';font-weight:bold;">'+ point.series.name +' : '+
                                    point.y +'<span>');
                            }
                        });
                        return s.join(' <br /> ');
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
            //The below properties are watched separately for changes.
            //Series object (optional) - a list of series using normal highcharts series options.
            series: [{
                data: []
            }],
            //Title configuration (optional)
            title: {
                text: '.'
            },
            //Boolean to control showng loading status on chart (optional)
            loading: false,
            //Configuration for the xAxis (optional). Currently only one x axis can be dynamically controlled.
            //properties currentMin and currentMax provied 2-way binding to the chart's maximimum and minimum
            xAxis: {
                type: 'datetime',
                labels: {
                    formatter: function() {
                        return Highcharts.dateFormat('{%H:%M:%S}', this.value);
                    }
                },
                title: {text: 'Timeline'}
            },
            yAxis: {
                title: {text: 'Bids/Asks'}
            },
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 400,
                height: 300
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: true
        }

        $scope.spreadChartConfig = {
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
                    },
                    formatter: function() {
                        var s = [];
                        $.each(this.points, function(i, point) {
                            if(point.x != null && point.x != undefined && point.y != null && point.y != undefined){
                                s.push('<span style="color:#2E64FE;font-weight:bold;">'+ point.series.name +' : '+
                                    point.y +'<span>');
                            }
                        });
                        return s.join(' <br /> ');
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
            //The below properties are watched separately for changes.
            //Series object (optional) - a list of series using normal highcharts series options.
            series: [{
                data: []
            }],
            //Title configuration (optional)
            title: {
                text: '.'
            },
            //Boolean to control showng loading status on chart (optional)
            loading: false,
            //Configuration for the xAxis (optional). Currently only one x axis can be dynamically controlled.
            //properties currentMin and currentMax provied 2-way binding to the chart's maximimum and minimum
            xAxis: {
                type: 'datetime',
                labels: {
                    formatter: function() {
                        return Highcharts.dateFormat('{%H:%M:%S}', this.value);
                    }
                },
                title: {text: 'Timeline'}
            },
            yAxis: {
                title: {text: 'Spread'}
            },
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 400,
                height: 300
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: true
        }
    }]);
