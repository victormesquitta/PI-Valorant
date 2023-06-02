package ValorantSSP.com.br.Dao;

import ValorantSSP.com.br.Model.Agent;
import ValorantSSP.com.br.Model.Map;
import ValorantSSP.com.br.Model.Weapon;
import ValorantSSP.com.br.config.ConnectionPoolConfig;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AgentDao {
    public void createAgent(Agent agent){

        String SQL = "INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, agent.getName());
            preparedStatement.setString(2, agent.getRole());
            preparedStatement.setString(3, agent.getLore());
            preparedStatement.setString(4, agent.getSkillq());
            preparedStatement.setString(5, agent.getSkille());
            preparedStatement.setString(6, agent.getSkillc());
            preparedStatement.setString(7, agent.getUltimate());
            preparedStatement.setString(8, agent.getSkillDescriptionq());
            preparedStatement.setString(9, agent.getSkillDescriptione());
            preparedStatement.setString(10, agent.getSkillDescriptionc());
            preparedStatement.setString(11, agent.getUltimateDescription());
            preparedStatement.setInt(12, agent.getUltimatePoints());
            preparedStatement.setString(13, agent.getPathagent());
            preparedStatement.setString(14, agent.getPathrole());
            preparedStatement.setString(15, agent.getPathskillq());
            preparedStatement.setString(16, agent.getPathskille());
            preparedStatement.setString(17, agent.getPathskillc());
            preparedStatement.setString(18, agent.getPathultimate());
           // preparedStatement.setString(19, agent.getId());
            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("1fail in connection");
            System.out.println(e);
        }
    }
    public List<Agent> findAllAgents(){
        String SQL = "SELECT * FROM AGENT";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> agents = new ArrayList<>();
            while (resultSet.next()) {

                String agentId = resultSet.getString("id");
                String agentName = resultSet.getString("name");
                String agentRole = resultSet.getString("role");
                String agentLore = resultSet.getString("lore");
                String agentSkill1 = resultSet.getString("skillq");
                String agentSkill2 = resultSet.getString("skille");
                String agentSkill3 = resultSet.getString("skillc");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescriptionq");
                String agentSkillDescription2 = resultSet.getString("skilldescriptione");
                String agentSkillDescription3 = resultSet.getString("skilldescriptionc");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");
                String agentPathAgent = resultSet.getString("pathagent");
                String agentPathRole = resultSet.getString("pathrole");
                String agentPathSkill1 = resultSet.getString("pathskillq");
                String agentPathSkill2 = resultSet.getString("pathskille");
                String agentPathSkill3 = resultSet.getString("pathskillc");
                String agentPathUltimate = resultSet.getString("pathultimate");



                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkillq(agentSkill1);
                agent.setSkille(agentSkill2);
                agent.setSkillc(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescriptionq(agentSkillDescription1);
                agent.setSkillDescriptione(agentSkillDescription2);
                agent.setSkillDescriptionc(agentSkillDescription3);
                agent.setUltimateDescription(agentUltimateDescription);
                agent.setUltimatePoints(agentUltimatePoints);
                agent.setPathagent(agentPathAgent);
                agent.setPathrole(agentPathRole);
                agent.setPathskillq(agentPathSkill1);
                agent.setPathskille(agentPathSkill2);
                agent.setPathskillc(agentPathSkill3);
                agent.setPathultimate(agentPathUltimate);


                agents.add(agent);


            }

            System.out.println("2success in select * agent");

            connection.close();

            return agents;

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println(e.getMessage());


            return Collections.emptyList();

        }
    }

    public List<Agent> findAllDuelistas(){

        String SQL = "SELECT * FROM AGENT WHERE ROLE = 'duelista'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> duelistas = new ArrayList<>();

            while (resultSet.next()) {

                String agentId = resultSet.getString("id");
                String agentName = resultSet.getString("name");
                String agentRole = resultSet.getString("role");
                String agentLore = resultSet.getString("lore");
                String agentSkill1 = resultSet.getString("skillq");
                String agentSkill2 = resultSet.getString("skille");
                String agentSkill3 = resultSet.getString("skillc");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescriptionq");
                String agentSkillDescription2 = resultSet.getString("skilldescriptione");
                String agentSkillDescription3 = resultSet.getString("skilldescriptionc");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");
                String agentPathAgent = resultSet.getString("pathagent");
                String agentPathRole = resultSet.getString("pathrole");
                String agentPathSkill1 = resultSet.getString("pathskillq");
                String agentPathSkill2 = resultSet.getString("pathskille");
                String agentPathSkill3 = resultSet.getString("pathskillc");
                String agentPathUltimate = resultSet.getString("pathultimate");

                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkillq(agentSkill1);
                agent.setSkille(agentSkill2);
                agent.setSkillc(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescriptionq(agentSkillDescription1);
                agent.setSkillDescriptione(agentSkillDescription2);
                agent.setSkillDescriptionc(agentSkillDescription3);
                agent.setUltimateDescription(agentUltimateDescription);
                agent.setUltimatePoints(agentUltimatePoints);
                agent.setPathagent(agentPathAgent);
                agent.setPathrole(agentPathRole);
                agent.setPathskillq(agentPathSkill1);
                agent.setPathskille(agentPathSkill2);
                agent.setPathskillc(agentPathSkill3);
                agent.setPathultimate(agentPathUltimate);

                duelistas.add(agent);

            }

            System.out.println("success in select * agent where role = 'duelista'");

            connection.close();

            return duelistas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Agent> findAllIniciadores(){
        String SQL = "SELECT * FROM AGENT WHERE ROLE = 'iniciador'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> iniciadores = new ArrayList<>();

            while (resultSet.next()) {

                String agentId = resultSet.getString("id");
                String agentName = resultSet.getString("name");
                String agentRole = resultSet.getString("role");
                String agentLore = resultSet.getString("lore");
                String agentSkill1 = resultSet.getString("skillq");
                String agentSkill2 = resultSet.getString("skille");
                String agentSkill3 = resultSet.getString("skillc");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescriptionq");
                String agentSkillDescription2 = resultSet.getString("skilldescriptione");
                String agentSkillDescription3 = resultSet.getString("skilldescriptionc");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");
                String agentPathAgent = resultSet.getString("pathagent");
                String agentPathRole = resultSet.getString("pathrole");
                String agentPathSkill1 = resultSet.getString("pathskillq");
                String agentPathSkill2 = resultSet.getString("pathskille");
                String agentPathSkill3 = resultSet.getString("pathskillc");
                String agentPathUltimate = resultSet.getString("pathultimate");

                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkillq(agentSkill1);
                agent.setSkille(agentSkill2);
                agent.setSkillc(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescriptionq(agentSkillDescription1);
                agent.setSkillDescriptione(agentSkillDescription2);
                agent.setSkillDescriptionc(agentSkillDescription3);
                agent.setUltimateDescription(agentUltimateDescription);
                agent.setUltimatePoints(agentUltimatePoints);
                agent.setPathagent(agentPathAgent);
                agent.setPathrole(agentPathRole);
                agent.setPathskillq(agentPathSkill1);
                agent.setPathskille(agentPathSkill2);
                agent.setPathskillc(agentPathSkill3);
                agent.setPathultimate(agentPathUltimate);

                iniciadores.add(agent);

            }

            System.out.println("success in select * agent where role = 'iniciador'");

            connection.close();

            return iniciadores;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Agent> findAllControladores(){
        String SQL = "SELECT * FROM AGENT WHERE ROLE = 'controlador'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> controladores = new ArrayList<>();

            while (resultSet.next()) {

                String agentId = resultSet.getString("id");
                String agentName = resultSet.getString("name");
                String agentRole = resultSet.getString("role");
                String agentLore = resultSet.getString("lore");
                String agentSkill1 = resultSet.getString("skillq");
                String agentSkill2 = resultSet.getString("skille");
                String agentSkill3 = resultSet.getString("skillc");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescriptionq");
                String agentSkillDescription2 = resultSet.getString("skilldescriptione");
                String agentSkillDescription3 = resultSet.getString("skilldescriptionc");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");
                String agentPathAgent = resultSet.getString("pathagent");
                String agentPathRole = resultSet.getString("pathrole");
                String agentPathSkill1 = resultSet.getString("pathskillq");
                String agentPathSkill2 = resultSet.getString("pathskille");
                String agentPathSkill3 = resultSet.getString("pathskillc");
                String agentPathUltimate = resultSet.getString("pathultimate");

                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkillq(agentSkill1);
                agent.setSkille(agentSkill2);
                agent.setSkillc(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescriptionq(agentSkillDescription1);
                agent.setSkillDescriptione(agentSkillDescription2);
                agent.setSkillDescriptionc(agentSkillDescription3);
                agent.setUltimateDescription(agentUltimateDescription);
                agent.setUltimatePoints(agentUltimatePoints);
                agent.setPathagent(agentPathAgent);
                agent.setPathrole(agentPathRole);
                agent.setPathskillq(agentPathSkill1);
                agent.setPathskille(agentPathSkill2);
                agent.setPathskillc(agentPathSkill3);
                agent.setPathultimate(agentPathUltimate);

                controladores.add(agent);

            }

            System.out.println("success in select * agent where role = 'controlador'");

            connection.close();

            return controladores;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Agent> findAllSentinelas(){
        String SQL = "SELECT * FROM AGENT WHERE ROLE = 'sentinela'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> sentinelas = new ArrayList<>();

            while (resultSet.next()) {


                String agentId = resultSet.getString("id");
                String agentName = resultSet.getString("name");
                String agentRole = resultSet.getString("role");
                String agentLore = resultSet.getString("lore");
                String agentSkill1 = resultSet.getString("skillq");
                String agentSkill2 = resultSet.getString("skille");
                String agentSkill3 = resultSet.getString("skillc");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescriptionq");
                String agentSkillDescription2 = resultSet.getString("skilldescriptione");
                String agentSkillDescription3 = resultSet.getString("skilldescriptionc");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");
                String agentPathAgent = resultSet.getString("pathagent");
                String agentPathRole = resultSet.getString("pathrole");
                String agentPathSkill1 = resultSet.getString("pathskillq");
                String agentPathSkill2 = resultSet.getString("pathskille");
                String agentPathSkill3 = resultSet.getString("pathskillc");
                String agentPathUltimate = resultSet.getString("pathultimate");

                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkillq(agentSkill1);
                agent.setSkille(agentSkill2);
                agent.setSkillc(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescriptionq(agentSkillDescription1);
                agent.setSkillDescriptione(agentSkillDescription2);
                agent.setSkillDescriptionc(agentSkillDescription3);
                agent.setUltimateDescription(agentUltimateDescription);
                agent.setUltimatePoints(agentUltimatePoints);
                agent.setPathagent(agentPathAgent);
                agent.setPathrole(agentPathRole);
                agent.setPathskillq(agentPathSkill1);
                agent.setPathskille(agentPathSkill2);
                agent.setPathskillc(agentPathSkill3);
                agent.setPathultimate(agentPathUltimate);

                sentinelas.add(agent);

            }

            System.out.println("success in select * agent where role = 'sentinela'");

            connection.close();

            return sentinelas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public void deleteAgentById(String agentId) {
        String SQL = "DELETE AGENT WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, agentId);
            ;
            preparedStatement.execute();

            System.out.println("success on delete agent with id: " + agentId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }
    public void updateAgent(Agent agent) {

        String SQL = "UPDATE AGENT SET NAME = ?, ROLE = ?, LORE = ?, SKILLQ = ?, SKILLE = ?, SKILLC = ?, ULTIMATE = ?, SKILLDESCRIPTIONQ = ?, SKILLDESCRIPTIONE = ?, SKILLDESCRIPTIONC = ?, ULTIMATEDESCRIPTION = ?, ULTIMATEPOINTS = ?, PATHAGENT = ?, PATHROLE = ?, PATHSKILLQ = ?, PATHSKILLE = ?, PATHSKILLC = ?, PATHULTIMATE = ?  WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, agent.getName());
            preparedStatement.setString(2, agent.getLore());
            preparedStatement.setString(3, agent.getRole());
            preparedStatement.setString(4, agent.getSkillc());
            preparedStatement.setString(5, agent.getSkillq());
            preparedStatement.setString(6, agent.getSkille());
            preparedStatement.setString(7, agent.getUltimate());
            preparedStatement.setString(8, agent.getSkillDescriptionq());
            preparedStatement.setString(9, agent.getSkillDescriptione());
            preparedStatement.setString(10, agent.getSkillDescriptionc());
            preparedStatement.setString(11, agent.getUltimateDescription());
            preparedStatement.setInt(12, agent.getUltimatePoints());
            preparedStatement.setString(13, agent.getPathagent());
            preparedStatement.setString(14, agent.getPathrole());
            preparedStatement.setString(15, agent.getPathultimate());
            preparedStatement.setString(16, agent.getPathskillq());
            preparedStatement.setString(17, agent.getPathskillc());
            preparedStatement.setString(18, agent.getPathskille());
            preparedStatement.setString(19, agent.getId());
            preparedStatement.execute();

            System.out.println("success in update agent");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }
}
