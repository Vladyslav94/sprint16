package com.softserve.itacademy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/records/create")
public class CreateRecordServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       request.getRequestDispatcher("/WEB-INF/create-user.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");

        if(!addressBook.create(firstName, lastName, address)){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/userAlreadyExist.jsp");
            requestDispatcher.forward(request, response);
        } else {
            addressBook.create(firstName, lastName, address);
            response.sendRedirect("/records/list");
        }


    }
}

