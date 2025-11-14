package servlet;

import dao.RegisterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Register;

import java.io.IOException;

@WebServlet("/register-tech")
public class RegisterTechServlet extends HttpServlet {
    private RegisterDAO dao;

    @Override
    public void init() { dao = new RegisterDAO(); }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String type = req.getParameter("type");

        Register r = new Register(fullname, email, phone, type, "Hội thảo Công nghệ");
        dao.insert(r);

        resp.sendRedirect("list-tech");
    }
}

