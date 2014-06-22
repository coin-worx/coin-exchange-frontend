//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').controller('DepthController', [
    '$scope', 'DepthService', 'BidsService', 'AsksService', function ($scope, depthService, bidsService, asksService) {
        var loaded = false;
        var bids = null;
        var asks = null;

        $scope.isLoaded = function () {
            return !loaded;
        };

        depthService.query()
            .success(function (data) {
                $scope.depth = data;
                bids = $scope.depth['BidDepth'];
                asks = $scope.depth['AskDepth'];
                var originalSeries = generateDepthData();
                $scope.chartConfig.series.splice(0,1);
                $scope.chartConfig.series = originalSeries;

                bidsService.query()
                    .success(function(bids){
                        $scope.bids = bids;
                        getAsksAndMakeSeries()
                    }).error(function(){
                        $scope.bids = null;
                       getAsksAndMakeSeries()
                    });
            }).error(function () {
                $scope.depth = [];
            });

        function getAsksAndMakeSeries(){
            asksService.query()
                .success(function(asks){
                    $scope.asks = asks;
                    var volumeSeries = generateVolumeData($scope.bids, $scope.asks);
                    $scope.volumeChartConfig.series.splice(0,1);
                    $scope.volumeChartConfig.series = volumeSeries;
                }).error(function(){
                    $scope.asks = null;
                    var volumeSeries = generateVolumeData($scope.bids, $scope.asks);
                    $scope.volumeChartConfig.series.splice(0,1);
                    $scope.volumeChartConfig.series = volumeSeries;
                });
        }

        function generateDepthData() {
            var series = [];
            if(bids != null && bids != undefined && bids.length != 0)  {
                makeDepthSeries('Bids', series, bids, bids.length, 0, '#B40404');
            }

            if(asks != null  && asks != undefined && asks.length != 0){
                makeDepthSeries('Asks', series, asks, asks.length, 1, '#424242');
            }

            return series;
        }

        function makeDepthSeries(name, series, sideList, len, seriesIndex, colorCode){
            var  ps = [];
            for (var i = 0; i < len; i++) {
                if(sideList[i] != null && sideList[i]['Price'] != null && sideList[i]['Volume']){
                    ps[i] = {
                        x: sideList[i]['Price'],
                        y: sideList[i]['Volume']
                    };
                };
            }
            series.push({
                name: name,
                color: colorCode,
                data: []
            });

            for (i = 0; i < len; i++) {
                var p = ps[i];

                series[seriesIndex].data.push(p);
            }
        }

        function generateVolumeData(bids, asks) {
            var series = [];
            if(bids != null && bids != undefined && bids.length != 0)  {
                makeVolumeSeries('Bids', series, bids, bids.length, 0, '#B40404');
            }
            if(asks != null  && asks != undefined && asks.length != 0){
                makeVolumeSeries('Asks', series, asks, asks.length, 1, '#424242');
            }

            return series;
        }

        function makeVolumeSeries(name, series, sideList, len, seriesIndex, colorCode){
            var  ps = [];
            var priceTag = '';
            var volumeTag = '';
            if(seriesIndex === 0){
                priceTag = 'BidPrice';
                volumeTag = 'BidVolume';
            }
            else if(seriesIndex === 1){
                priceTag = 'AskPrice';
                volumeTag = 'AskVolume';
            }
            for (var i = 0; i < len; i++) {
                if(sideList[i] != null && sideList[i][priceTag] != null && sideList[i][volumeTag]){
                    ps[i] = {
                        x: sideList[i][priceTag],
                        y: sideList[i][volumeTag]
                    };
                };
            }
            series.push({
                name: name,
                color: colorCode,
                data: []
            });

            for (i = 0; i < len; i++) {
                var p = ps[i];

                series[seriesIndex].data.push(p);
            }
        }

        $scope.sort = {
            reverse: true
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.depth.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
        };

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }

        $scope.setLabelStyles = function (label) {
            var className = 'label-';
            switch (label) {
                case 'PartiallyFilled':
                    className += 'important';
                    break;
                case 'Accepted':
                    className += 'success';
                    break;
                case 'Complete':
                    className += 'success';
                    break;

                default:
                    className += 'inverse';
            }

            return className;
        };

        $scope.toggleLoading = function () {
            this.chartConfig.loading = !this.chartConfig.loading
        }

        $scope.chartConfig = {
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
                    }
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
                //currentMin: 0,
                //currentMax: 20,
                title: {text: 'Price'}
            },
            yAxis: {
                //currentMin: 0,
                //currentMax: 20,
                title: {text: 'Cummulative Volume'}
            },
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 400,
                height: 300
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: false
            //series: bidSeries
        }

        $scope.volumeChartConfig = {
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
                    }
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
                //currentMin: 0,
                //currentMax: 20,
                title: {text: 'Price'}
            },
            yAxis: {
                //currentMin: 0,
                //currentMax: 20,
                title: {text: 'Cummulative Volume'}
            },
            //size (optional) if left out the chart will default to size of the div or something sensible.
            size: {
                width: 400,
                height: 300
            },
            tooltip: {
                formatter: function() {return ' ' +
                    'Locked: ' + this.point.x + '<br />' +
                    'Unlocked: ' + this.point.y + '<br />' +
                    'Potential: ' + this.point.y;
                },
                backgroundColor: {
                    linearGradient: [0, 0, 0, 60],
                    stops: [
                        [0, '#FFFFFF'],
                        [1, '#E0E0E0']
                    ]
                },
                borderWidth: 1,
                borderColor: '#AAA',
                crosshairs: [true]
            },
            //Whether to use HighStocks instead of HighCharts (optional). Defaults to false.
            useHighStocks: false
            //series: bidSeries
        }
    }]);
