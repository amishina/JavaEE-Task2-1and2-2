package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Item;

import java.io.IOException;

@WebServlet(value = "/save-item")
public class SaveItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long id = Long.parseLong(request.getParameter("item-id"));
        String name = request.getParameter("item-name");
        double price = Double.parseDouble(request.getParameter("item-price"));
        int amount = Integer.parseInt(request.getParameter("item-amount"));
        String description = request.getParameter("item_description");

        Item item = DBManager.getItem(id);
        if (item!=null) {
            item.setName(name);
            item.setPrice(price);
            item.setAmount(amount);
            item.setDescription(description);

            DBManager.uodateItem(item);

            response.sendRedirect("/details?item_id="+id);
        } else {
            response.sendRedirect("/");
        }
    }
}
