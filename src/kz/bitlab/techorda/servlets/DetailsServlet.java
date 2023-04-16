package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Item;

import java.io.IOException;

@WebServlet(value="/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = -1;
        try {
            id = Long.parseLong(request.getParameter("item_id"));
        } catch (Exception e) {
        }

        Item item = DBManager.getItem(id);

        request.setAttribute("tovar",item);
        request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
}
