package ValorantSSP.com.br.Model;

public class Weapon {

    private String id;
    private String name;
    private String type;
    private int creds;
    private int damageShortHead;
    private int damageMediumHead;
    private int damageLongHead;
    private int damageShortBody;
    private int damageMediumBody;
    private int damageLongBody;
    private int damageShortLeg;
    private int damageMediumLeg;
    private int damageLongLeg;
    private int magazine; // munição por pente
    private int reserve; // munição total
    private int fireRateSecs;
    private String wallPenetration;

    private String path;

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public int getDamageShortHead() {
        return damageShortHead;
    }

    public void setDamageShortHead(int damageShortHead) {this.damageShortHead = damageShortHead;}

    public int getDamageMediumHead() {
        return damageMediumHead;
    }

    public void setDamageMediumHead(int damageMediumHead) {this.damageMediumHead = damageMediumHead;}

    public int getDamageLongHead() {
        return damageLongHead;
    }

    public void setDamageLongHead(int damageLongHead) {this.damageLongHead = damageLongHead;}

    public int getDamageShortBody() {
        return damageShortBody;
    }

    public void setDamageShortBody(int damageShortBody) {this.damageShortBody = damageShortBody;}

    public int getDamageMediumBody() {
        return damageMediumBody;
    }

    public void setDamageMediumBody(int damageMediumBody) {this.damageMediumBody = damageMediumBody;}

    public int getDamageLongBody() {
        return damageLongBody;
    }

    public void setDamageLongBody(int damageLongBody) {this.damageLongBody = damageLongBody;}

    public int getDamageShortLeg() {
        return damageShortLeg;
    }

    public void setDamageShortLeg(int damageShortLeg) {this.damageShortLeg = damageShortLeg;}

    public int getDamageMediumLeg() {
        return damageMediumLeg;
    }

    public void setDamageMediumLeg(int damageMediumLeg) {this.damageMediumLeg = damageMediumLeg;}

    public int getDamageLongLeg() {
        return damageLongLeg;
    }

    public void setDamageLongLeg(int damageLongLeg) {this.damageLongLeg = damageLongLeg;}


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

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
