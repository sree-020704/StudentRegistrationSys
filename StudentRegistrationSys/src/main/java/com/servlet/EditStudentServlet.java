package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit")
public class EditStudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("id"));

        StudentDAO dao =
                new StudentDAO();

        Student student =
                dao.getStudentById(id);

        request.setAttribute(
                "student",
                student);

        RequestDispatcher rd =
                request.getRequestDispatcher("/editStudent.jsp");

        rd.forward(request, response);
    }
}