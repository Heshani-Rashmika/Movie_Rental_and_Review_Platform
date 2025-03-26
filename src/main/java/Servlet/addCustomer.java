package Servlet;

import com.model.user.customer;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addCustomer() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String name = request.getParameter("name");
        String ageStr = request.getParameter("age");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (name == null || ageStr == null || email == null || password == null) {
            response.getWriter().println("All fields are required.");
            return;
        }

        int age;
        try {
            age = Integer.parseInt(ageStr);
        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid age provided.");
            return;
        }

        customer cus = new customer();
        cus.setName(name);
        cus.setAge(age);
        cus.setEmail(email);
        cus.setPassword(password);

        String rootPath = getServletContext().getRealPath("/");
        if (rootPath == null) {
            response.getWriter().println("Unable to determine real path for data storage.");
            return;
        }
        String dataDirPath = rootPath + "data/";
        File dataDir = new File(dataDirPath);
        if (!dataDir.exists()) {
            if (!dataDir.mkdirs()) {
                response.getWriter().println("Unable to create data directory.");
                return;
            }
        }
        String filePath = dataDirPath + "customers.txt";
        try (PrintWriter writer = new PrintWriter(new FileWriter(filePath, true))) {
            writer.println(cus.getName() + "," + cus.getAge() + "," + cus.getEmail() + "," + cus.getPassword());
        } catch (IOException e) {
            response.getWriter().println("Error saving customer data: " + e.getMessage());
            return;
        }

        response.getWriter().println("Customer added successfully.");
    }
}