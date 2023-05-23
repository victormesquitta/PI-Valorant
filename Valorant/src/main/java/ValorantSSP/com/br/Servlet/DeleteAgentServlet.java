package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.AgentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-agent")
public class DeleteAgentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String agentId = req.getParameter("agent-id");

        new AgentDao().deleteAgentById(agentId);

        resp.sendRedirect("/find-all-agents");

    }
}
