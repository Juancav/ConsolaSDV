(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['exports', 'echarts'], factory);
    } else if (typeof exports === 'object' && typeof exports.nodeName !== 'string') {
        // CommonJS
        factory(exports, require('echarts'));
    } else {
        // Browser globals
        factory({}, root.echarts);
    }
}(this, function (exports, echarts) {
    var log = function (msg) {
        if (typeof console !== 'undefined') {
            console && console.error && console.error(msg);
        }
    };
    if (!echarts) {
        log('ECharts is not Loaded');
        return;
    }
    echarts.registerTheme('ThemeJC', {
        "color": [
            "#0069ff",
            "#FFFB00",
            "#ff00b0",
            "#00ff99",
            "#007e90",
            "#8e10ff"
        ],
        "backgroundColor": "#202338",
        "textStyle": {},
        "title": {
            "textStyle": {
                "color": "#ffffff"
            },
            "subtextStyle": {
                "color": "#93b7e3"
            }
        },
        "line": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "2"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "2"
                }
            },
            "symbolSize": "8",
            "symbol": "emptyCircle",
            "smooth": true
        },
        "radar": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "2"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "2"
                }
            },
            "symbolSize": "8",
            "symbol": "emptyCircle",
            "smooth": true
        },
        "bar": {
            "itemStyle": {
                "normal": {
                    "barBorderWidth": "0",
                    "barBorderColor": "#ccc"
                },
                "emphasis": {
                    "barBorderWidth": "0",
                    "barBorderColor": "#ccc"
                }
            }
        },
        "pie": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "scatter": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "boxplot": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "parallel": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "sankey": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "funnel": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "gauge": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                },
                "emphasis": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            }
        },
        "candlestick": {
            "itemStyle": {
                "normal": {
                    "color": "#edafda",
                    "color0": "transparent",
                    "borderColor": "#d680bc",
                    "borderColor0": "#8fd3e8",
                    "borderWidth": "2"
                }
            }
        },
        "graph": {
            "itemStyle": {
                "normal": {
                    "borderWidth": "0",
                    "borderColor": "#ccc"
                }
            },
            "lineStyle": {
                "normal": {
                    "width": "1",
                    "color": "#ffffff"
                }
            },
            "symbolSize": "8",
            "symbol": "emptyCircle",
            "smooth": true,
            "color": [
                "#0069ff",
                "#00c2ff",
                "#ff00b0",
                "#00ff99",
                "#007e90",
                "#8e10ff"
            ],
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff"
                    }
                }
            }
        },
        "map": {
            "itemStyle": {
                "normal": {
                    "areaColor": "#f3f3f3",
                    "borderColor": "#516b91",
                    "borderWidth": 0.5
                },
                "emphasis": {
                    "areaColor": "#a5e7f0",
                    "borderColor": "#516b91",
                    "borderWidth": 1
                }
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#000"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#516b91"
                    }
                }
            }
        },
        "geo": {
            "itemStyle": {
                "normal": {
                    "areaColor": "#f3f3f3",
                    "borderColor": "#516b91",
                    "borderWidth": 0.5
                },
                "emphasis": {
                    "areaColor": "#a5e7f0",
                    "borderColor": "#516b91",
                    "borderWidth": 1
                }
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#000"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#516b91"
                    }
                }
            }
        },
        "categoryAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#ffffff"
                }
            },
            "axisTick": {
                "show": false,
                "lineStyle": {
                    "color": "#333"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#ffffff"
                }
            },
            "splitLine": {
                "show": false,
                "lineStyle": {
                    "color": [
                        "#ffffff"
                    ]
                }
            },
            "splitArea": {
                "show": false,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(200,200,200,0.02)"
                    ]
                }
            }
        },
        "valueAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#ffffff"
                }
            },
            "axisTick": {
                "show": false,
                "lineStyle": {
                    "color": "#333"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#ffffff"
                }
            },
            "splitLine": {
                "show": false,
                "lineStyle": {
                    "color": [
                        "#ffffff"
                    ]
                }
            },
            "splitArea": {
                "show": false,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(200,200,200,0.02)"
                    ]
                }
            }
        },
        "logAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#ffffff"
                }
            },
            "axisTick": {
                "show": false,
                "lineStyle": {
                    "color": "#333"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#ffffff"
                }
            },
            "splitLine": {
                "show": false,
                "lineStyle": {
                    "color": [
                        "#ffffff"
                    ]
                }
            },
            "splitArea": {
                "show": false,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(200,200,200,0.02)"
                    ]
                }
            }
        },
        "timeAxis": {
            "axisLine": {
                "show": true,
                "lineStyle": {
                    "color": "#ffffff"
                }
            },
            "axisTick": {
                "show": false,
                "lineStyle": {
                    "color": "#333"
                }
            },
            "axisLabel": {
                "show": true,
                "textStyle": {
                    "color": "#ffffff"
                }
            },
            "splitLine": {
                "show": false,
                "lineStyle": {
                    "color": [
                        "#ffffff"
                    ]
                }
            },
            "splitArea": {
                "show": false,
                "areaStyle": {
                    "color": [
                        "rgba(250,250,250,0.05)",
                        "rgba(200,200,200,0.02)"
                    ]
                }
            }
        },
        "toolbox": {
            "iconStyle": {
                "normal": {
                    "borderColor": "#ffffff"
                },
                "emphasis": {
                    "borderColor": "#1fd3e4"
                }
            }
        },
        "legend": {
            "textStyle": {
                "color": "#ffffff"
            }
        },
        "tooltip": {
            "axisPointer": {
                "lineStyle": {
                    "color": "#f80606",
                    "width": "1"
                },
                "crossStyle": {
                    "color": "#f80606",
                    "width": "1"
                }
            }
        },
        "timeline": {
            "lineStyle": {
                "color": "#8fd3e8",
                "width": 1
            },
            "itemStyle": {
                "normal": {
                    "color": "#8fd3e8",
                    "borderWidth": 1
                },
                "emphasis": {
                    "color": "#8fd3e8"
                }
            },
            "controlStyle": {
                "normal": {
                    "color": "#8fd3e8",
                    "borderColor": "#8fd3e8",
                    "borderWidth": 0.5
                },
                "emphasis": {
                    "color": "#8fd3e8",
                    "borderColor": "#8fd3e8",
                    "borderWidth": 0.5
                }
            },
            "checkpointStyle": {
                "color": "#8fd3e8",
                "borderColor": "#8fd3e8"
            },
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#8fd3e8"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#8fd3e8"
                    }
                }
            }
        },
        "visualMap": {
            "color": [
                "#00c2ff",
                "#0069ff",
                "#8e10ff"
            ]
        },
        "dataZoom": {
            "backgroundColor": "rgba(0,0,0,0)",
            "dataBackgroundColor": "rgba(255,255,255,0.3)",
            "fillerColor": "rgba(189,193,200,0.4)",
            "handleColor": "#a7b7cc",
            "handleSize": "100%",
            "textStyle": {
                "color": "#ffffff"
            }
        },
        "markPoint": {
            "label": {
                "normal": {
                    "textStyle": {
                        "color": "#ffffff"
                    }
                },
                "emphasis": {
                    "textStyle": {
                        "color": "#ffffff"
                    }
                }
            }
        }
    });
}));
