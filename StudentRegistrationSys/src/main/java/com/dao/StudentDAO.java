package com.dao;

import java.sql.*;
import java.util.*;

import com.model.Student;
import com.util.DBConnection;

public class StudentDAO {

    public boolean addStudent(Student s) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "insert into students(name,email,course) values(?,?,?)";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());

            int i = ps.executeUpdate();

            if(i>0)
                status=true;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public List<Student> getAllStudents() {

        List<Student> list =
        new ArrayList<Student>();

        try {

            Connection con =
            DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(
            "select * from students");

            ResultSet rs =
            ps.executeQuery();

            while(rs.next()) {

                Student s =
                new Student();

                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));

                list.add(s);
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Student getStudentById(int id) {

        Student s = new Student();

        try {

            Connection con =
            DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(
            "select * from students where id=?");

            ps.setInt(1,id);

            ResultSet rs =
            ps.executeQuery();

            if(rs.next()) {

                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return s;
    }

    public boolean updateStudent(Student s) {

        boolean status=false;

        try {

            Connection con =
            DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(
            "update students set name=?,email=?,course=? where id=?");

            ps.setString(1,s.getName());
            ps.setString(2,s.getEmail());
            ps.setString(3,s.getCourse());
            ps.setInt(4,s.getId());

            int i=ps.executeUpdate();

            if(i>0)
                status=true;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public boolean deleteStudent(int id) {

        boolean status=false;

        try {

            Connection con =
            DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(
            "delete from students where id=?");

            ps.setInt(1,id);

            int i=ps.executeUpdate();

            if(i>0)
                status=true;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}