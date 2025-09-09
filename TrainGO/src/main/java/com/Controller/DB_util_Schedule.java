package com.Controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DB_util_Schedule {
    
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Method to create a new train schedule
    public static boolean Create_Schedule(String journey_name, String train_id, String train_name, String start, 
                                           String start_location, String end_location, String arrival, 
                                           String capacity, String three, String one) {
        
        boolean isCreated = false;
        
        try {
            con = Connection_DB.getConnection(); // Get connection from the database
            stmt = con.createStatement();

            // Use parameterized queries to prevent SQL injection
            String sql = "INSERT INTO trainjourneyscheduling (journey_Name, Train_ID, TrainName, Train_Start_Time, " +
                         "Start_Location, End_Location, Train_Arrival_Time, Train_Capacity, third_Seat, first_Seat) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // PreparedStatement is a better choice for security and performance
            try (var pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, journey_name);
                pstmt.setString(2, train_id);
                pstmt.setString(3, train_name);
                pstmt.setString(4, start);
                pstmt.setString(5, start_location);
                pstmt.setString(6, end_location);
                pstmt.setString(7, arrival);
                pstmt.setString(8, capacity);
                pstmt.setString(9, three);
                pstmt.setString(10, one);
                
                int rowsAffected = pstmt.executeUpdate();
                isCreated = (rowsAffected > 0);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Consider using a logging framework instead
        } finally {
            closeResources();
        }

        return isCreated;
    }

    // Method to update an existing train schedule
    public static boolean Update_Schedule(String UUjourney_id, String UUjourney_name, String UUtrain_id, 
                                           String UUtrain_name, String UUstart, String UUstart_loc, 
                                           String UUend_loc, String UUarrival, String UUcapacity, 
                                           String UUthree, String UUone) {
        
        boolean isUPD = false;
        
        try {
            con = Connection_DB.getConnection();
            stmt = con.createStatement();

            String sql = "UPDATE trainjourneyscheduling SET journey_Name = ?, Train_ID = ?, TrainName = ?, " +
                         "Train_Start_Time = ?, Start_Location = ?, End_Location = ?, Train_Arrival_Time = ?, " +
                         "Train_Capacity = ?, third_Seat = ?, first_Seat = ? WHERE journey_ID = ?";
            
            try (var pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, UUjourney_name);
                pstmt.setString(2, UUtrain_id);
                pstmt.setString(3, UUtrain_name);
                pstmt.setString(4, UUstart);
                pstmt.setString(5, UUstart_loc);
                pstmt.setString(6, UUend_loc);
                pstmt.setString(7, UUarrival);
                pstmt.setString(8, UUcapacity);
                pstmt.setString(9, UUthree);
                pstmt.setString(10, UUone);
                pstmt.setString(11, UUjourney_id);
                
                int rowsAffected = pstmt.executeUpdate();
                isUPD = (rowsAffected > 0);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Consider logging
        } finally {
            closeResources();
        }

        return isUPD;
    }

    // Method to delete a train schedule
    public static boolean Delete_Schedule(String Djourney_id, String Dtrain_id) {
        
        boolean isDeleted = false;
        
        try {
            con = Connection_DB.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM trainjourneyscheduling WHERE journey_ID = ? AND Train_ID = ?";
            
            try (var pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, Djourney_id);
                pstmt.setString(2, Dtrain_id);
                
                int rowsAffected = pstmt.executeUpdate();
                isDeleted = (rowsAffected > 0);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Consider logging
        } finally {
            closeResources();
        }

        return isDeleted;
    }

    // Method to retrieve all journeys
    public List<Schedule_list> getAllJourneys() throws SQLException {
        List<Schedule_list> journeys = new ArrayList<>();
        String sql = "SELECT * FROM trainjourneyscheduling";
        
        try {
            con = Connection_DB.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Schedule_list journey = new Schedule_list();
                journey.setJourneyId(rs.getInt("journey_ID"));
                journey.setJourneyName(rs.getString("journey_Name"));
                journey.setTrainId(rs.getString("Train_ID"));
                journey.setTrainName(rs.getString("TrainName"));
                journey.setTrainStartTime(rs.getString("Train_Start_Time"));
                journey.setStart_location(rs.getString("start_location"));
                journey.setEnd_location(rs.getString("end_location"));
                journey.setTrainArrivalTime(rs.getString("Train_Arrival_Time"));
                journey.setTrainCapacity(rs.getString("Train_Capacity"));
                journey.setThirdSeat(rs.getString("third_Seat"));
                journey.setFirstSeat(rs.getString("first_Seat"));
                
                journeys.add(journey);
            }
        } finally {
            closeResources();
        }

        return journeys;
    }

    // Method to close database resources
    private static void closeResources() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging
        }
    }
}
