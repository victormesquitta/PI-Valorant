package ValorantSSP.com.br.Model;

public class Skin {
    private int id;
    private String name;
    private int season;
    private int act;
    private String date;
    private float price;
    private int recolors;


    public int getId(){
        return id;
    }

    public void setId(int id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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


}


