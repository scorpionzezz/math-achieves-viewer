<html>
<head>
    <title>Network | Sizing</title>

    <style type="text/css">
        html, body {
            font: 10pt arial;
        }

        #mynetwork {
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
                console.log("Got data: " + gotData);
                nodes = JSON.parse(gotData).nodes;

                $.get("/edges", function (gotEdges) {
                    console.log("Got edges: " + gotEdges);
                    edges = JSON.parse(gotEdges).edges;

                    var container = $("#mynetwork");
                    container.css({"width": $(window).width() + "px"});
                    container.css({"height": $(window).height() + "px"});

                    var data = {
                        nodes: nodes,
                        edges: edges
                    };
                    var options = {
                        nodes: {
                            shape: 'dot'
                        }
                    };
                    network = new vis.Network(document.getElementById('mynetwork'), data, options);
                });
            });
        });
    </script>

</head>

<body>
<div id="mynetwork"></div>
</body>

</html>