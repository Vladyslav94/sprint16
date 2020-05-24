package com.softserve.itacademy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/read")
public class ReadRecordServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/read-record.jsp");
        String infoAboutUser = null;
        try {
            infoAboutUser = addressBook.read(request.getParameter("firstName"), request.getParameter("lastName"));
            request.setAttribute("address", infoAboutUser);
            requestDispatcher.forward(request, response);
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            request.setAttribute("person", request.getParameter("firstName") + " " + request.getParameter("lastName"));
            request.getRequestDispatcher("/WEB-INF/update-notfound.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
