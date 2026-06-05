package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class UpdateStudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("id"));

        String name =
                request.getParameter("name");

        String email =
                request.getParameter("email");

        String course =
                request.getParameter("course");

        Student student =
                new Student(
                        id,
                        name,
                        email,
                        course);

        StudentDAO dao =
                new StudentDAO();

        dao.updateStudent(student);

        response.sendRedirect("view");
    }
}