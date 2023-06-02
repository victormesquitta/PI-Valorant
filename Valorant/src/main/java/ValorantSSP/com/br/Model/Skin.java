package ValorantSSP.com.br.Model;

public class Skin {
    private String id;
    private String name;
    private String type;
    private int season;
    private int act;
    private String date;
    private float price;
    private int recolors;
    private String path;
    private String pathType;

    public String getId(){
        return id;
    }

    public void setId(String id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    public int getSeason() {
        return season;
    }

    public void setSeason(int season) {
        this.season = season;
    }

    public int getAct() {
        return act;
    }

    public void setAct(int act) {
        this.act = act;
    }

    public float getPrice(){return price;}

    public void setPrice(float price){this.price = price;}

    public int getRecolors() {return recolors;}

    public void setRecolors(int recolors) {this.recolors = recolors;}

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getPathType() {
        return pathType;
    }

    public void setPathType(String pathType) {
        this.pathType = pathType;
    }



}


