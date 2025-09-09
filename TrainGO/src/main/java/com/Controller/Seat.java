package com.Controller;

public class Seat {
    private int ticketid;
    private int trainId;
    private String seatNumb;
    private String date;
    private String name;
    private String nic;
    private String email;
    private String pnumber;
 
	public Seat(int ticketid, int trainId, String seatNumb, String date, String name, String nic, String email,
			String pnumber) {
		super();
		this.ticketid = ticketid;
		this.trainId = trainId;
		this.seatNumb = seatNumb;
		this.date = date;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.pnumber = pnumber;
	}
	public int getTicketid() {
		return ticketid;
	}
	public void setTicketid(int ticketid) {
		this.ticketid = ticketid;
	}
	public int getTrainId() {
		return trainId;
	}
	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}
	public String getSeatNumb() {
		return seatNumb;
	}
	public void setSeatNumb(String seatNumb) {
		this.seatNumb = seatNumb;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPnumber() {
		return pnumber;
	}
	public void setPnumber(String pnumber) {
		this.pnumber = pnumber;
	}
   
    
}
