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
                    });

                    var container = $("#graph");
                    container.css({"width": $(window).width() + "px"});
                    container.css({"height": $(window).height() + "px"});

                    var data = {
                        nodes: nodes,
                        edges: edges
                    };
                    var options = {
                        nodes: {
                            color: '#6369ff',
                            fixed: false,
                            font: {
                                color: '#343434',
                                size: 20,
                                face: 'arial',
                                background: 'none',
                                strokeWidth: 0,
                                strokeColor: '#ffffff',
                                align: 'center',
                                multi: false
                            },
                            labelHighlightBold: true,
                            physics: false,
                            shape: 'ellipse'
                        },
                        edges:{
                            arrows: {
                                to:     {enabled: true, scaleFactor:1, type:'arrow'},
                                middle: {enabled: false, scaleFactor:1, type:'arrow'},
                                from:   {enabled: false, scaleFactor:1, type:'arrow'}
                            },
                            color: {
                                color:'#5294b6',
                                highlight:'#181456',
                                hover: '#848484',
                                opacity:1.0
                            },
                            arrowStrikethrough: true,
                            chosen: true,
                            font: '12px arial #ff0000',
                            shadow: true,
                            smooth: true
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