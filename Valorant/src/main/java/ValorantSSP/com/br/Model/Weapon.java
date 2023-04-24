package ValorantSSP.com.br.Model;

public class Weapon {

    private int id;
    private String name;
    private String type;
    private int creds;
    private int damage;
    private int magazine; // munição por pente
    private int reserve; // munição total
    private int fireRateSecs;
    private String wallPenetration;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public int getCreds() {
        return creds;
    }

    public void setCreds(int creds) {
        this.creds = creds;
    }

    public int getDamage() {
        return damage;
    }

    public void setDamage(int damage) {
        this.damage = damage;
    }

    public int getMagazine() {
        return magazine;
    }

    public void setMagazine(int magazine) {
        this.magazine = magazine;
    }

    public int getReserve() {
        return reserve;
    }

    public void setReserve(int reserve) {
        this.reserve = reserve;
    }

    public int getFireRateSecs() {
        return fireRateSecs;
    }

    public void setFireRateSecs(int fireRateSecs) {
        this.fireRateSecs = fireRateSecs;
    }

    public String getWallPenetration() {
        return wallPenetration;
    }

    public void setWallPenetration(String wallPenetration) {
        this.wallPenetration = wallPenetration;
    }
}
