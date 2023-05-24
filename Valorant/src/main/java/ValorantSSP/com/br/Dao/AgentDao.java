package ValorantSSP.com.br.Dao;

import ValorantSSP.com.br.Model.Agent;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AgentDao {
    public void createAgent(Agent agent){

        String SQL = "INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

        try {

            System.out.println("1success in connection");
            Connection connection = DriverManager.getConnection(
                    "jdbc:h2:~/test",
                    "sa",
                    "sa");

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

            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("1fail in connection");
        }
    }
    public List<Agent> findAllAgents(){
        String SQL = "SELECT * FROM AGENT";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("2success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Agent> agents = new ArrayList<>();
            while (resultSet.next()) {

                int agentId = resultSet.getInt("id");
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
    public void deleteAgentById(String agentId) {
        String SQL = "DELETE AGENT WHERE ID = ?";

        try {

            System.out.println("success in connection");
            Connection connection = DriverManager.getConnection(
                    "jdbc:h2:~/test",
                    "sa",
                    "sa");

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

}
