<html>
<head>
    <title>Math achievements</title>

    <style type="text/css">
        html, body {
            font: 10pt arial;
        }

        #graph {
            width: 600px;
            height: 400px;
            border: 1px solid lightgray;
        }
    </style>

    <script type="text/javascript" src="vis.js"></script>
    <link type="text/css" rel="stylesheet" href="vis-network.min.css"/>
    <script src="webjars/jquery/3.2.0/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var nodes = null;
            var edges = null;
            var network = null;

            $.get("/data", function (gotData) {
                nodes = gotData;
                console.log("Got data: " + nodes);

                $.get("/edges", function (gotEdges) {
                    edges = gotEdges;
                    console.log("Got edges: " + edges);

                    edges.forEach(function (elem) {
                        elem.from = elem.source;
                        elem.label = undefined;
                    });

                    var container = $("#graph");
                    container.css({"width": $(window).width() + "px"});
                    container.css({"height": $(window).height() + "px"});

                    var data = {
                        nodes: nodes,
                        edges: edges
                    };

                    var options = {
                        /*configure: {
                            enabled: true,
                            filter: 'nodes,edges',
                            container: document.getElementById('graph'),
                            showButton: true
                        },*/
                        nodes: {
                            borderWidthSelected: 5,
                            color: {
                                background: "rgba(187,192,252,1)"
                            },
                            physics: false,
                            scaling: {
                                min: 11
                            },
                            size: 30
                        },
                        edges: {
                            arrows: {
                                to: {enabled: true}
                            },
                            color: {
                                color:'#5294b6',
                                highlight:'#181456',
                                hover: '#848484'
                            },
                            scaling: {
                               customScalingFunction: function (min,max,total,value) {
                                   return value/(1.0*max);
                               }
                            },
                            smooth: {
                                enabled: true,
                                type: 'diagonalCross'
                            },
                            physics: false
                        },
                        layout: {
                            hierarchical: {
                                enabled: true,
                                levelSeparation: 100,
                                nodeSpacing: 150,
                                treeSpacing: 150
                            }
                        }
                    };

                    network = new vis.Network(document.getElementById('graph'), data, options);
                });
            });
        });
    </script>

</head>

<body>
<div id="graph"></div>
</body>

</html>