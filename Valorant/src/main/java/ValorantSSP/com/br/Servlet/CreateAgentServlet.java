package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.AgentDao;
import ValorantSSP.com.br.Model.Agent;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


    @WebServlet("/create-agent")
    public class CreateAgentServlet extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String agentName = req.getParameter("agent-name");
            String agentRole = req.getParameter("agent-role");
            String agentLore = req.getParameter("agent-lore");
            String agentSkill1 = req.getParameter("agent-skill1");
            String agentSkill2 = req.getParameter("agent-skill2");
            String agentSkill3 = req.getParameter("agent-skill3");
            String agentUltimate = req.getParameter("agent-ultimate");
            String agentSkillDescription1 = req.getParameter("agent-skilldescription1");
            String agentSkillDescription2 = req.getParameter("agent-skilldescription2");
            String agentSkillDescription3 = req.getParameter("agent-skilldescription3");
            String agentUltimateDescription = req.getParameter("agent-ultimatedescription");
            int agentUltimatePoints = Integer.parseInt(req.getParameter("agent-ultimatepoints"));


            Agent agent = new Agent();
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

            new AgentDao().createAgent(agent);

            resp.sendRedirect("/find-all-agents");
        }

    }

