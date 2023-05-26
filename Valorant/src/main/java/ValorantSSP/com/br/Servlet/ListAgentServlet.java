package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.AgentDao;
import ValorantSSP.com.br.Model.Agent;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/agents")
public class ListAgentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Agent> agents = new AgentDao().findAllAgents();

        req.setAttribute("agents", agents);

        HttpSession session = req.getSession();

        if  (session.getAttribute("loggedUser") == null ) {

            req.getRequestDispatcher("user/agents/Agents.jsp").forward(req, resp);

        }  else {

            req.getRequestDispatcher("adm/dashboard-agent/Agent.jsp").forward(req, resp);
        }

    }
}
