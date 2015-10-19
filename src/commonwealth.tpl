<html>
<head>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="excanvas.js"></script>
    <![endif]-->
    <script src="js/vendor/tagcanvas.js" type="text/javascript"></script>
<style>

</style>
</head>
<body>

<div id="myCanvasContainer">
    <canvas height="600" width="600" id="myCanvas">
        %itemlist
    </canvas>
</div>

</body>

<script type="text/javascript">
    window.onload = function() {
        try {
            TagCanvas.textColour = '#9999ff';
            TagCanvas.outlineColour = '#ff9999';
            TagCanvas.initial = [-0.0700, 0.110];
            TagCanvas.imageScale = .7;
            TagCanvas.zoom = 1.3;
            TagCanvas.zoomMin = .7;
            TagCanvas.zoomMax = 2;
            TagCanvas.Start('myCanvas');
        } catch(e) {
            // something went wrong, hide the canvas container
            document.getElementById('myCanvasContainer').style.display = 'none';
        }
    };
</script>
Most data pulled from <a href="https://en.wikipedia.org/wiki/Timeline_of_national_flags">Timeline of National Flags - wikipedia</a>

</html>
