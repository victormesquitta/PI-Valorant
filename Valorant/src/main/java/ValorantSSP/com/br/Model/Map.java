package ValorantSSP.com.br.Model;

public class Map {
    private String id;
    private String Name;
    private String Description;
    private int Bombsites;
    private String Coordinates;
    private String Country;
    private String Peculiarity;
    private String releaseDate;
    private int Season;
    private int Act;
    private boolean Rotation;

    private String Path;

    public String getId(){
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public int getBombsites() {
        return Bombsites;
    }

    public void setBombsites(int bombsites) {
        Bombsites = bombsites;
    }

    public String getCoordinates() {
        return Coordinates;
    }

    public void setCoordinates(String coordinates) {
        Coordinates = coordinates;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String country) {
        Country = country;
    }

    public String getPeculiarity() {
        return Peculiarity;
    }

    public void setPeculiarity(String peculiarity) {
        Peculiarity = peculiarity;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public int getSeason() {
        return Season;
    }

    public void setSeason(int season) {
        Season = season;
    }

    public int getAct() {
        return Act;
    }

    public void setAct(int act) {
        Act = act;
    }

    public boolean isRotation() {
        return Rotation;
    }

    public void setRotation(boolean rotation) {
        Rotation = rotation;
    }

}
