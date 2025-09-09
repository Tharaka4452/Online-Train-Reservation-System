package com.Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TrainDAO {

	public Connection dbConnection() {
		Connection con = null;
		
		String url = "jdbc:mysql://localhost:3306/train";
		String userName = "root";
		String passw = "123321";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			// connect to database
			con = DriverManager.getConnection(url, userName, passw);
			System.out.println("Database connection success");
		} 
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return con;
	}

	
//login passenger validation
	public boolean passengerCheck(String UserName, String PassWord) {
		Connection con=dbConnection();
		
		
		try {
			String sql = "SELECT * FROM passenger WHERE Username=? AND Password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, UserName);
			ps.setString(2, PassWord);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public List<Passenger> getOnePassenger(String UserName, String PassWord) {
	    Connection con = dbConnection();
	    List<Passenger> Oneplist = new ArrayList<>();
	    
	    try {
	        String sql = "SELECT * FROM passenger WHERE Username=? AND Password=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, UserName); // Set the username
	        ps.setString(2, PassWord); // Set the password
	       
	        ResultSet rs = ps.executeQuery();
	        
	        if (rs.next()) {
	            int id = rs.getInt("passengerID");
	            String fname = rs.getString("First_Name");
	            String lname = rs.getString("Last_Name");
	            String username = rs.getString("Username");
	            String email = rs.getString("Email");
	            String phoneNumber = rs.getString("PhoneNumber");
	            String address = rs.getString("Address");
	            String password = rs.getString("Password");
	            
	            Passenger p = new Passenger(id, fname, lname, username, email, phoneNumber, address, password);
	            Oneplist.add(p);
	            System.out.println("Passenger retrieved: " + p.getUsername());
	        } else {
	            System.out.println("No passenger found with given Username and Password.");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
	    }
	    
	    return Oneplist;
	}


	public List<Passenger> getAllPassenger() {
		List<Passenger> pList = new ArrayList<>();
		Connection con=dbConnection();
		
		
		try {
			String sql ="SELECT * FROM passenger ";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("passengerID");
				String fname = rs.getString("First_name");
				String lname = rs.getString("Last_name");
				String username = rs.getString("Username");
				String email = rs.getString("Email");
				String phoneNumber = rs.getString("PhoneNumber");
				String address = rs.getString("Address");
				String password = rs.getString("Password");
				
				pList.add(new Passenger(id,fname,lname,username,email,phoneNumber,address,password));
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return pList;
	}

//adminlogin
	public boolean adminCheck(String UserName, String PassWord) {
		 Connection con = dbConnection();
		    
		    try {
		        // You can modify the query if you have a separate admin table
		        String sql = "SELECT * FROM admin WHERE Username=? AND Password=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setString(1, UserName);
		        ps.setString(2, PassWord);
		        System.out.println("No matching admin found in database");
		        ResultSet rs = ps.executeQuery();
		        
		        if (rs.next()) {
		            return true;
		        }
		    } 
		    catch (SQLException e) {
		        e.printStackTrace();
		    }
		return false;
	}




	public void addNewPassenger(Passenger hs) {
		Connection con = dbConnection();
		
		 try {
			 String sql = "INSERT INTO passenger(First_name,Last_name,Username,Email,PhoneNumber,Address,Password) VALUES(?,?,?,?,?,?,?)";
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setString(1, hs.getFname());
			 ps.setString(2, hs.getLname());
			 ps.setString(3, hs.getUsername());
			 ps.setString(4, hs.getEmail());
			 ps.setString(5, hs.getPhoneNumber());
			 ps.setString(6, hs.getAddress());
			 ps.setString(7, hs.getPassword());
			 System.out.println(ps);
			 
			 ps.executeUpdate();
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		
	}


	public Passenger selectOldPassenger(int id) {
		Connection con = dbConnection();
		Passenger oldpassenger = null;
		
		try{
			String sql = "SELECT * FROM passenger WHERE passengerID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				String fname = rs.getString("First_name");
				String lname = rs.getString("Last_name");
				String username = rs.getString("Username");
				String email = rs.getString("Email");
				String phoneNumber = rs.getString("PhoneNumber");
				String address = rs.getString("Address");
				String password = rs.getString("Password");
				
				oldpassenger=new Passenger(id,fname,lname,username,email,phoneNumber,address,password);
			}
		}catch(Exception e) {
			
		}
		
		return oldpassenger;
	}


	public boolean updateOldPassenger(Passenger updatedpassenger) {
		Connection con = dbConnection();
		
		boolean update = false;
		
		try {
			 
			 String sql = "UPDATE passenger SET First_name=?,Last_name=?,Username=?,Email=?,PhoneNumber=?,Address=?,Password=? WHERE passengerID=?";
			 PreparedStatement ps=con.prepareStatement(sql);
			 
			 
			 ps.setString(1, updatedpassenger.getFname());
			 ps.setString(2, updatedpassenger.getLname());
			 ps.setString(3, updatedpassenger.getUsername());
			 ps.setString(4, updatedpassenger.getEmail());
			 ps.setString(5, updatedpassenger.getPhoneNumber());
			 ps.setString(6, updatedpassenger.getAddress());
			 ps.setString(7, updatedpassenger.getPassword());
			 ps.setInt(8, updatedpassenger.getId());
			 System.out.println(ps);
			 
			update = ps.executeUpdate()>0;
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		return update;
		
	}


	public void deletePassenger(int id) {
		Connection con = dbConnection();
		
		try {
			String query = "DELETE FROM passenger WHERE passengerID=?";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
		}catch(Exception  e) {
			 e.printStackTrace();
		}
		
	}






//Tharindu

public void addNewReview(Review rv) {
	 try {
	 	    Connection con = dbConnection(); 
			String sql = "INSERT INTO review (userid,trainnumber,rating,review)VALUES(?,?,?,?)";
			
           PreparedStatement ps = con.prepareStatement(sql);
           ps.setString(1, rv.getUserid());
           ps.setString(2, rv.getTrainnumber());
           ps.setString(3, rv.getRating());
           ps.setString(4, rv.getReview());
           
           System.out.println(ps);
           
           ps.executeUpdate();
           }catch (Exception e) {
        	   e.printStackTrace();
       }
	}
public List<Review> getAllReviews() {
	List<Review> rvList = new ArrayList<>();
	Connection con = dbConnection();
	
	String query = "SELECT * FROM review";
	
	try {
		PreparedStatement ps = con.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
		{
			int reviewid = rs.getInt("reviewid");
			String userid = rs.getString("userid");
			String trainnumber = rs.getString("trainnumber");
			String rating = rs.getString("rating");
			String review = rs.getString("review");
			
			rvList.add(new Review(reviewid,userid,trainnumber,rating,review));
		}
	}catch(Exception e) {
		
	}
	
	return rvList;
}
public boolean validateCheck(String userid) {
	Connection con=dbConnection();
	try {
		String query = "SELECT * FROM review WHERE userid=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, userid);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			return true;
		}
	}catch(Exception e)
	{
		
	}

	return false;
}
public List<Review> getAllRelevantReviews() {
	List<Review> rList = new ArrayList<>();
	Connection con = dbConnection();
	String query = "Select * FROM review";
	try {
		PreparedStatement ps=con.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
		{
			int reviewid = rs.getInt("reviewid");
			String userid = rs.getString("userid");
			String trainnumber = rs.getString("trainnumber");
			String rating = rs.getString("rating");
			String review = rs.getString("review");
			
			rList.add(new Review(reviewid,userid,trainnumber,rating,review));
		}
		
	
}catch(Exception e) {
	
}
return rList; 

}
public Review selectOldReview(int reviewid) {
	Connection con = dbConnection();
	
	Review oldReview = null;
	
	try
	{
		String sql = "SELECT * FROM review WHERE reviewid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, reviewid);
		
		System.out.println(ps);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			String userid = rs.getString("userid");
			String trainnumber = rs.getString("trainnumber");
			String rating = rs.getString("rating");
			String review = rs.getString("review"); 
			
			oldReview = new Review(reviewid,userid,trainnumber,rating,review);
		}
	}catch(Exception e){
		
	}
	return oldReview;
}
public boolean updateOldReview(Review updatedReview) {
	Connection con = dbConnection();
	boolean update = false;
	
	try
	{
		String sql="UPDATE review SET userid=?,trainnumber=?,rating=?,review=? WHERE reviewid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		
		ps.setString(1, updatedReview.getUserid());
		ps.setString(2, updatedReview.getTrainnumber());
		ps.setString(3, updatedReview.getRating());
		ps.setString(4, updatedReview.getReview());
		
		ps.setInt(5, updatedReview.getReviewid());
		
		
		update = ps.executeUpdate()>0;
		
	}catch(Exception e) {
		
	}
	return update;
}
public void deleteReview(int reviewid) {
	Connection con = dbConnection();
	try {
		String query="DELETE FROM review WHERE reviewid=?";
		PreparedStatement ps = con.prepareStatement(query);
		
		ps.setInt(1, reviewid);
		ps.executeUpdate();
		
		System.out.println("Delete success");
		
	}catch(Exception e)
	{
		
	}
	
}
//newwwww
public List<Review> getReviewsByUserId(String userid) {
   List<Review> rList = new ArrayList<>();
   Connection con = dbConnection();
   String query = "SELECT * FROM review WHERE userid = ?";
   try (PreparedStatement ps = con.prepareStatement(query)) {
       ps.setString(1, userid);
       ResultSet rs = ps.executeQuery();
       while (rs.next()) {
           int reviewid = rs.getInt("reviewid");
           String trainnumber = rs.getString("trainnumber");
           String rating = rs.getString("rating");
           String review = rs.getString("review");
           rList.add(new Review(reviewid, userid, trainnumber, rating, review));
       }
   } catch (Exception e) {
       e.printStackTrace();
   }
   return rList;
}


//Ishara

public boolean searchTicket(String ticketId, String nic) {
	Connection con = dbConnection();

    try {
        String sql = "SELECT * FROM seat WHERE ticketId=? AND nic=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, ticketId);
        ps.setString(2, nic);
        ResultSet rs = ps.executeQuery();
        return rs.next();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return false;
}

public ArrayList<Seat> showTicket(String ticketId, String nic) {
    ArrayList<Seat> seat = new ArrayList<>();
    Connection con = dbConnection();

    try {
        String sql = "SELECT * FROM seat WHERE ticketId=? AND nic=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, ticketId);
        ps.setString(2, nic);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int ticketid = rs.getInt("ticketId");
            int trainId = rs.getInt("trainId");
            String seatNumb = rs.getString("seatNumb");
            String date = rs.getString("date");
            String name = rs.getString("name");
            String nIc = rs.getString("nic");
            String email = rs.getString("email");
            String pnumber = rs.getString("pnumber");
            
            seat.add(new Seat(ticketid, trainId, seatNumb,date, name, nIc, email, pnumber));
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return seat;
}

public void addpDetails(Seat se) {
    try {
    	Connection con = dbConnection();
        String sql = "INSERT INTO seat (trainId,seatNumb,date,name, nic, email, pnumber) VALUES(?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, se.getTrainId());
        ps.setString(2, se.getSeatNumb());
        ps.setString(3, se.getDate());
        ps.setString(4, se.getName());
        ps.setString(5, se.getNic());
        ps.setString(6, se.getEmail());
        ps.setString(7, se.getPnumber());
        ps.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
}

public Seat selectOldSeat(int ticketId) {
	 Seat oldSeat = null;

    try {
    	Connection con = dbConnection();
       
        String sql = "SELECT * FROM seat WHERE ticketId=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, ticketId);
        ResultSet rs = ps.executeQuery();
        
        while (rs.next()) {
           int trainId = rs.getInt("trainId");
           String seatNumb = rs.getString("seatNumb");
           String date = rs.getString("date");
           String name = rs.getString("name");
           String nic = rs.getString("nic");
           String email = rs.getString("email");
           String pnumber = rs.getString("pnumber");
           
           oldSeat = new Seat(ticketId, trainId, seatNumb,date, name, nic, email, pnumber);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return oldSeat;
}

public boolean updatedSeat(Seat upSeat) {
	Connection con = dbConnection();
	boolean update = false;
	try {
		String sql = "UPDATE seat SET trainId=?,seatNumb=?,date=?,name=?, nic=?, email=?, pnumber=? WHERE ticketid=? ";
		PreparedStatement ps = con.prepareStatement(sql);
		 	ps.setInt(1, upSeat.getTrainId());
            ps.setString(2, upSeat.getSeatNumb());
            ps.setString(3, upSeat.getDate());
            ps.setString(4, upSeat.getName());
            ps.setString(5, upSeat.getNic());
            ps.setString(6, upSeat.getEmail());
            ps.setString(7, upSeat.getPnumber());
            ps.setInt(8, upSeat.getTicketid());
            update =  ps.executeUpdate()>0;
		}
	catch (Exception e) {
	   e.printStackTrace();
		}
	return update;
}

public void deletDetails(int ticketId) {
	Connection con = dbConnection();
	try {
		String sql = "DELETE FROM seat WHERE  ticketId=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, ticketId);
		ps.executeUpdate();
	}
	catch (Exception e) {
		   e.printStackTrace();
			}
}

public boolean searchTrain(String start_Location,String end_Location) {
	Connection con = dbConnection();

    try {
        String sql = "SELECT * FROM trainlist WHERE start_Location=? AND end_Location=? ";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1,start_Location);
        ps.setString(2,end_Location);
       
        ResultSet rs = ps.executeQuery();
        
        return rs.next();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return false;
}

public Trainjourneyscheduling showTrain(String start_Location, String end_Location,String date,int ava1seat,int ava2seat,int ava3seat) {
	 Trainjourneyscheduling trainlist = null;
	 Connection con = dbConnection();

        try {
        	String sql = "SELECT * FROM trainlist WHERE start_Location=? AND end_Location=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,start_Location);
            ps.setString(2,end_Location);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	int journeyId = rs.getInt("journeyId");
            	String journeyName = rs.getString("journeyName");
            	String trainId = rs.getString("trainId");
                String trainName = rs.getString("trainName");
                String trainStartTime = rs.getString("trainStartTime");
                String trainArrivalTime = rs.getString("trainArrivalTime");
                String firstSeat = rs.getString("firstSeat");
                String thirdSeat = rs.getString("thirdSeat");
                String trainCapacity = rs.getString("trainCapacity");
                String seatNumb = rs.getString("seatNumb");

                String seatNumbers1 = generateSeatNumbers(ava1seat, 100); 
                String seatNumbers2 = generateSeatNumbers(ava2seat, 200);  
                String seatNumbers3 = generateSeatNumbers(ava3seat, 300);  
                
                seatNumb=seatNumbers1+","+seatNumbers2+","+seatNumbers3;
                trainlist = new Trainjourneyscheduling(journeyId, journeyName, trainId, trainName, trainStartTime,
                        trainArrivalTime, trainCapacity, thirdSeat, firstSeat, start_Location,
                        end_Location, date, ava1seat, ava2seat, ava3seat,seatNumb);}

            } catch (Exception e) {
            e.printStackTrace();
        }
	
	
	return trainlist;
}
        public String generateSeatNumbers(int availableSeats, int startSeatNumber) {
            StringBuilder seatNumbers = new StringBuilder();
            for (int i = 0; i < availableSeats; i++) {
                seatNumbers.append(startSeatNumber + i);
                if (i < availableSeats - 1) {
                    seatNumbers.append(", "); 
                }
            }
            return seatNumbers.toString();
        }


		public boolean gardCheck(String UserName, String PassWord) {
Connection con = dbConnection();
		    
		    try {
		        // You can modify the query if you have a separate gard table
		        String sql = "SELECT * FROM gard WHERE Username=? AND Password=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setString(1, UserName);
		        ps.setString(2, PassWord);
		        System.out.println("No matching gard found in database");
		        ResultSet rs = ps.executeQuery();
		        
		        if (rs.next()) {
		            return true;
		        }
		    } 
		    catch (SQLException e) {
		        e.printStackTrace();
		    }
		return false;
		}




}
