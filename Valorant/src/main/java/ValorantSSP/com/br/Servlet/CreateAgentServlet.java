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

            String agentLore = req.getParameter("agent-Lore");
            String agentRole = req.getParameter("agent-Role");
            String agentSkillDescription1 = req.getParameter("agent-SkillDescription1");
            String agentSkillDescription2 = req.getParameter("agent-SkillDescription2");
            String agentSkillDescription3 = req.getParameter("agent-SkillDescription3");
            String agentSkillDescription4 = req.getParameter("agent-SkillDescription4");
            String agentSkill1 = req.getParameter("agent-Skill1");
            String agentSkill2 = req.getParameter("agent-Skill2");
            String agentSkill3 = req.getParameter("agent-Skill3");
            int agentUltimatePoint = Integer.parseInt(req.getParameter("agent-UltimatePoint"));
            String agentUltimate = req.getParameter("agent-Ultimate");


            Agent agent = new Agent();
            agent.setLore(agentLore);
            agent.setRole(agentRole);
            agent.setSkillDescription1(agentSkillDescription1);
            agent.setSkillDescription2(agentSkillDescription2);
            agent.setSkillDescription3(agentSkillDescription3);
            agent.setSkillDescription3(agentSkillDescription4);
            agent.setSkill1(agentSkill1);
            agent.setSkill2(agentSkill2);
            agent.setSkill3(agentSkill3);
            agent.setUltimatePoints(agentUltimatePoint);
            agent.setUltimate(agentUltimate);


            new AgentDao().createAgent(agent);

            resp.sendRedirect("/find-all-agents");
        }

    }

