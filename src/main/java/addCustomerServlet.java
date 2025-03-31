
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class addCustomerServlet extends HttpServlet {

    private static final String FILE_PATH = "C:/Users/hp/Desktop/SLIIT/Y1S2/OOP/Movie Rental and Review Platform/src/main/webapp/Database/user.txt";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        // Get form parameters
        String name = request.getParameter("name");
        String ageStr = request.getParameter("age");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate required fields
        if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.sendRedirect("register.jsp?error=missing_fields");
            return;
        }

        // Convert age to integer (default to 0 if invalid)
        int age = 0;
        if (ageStr != null && !ageStr.trim().isEmpty()) {
            try {
                age = Integer.parseInt(ageStr);
            } catch (NumberFormatException e) {
                age = 0;
            }
        }

        String customerData = name + "," + age + "," + email + "," + password + "\n";

        // Write to the file
        try {
            if (FILE_PATH == null || FILE_PATH.trim().isEmpty()) {
                throw new IOException("File path is null or empty");
            }

            File file = new File(FILE_PATH);
            File parentDir = file.getParentFile();
            if (parentDir != null && !parentDir.exists()) {
                if (!parentDir.mkdirs()) {
                    throw new IOException("Failed to create parent directories: " + parentDir.getAbsolutePath());
                }
            }

            try (FileWriter fw = new FileWriter(file, true); // Append mode
                 BufferedWriter bw = new BufferedWriter(fw)) {
                bw.write(customerData);
                bw.newLine();
                bw.flush(); // Ensure data is written immediately
            }
        } catch (IOException e) {
            // Log the error to the servlet container's log file
            getServletContext().log("Error writing to file at " + FILE_PATH + ": " + e.getMessage(), e);
            response.sendRedirect("register.jsp?error=file_error");
            return;
        }

        // Redirect to success page
        response.sendRedirect("register_success.jsp");
    }
}