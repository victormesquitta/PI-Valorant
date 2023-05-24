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

        String SQL = "INSERT INTO AGENT (NAME, ROLE, LORE, SKILL1, SKILL2, SKILL3, ULTIMATE, SKILLDESCRIPTION1, SKILLDESCRIPTION2, SKILLDESCRIPTION3, ULTIMATEDESCRIPTION, ULTIMATEPOINTS) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

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
            preparedStatement.setString(4, agent.getSkill1());
            preparedStatement.setString(5, agent.getSkill2());
            preparedStatement.setString(6, agent.getSkill3());
            preparedStatement.setString(7, agent.getUltimate());
            preparedStatement.setString(8, agent.getSkillDescription1());
            preparedStatement.setString(9, agent.getSkillDescription2());
            preparedStatement.setString(10, agent.getSkillDescription3());
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
                String agentSkill1 = resultSet.getString("skill1");
                String agentSkill2 = resultSet.getString("skill2");
                String agentSkill3 = resultSet.getString("skill3");
                String agentUltimate = resultSet.getString("ultimate");
                String agentSkillDescription1 = resultSet.getString("skilldescription1");
                String agentSkillDescription2 = resultSet.getString("skilldescription2");
                String agentSkillDescription3 = resultSet.getString("skilldescription3");
                String agentUltimateDescription = resultSet.getString("ultimatedescription");
                int agentUltimatePoints = resultSet.getInt("ultimatepoints");


                Agent agent = new Agent();
                agent.setId(agentId);
                agent.setName(agentName);
                agent.setRole(agentRole);
                agent.setLore(agentLore);
                agent.setSkill1(agentSkill1);
                agent.setSkill2(agentSkill2);
                agent.setSkill3(agentSkill3);
                agent.setUltimate(agentUltimate);
                agent.setSkillDescription1(agentSkillDescription1);
                agent.setSkillDescription2(agentSkillDescription2);
                agent.setSkillDescription3(agentSkillDescription3);
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
