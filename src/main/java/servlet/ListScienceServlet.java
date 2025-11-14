package servlet;

import dao.RegisterDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Register;

import java.io.IOException;
import java.util.List;

@WebServlet("/list-science")
public class ListScienceServlet extends HttpServlet {
    private RegisterDAO dao;

    @Override
    public void init() { dao = new RegisterDAO(); }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Register> list = dao.getByEvent("Hội thảo khoa học");
        req.setAttribute("list", list);
        RequestDispatcher rd = req.getRequestDispatcher("list-science.jsp");
        rd.forward(req, resp);
    }
}
