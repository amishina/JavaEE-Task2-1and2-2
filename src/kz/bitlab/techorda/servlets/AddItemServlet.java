package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Item;

import java.io.IOException;

@WebServlet(value="/add-item")
public class AddItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("item-name");
        double price = Double.parseDouble(request.getParameter("item-price"));
        int amount = Integer.parseInt(request.getParameter("item-amount"));
        String description = request.getParameter("item_description");

        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setAmount(amount);
        item.setDescription(description);

        DBManager.addItem(item);
        response.sendRedirect("/");

    }
}
