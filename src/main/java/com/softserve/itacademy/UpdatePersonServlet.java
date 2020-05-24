package com.softserve.itacademy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdatePersonServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String infoAboutUser = null;
        try {
            infoAboutUser = addressBook.read(request.getParameter("firstName"), request.getParameter("lastName"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("address", infoAboutUser);
        request.getRequestDispatcher("/WEB-INF/update-record.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("firstName");
        String surname = request.getParameter("lastName");
        String address = request.getParameter("address");
        try {
            addressBook.update(name, surname, address);
            response.sendRedirect("/records/list");
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            request.setAttribute("person", name+ " " + surname);
            request.getRequestDispatcher("/WEB-INF/update-notfound.jsp").forward(request, response);
        }
    }


}
