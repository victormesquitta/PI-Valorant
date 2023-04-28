package ValorantSSP.com.br.Model;

public class Agent {

    private int id;
    private String role;
    private String skill;
    private String lore;
    private int ultimatePoints;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getLore() {
        return lore;
    }

    public void setLore(String lore) {
        this.lore = lore;
    }

    public int getUltimatePoints() {
        return ultimatePoints;
    }

    public void setUltimatePoints(int ultimatePoints) {
        this.ultimatePoints = ultimatePoints;
    }
}
