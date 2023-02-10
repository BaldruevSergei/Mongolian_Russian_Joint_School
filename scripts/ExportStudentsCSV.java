// Created: 2023-02-10 · Updated: 2025-04-05 · Author: Sergei Baldruev · Language: Java · Script type: Data export

import java.sql.*;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.time.LocalDate;

public class ExportStudentsCSV {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/indigo_db";
        String user = "postgres";
        String password = "yourpassword";

        String outputFile = "students_export_" + LocalDate.now() + ".csv";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT id, last_name, first_name, middle_name, group_name, login FROM students ORDER BY group_name, last_name");
             PrintWriter writer = new PrintWriter(new FileWriter(outputFile, false))) {

            // Заголовки
            writer.println("ID,Last Name,First Name,Middle Name,Group,Login");

            // Данные
            while (rs.next()) {
                writer.printf("%d,%s,%s,%s,%s,%s%n",
                        rs.getInt("id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("middle_name"),
                        rs.getString("group_name"),
                        rs.getString("login"));
            }

            System.out.println("CSV export complete: " + outputFile);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
