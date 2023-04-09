<html>
<body>
<h2>Create Map</h2>

<form action="/create-map" method="post">

    <label>Name</label>
    <input type="text" name="map-name" id="map-name">
    <br>
    <label>Description</label>
        <input type="text" name="map-description" id="map-description">
    <br>
    <label>BombSites</label>
        <input type="number" name="map-bombsites" id="map-bombsites">
    <br>
    <label>Coordinates</label>
        <input type="text" name="map-coordinates" id="map-coordinates">
    <br>
    <label>Country</label>
        <input type="text" name="map-country" id="map-country">
    <br>
    <label>Peculiarity</label>
        <input type="text" name="map-peculiarity" id="map-peculiarity">
    <br>
    <label>Release Date</label>
        <input type="Date" name="map-date" id="map-date">
    <br>
    <label>Season</label>
            <input type="number" name="map-season" id="map-season">
    <br>
    <label>Act</label>
            <input type="number" name="map-act" id="map-act">
    <br>
    <label>Rotation</label>
            <input type="checkbox" name="map-rotation" id="map-rotation" value = "true">
    <br>
    <button type="submit">Register</button>


</form>

</body>
</html>
