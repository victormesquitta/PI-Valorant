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


<h2>Create Weapon</h2>

<form action="/create-weapon" method="post">

    <label>Name</label>
    <input type="text" name="weapon-name" id="weapon-name">
    <br>
    <label>Type</label>
        <input type="text" name="weapon-type" id="weapon-type">
    <br>
    <label>Creds</label>
        <input type="number" name="weapon-creds" id="weapon-creds">
    <br>
    <label>Damage</label>
        <input type="number" name="weapon-damage" id="weapon-damage">
    <br>
    <label>Magazine</label>
        <input type="number" name="weapon-magazine" id="weapon-magazine">
    <br>
    <label>Reserve</label>
        <input type="number" name="weapon-reserve" id="weapon-reserve">
    <br>
    <label>Fire Rate per Seconds</label>
        <input type="number" name="weapon-fireRateSecs" id="weapon-fireRateSecs">
    <br>
    <label>Wall Penetration</label>
            <input type="text" name="weapon-wallPenetration" id="weapon-wallPenetration">
    <br>
        <button type="submit">Register</button>
</form>

<h2>Create Skin</h2>

<form action="/create-skin" method="post">
    <label>Name</label>
    <input type="text" name="skin-name" id="skin-name">
    <br>
    <label>Season</label>
        <input type="text" name="skin-season" id="skin-season">
    <br>
    <label>Act</label>
        <input type="number" name="skin-act" id="skin-act">
    <br>
    <label>Date</label>
        <input type="date" name="skin-date" id="skin-date">
    <br>
    <label>Price</label>
        <input type="number" name="skin-price" id="skin-price">
    <br>
    <label>Recolors</label>
        <input type="number" name="skin-recolors" id="skin-recolors">
    <br>
    <label>Path</label>
            <input type="text" name="skin-path" id="skin-path">
        <br>
    <button type="submit">Register</button>
</form>

<h2>Create Agent</h2>

<form action="/create-agent" method="post">

    <label>Name</label>
    <input type="text" name="agent-name" id="agent-name">
    <br>
    <label>Role</label>
        <input type="text" name="agent-role" id="agent-role">
    <br>
    <label>Skill</label>
        <input type="text" name="agent-skill" id="agent-skill">
    <br>
    <label>Lore</label>
        <input type="text" name="agent-lore" id="agent-lore">
    <br>
    <label>Ultimate Points</label>
        <input type="number" name="agent-ultimatepoints" id="agent-ultimatepoints">
    <br>
    <button type="submit">Register</button>


</body>
</html>
