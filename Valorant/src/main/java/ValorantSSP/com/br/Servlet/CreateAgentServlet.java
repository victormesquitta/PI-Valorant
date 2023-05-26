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
            String agentSkill1 = req.getParameter("agent-skillq");
            String agentSkill2 = req.getParameter("agent-skille");
            String agentSkill3 = req.getParameter("agent-skillc");
            String agentUltimate = req.getParameter("agent-ultimate");
            String agentSkillDescription1 = req.getParameter("agent-skilldescriptionq");
            String agentSkillDescription2 = req.getParameter("agent-skilldescriptione");
            String agentSkillDescription3 = req.getParameter("agent-skilldescriptionc");
            String agentUltimateDescription = req.getParameter("agent-ultimatedescription");
            int agentUltimatePoints = Integer.parseInt(req.getParameter("agent-ultimatepoints"));


            Agent agent = new Agent();
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

            new AgentDao().createAgent(agent);

            resp.sendRedirect("/agents");
        }

    }

