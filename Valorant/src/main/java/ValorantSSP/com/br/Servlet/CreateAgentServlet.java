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
            String agentSkillQ = req.getParameter("agent-skillq");
            String agentSkillE = req.getParameter("agent-skille");
            String agentSkillC = req.getParameter("agent-skillc");
            String agentUltimate = req.getParameter("agent-ultimate");
            String agentSkillDescriptionQ = req.getParameter("agent-skilldescriptionq");
            String agentSkillDescriptionE = req.getParameter("agent-skilldescriptione");
            String agentSkillDescriptionC = req.getParameter("agent-skilldescriptionc");
            String agentUltimateDescription = req.getParameter("agent-ultimatedescription");
            int agentUltimatePoints = Integer.parseInt(req.getParameter("agent-ultimatepoints"));
            String agentPath = req.getParameter("agent-path");

            Agent agent = new Agent();
            agent.setName(agentName);
            agent.setRole(agentRole);
            agent.setLore(agentLore);
            agent.setSkillq(agentSkillQ);
            agent.setSkille(agentSkillE);
            agent.setSkillc(agentSkillC);
            agent.setUltimate(agentUltimate);
            agent.setSkillDescriptionq(agentSkillDescriptionQ);
            agent.setSkillDescriptione(agentSkillDescriptionE);
            agent.setSkillDescriptionc(agentSkillDescriptionC);
            agent.setUltimateDescription(agentUltimateDescription);
            agent.setUltimatePoints(agentUltimatePoints);
            agent.setPath(agentPath);

            new AgentDao().createAgent(agent);

            resp.sendRedirect("/agents");
        }

    }

