package ValorantSSP.com.br.Model;

public class Skin {
    private int id;
    private String Name;
    private int Season;
    private int Act;
    private String Date;
    private float price;
    private boolean Recolors;


    public int getId(){
        return id;
    }

    public void setId(int Id) {this.id = id;}
    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        this.Date = date;
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

    public float getPrice(){return price;}

    public void setPrice(float price){this.price = price;}

    public boolean getRecolors() {return Recolors;}

    public void setRecolors(boolean recolors) {this.Recolors = recolors;}
}


