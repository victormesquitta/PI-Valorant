package ValorantSSP.com.br.Model;

import java.util.*;

public class Agent {

    private int id;
    private String role;
    private List<Skills> skills;
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
    public List<Skills> getSkills() {
        return skills;
    }

    public void setSkills(List<Skills> skills) {
        this.skills = skills;
    }

    public void setRole(String role) {
        this.role = role;
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
