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
    <canvas style="width:800px; height:600px;" id="myCanvas">
        %itemlist
    </canvas>
</div>

</body>

<script type="text/javascript">
    window.onload = function() {
        try {
            TagCanvas.textColour = '#9999ff';
            TagCanvas.outlineColour = '#ff9999';
            TagCanvas.initial = [-0.100, 0.170];
            TagCanvas.imageScale = .4;
            TagCanvas.zoom = 2.0;
            TagCanvas.Start('myCanvas');
        } catch(e) {
            // something went wrong, hide the canvas container
            document.getElementById('myCanvasContainer').style.display = 'none';
        }
    };
</script>

</html>
