package servlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.Seminar;
import service.CategoryService;
import service.SeminarService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.SeminarServiceImpl;
import utils.DataSourceUtil;

import javax.sql.DataSource;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/add_seminar")
public class AddSeminar extends HttpServlet {

    private SeminarService seminarService;
    private CategoryService categoryService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        DataSource ds = DataSourceUtil.getDataSource();
        seminarService = new SeminarServiceImpl(ds);
        categoryService = new CategoryServiceImpl(ds);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.findAll();

        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/add-seminar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =  request.getParameter("seminarName");
        String speaker = request.getParameter("speaker");
        String location = request.getParameter("location");
        int category = Integer.parseInt(request.getParameter("categoryId"));
        int maxAttendance = Integer.parseInt(request.getParameter("maxAttendance"));

        String endDateString = request.getParameter("endDate");
        LocalDateTime endDate = LocalDateTime.parse(endDateString);
        String startDateString = request.getParameter("startDate");
        LocalDateTime startDate = LocalDateTime.parse(startDateString);

        String description = request.getParameter("description");
        String image = request.getParameter("image");


        Seminar seminar = new Seminar(name, description, startDate, endDate,
                location, speaker, category, maxAttendance, "image");

        seminarService.create(seminar);

        response.sendRedirect(request.getContextPath() + "/seminar_management");
    }
}
