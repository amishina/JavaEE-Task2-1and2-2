package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.Item;
import kz.bitlab.techorda.db.DBManager;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value="/home.html")
public class Sprint1Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = DBManager.getItems();
        request.setAttribute("goods",items);
        request.getRequestDispatcher("/items.jsp").forward(request,response);
    }
}
