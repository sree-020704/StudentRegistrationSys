package com.servlet;

import java.io.IOException;
import java.util.List;

import com.dao.StudentDAO;
import com.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/view")
public class ViewStudentsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        StudentDAO dao = new StudentDAO();

        List<Student> list = dao.getAllStudents();
        request.setAttribute("students", list);
        RequestDispatcher rd =
                request.getRequestDispatcher("/viewStudents.jsp");

        rd.forward(request, response);
    }
}