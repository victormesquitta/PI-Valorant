package ValorantSSP.com.br.Model;

import java.util.*;

public class Agent {

    private int id;
    private String role;
    private String skill1;
    private String skill2;
    private String skill3;
    private String ultimate;
    private String skilldescription1;
    private String skilldescription2;
    private String skilldescription3;
    private String skilldescription4;
    private String lore;
    private int ultimatePoints;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getSkill1() {
        return skill1;
    }
    public void setSkill1(String skill1) {
        this.skill1 = skill1;
    }

    public String getSkill2() {
        return skill2;
    }
    public void setSkill2(String skill2) {
        this.skill2 = skill2;
    }

    public String getSkill3() {
        return skill3;
    }
    public void setSkill3(String skill3) {this.skill3 = skill3;}
    public String getUltimate() {
        return ultimate;
    }
    public void setUltimate(String ultimate) {this.ultimate = ultimate;}
    public String getSkillDescription1() {
        return skilldescription1;
    }
    public void setSkillDescription1(String skilldescription1) {this.skilldescription1 = skilldescription1;}
    public String getSkillDescription2() {
        return skilldescription2;
    }
    public void setSkillDescription2(String skilldescription2) {this.skilldescription2 = skilldescription2;}
    public String getSkillDescription3() {
        return skilldescription3;
    }
    public void setSkillDescription3(String skilldescription3) {this.skilldescription3 = skilldescription3;}
    public String getSkillDescription4() {
        return skilldescription4;
    }
    public void setSkillDescription4(String skilldescription4) {this.skilldescription4 = skilldescription4;}

    public String getRole() {
        return role;
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
