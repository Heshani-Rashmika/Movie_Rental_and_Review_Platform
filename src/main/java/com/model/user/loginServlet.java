package com.model.user;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.nio.file.*;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    private static final String FILE_PATH = "C:\\Users\\hp\\Desktop\\SLIIT\\Y1S2\\OOP\\Movie Rental and Review Platform\\src\\main\\webapp\\Database\\user.txt";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();

        try {
            boolean isValid = false;
            String userName = "";

            // Read all lines from the file
            for (String line : Files.readAllLines(Paths.get(FILE_PATH))) {
                String[] userData = line.split(",");
                if (userData.length >= 4 &&
                        userData[2].trim().equals(email) &&
                        userData[3].trim().equals(password)) {

                    isValid = true;
                    userName = userData[0].trim();
                    break;
                }
            }

            if (isValid) {
                HttpSession session = request.getSession();
                session.setAttribute("user", email);
                session.setAttribute("name", userName);
                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid_credentials");
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=file_error");
        }
    }
}