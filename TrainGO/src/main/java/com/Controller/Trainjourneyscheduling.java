package com.Controller;

public class Trainjourneyscheduling {
	private int journeyId;
    private String journeyName;
    private String trainId;
    private String trainName;
    private String trainStartTime;
    private String trainArrivalTime;
    private String trainCapacity;
    private String thirdSeat;
    private String firstSeat;
    private String start_Location;
    private String end_Location;
    private String date;
    private int ava1seat;
    private int ava2seat;
    private int ava3seat;
    private String seatNumb;
	public Trainjourneyscheduling(int journeyId, String journeyName, String trainId, String trainName, String trainStartTime,
			String trainArrivalTime, String trainCapacity, String thirdSeat, String firstSeat, String start_Location,
			String end_Location, String date, int ava1seat, int ava2seat, int ava3seat, String seatNumb) {
		super();
		this.journeyId = journeyId;
		this.journeyName = journeyName;
		this.trainId = trainId;
		this.trainName = trainName;
		this.trainStartTime = trainStartTime;
		this.trainArrivalTime = trainArrivalTime;
		this.trainCapacity = trainCapacity;
		this.thirdSeat = thirdSeat;
		this.firstSeat = firstSeat;
		this.start_Location = start_Location;
		this.end_Location = end_Location;
		this.date = date;
		this.ava1seat = ava1seat;
		this.ava2seat = ava2seat;
		this.ava3seat = ava3seat;
		this.seatNumb = seatNumb;
	}
	public int getJourneyId() {
		return journeyId;
	}
	public void setJourneyId(int journeyId) {
		this.journeyId = journeyId;
	}
	public String getJourneyName() {
		return journeyName;
	}
	public void setJourneyName(String journeyName) {
		this.journeyName = journeyName;
	}
	public String getTrainId() {
		return trainId;
	}
	public void setTrainId(String trainId) {
		this.trainId = trainId;
	}
	public String getTrainName() {
		return trainName;
	}
	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}
	public String getTrainStartTime() {
		return trainStartTime;
	}
	public void setTrainStartTime(String trainStartTime) {
		this.trainStartTime = trainStartTime;
	}
	public String getTrainArrivalTime() {
		return trainArrivalTime;
	}
	public void setTrainArrivalTime(String trainArrivalTime) {
		this.trainArrivalTime = trainArrivalTime;
	}
	public String getTrainCapacity() {
		return trainCapacity;
	}
	public void setTrainCapacity(String trainCapacity) {
		this.trainCapacity = trainCapacity;
	}
	public String getThirdSeat() {
		return thirdSeat;
	}
	public void setThirdSeat(String thirdSeat) {
		this.thirdSeat = thirdSeat;
	}
	public String getFirstSeat() {
		return firstSeat;
	}
	public void setFirstSeat(String firstSeat) {
		this.firstSeat = firstSeat;
	}
	public String getStart_Location() {
		return start_Location;
	}
	public void setStart_Location(String start_Location) {
		this.start_Location = start_Location;
	}
	public String getEnd_Location() {
		return end_Location;
	}
	public void setEnd_Location(String end_Location) {
		this.end_Location = end_Location;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAva1seat() {
		return ava1seat;
	}
	public void setAva1seat(int ava1seat) {
		this.ava1seat = ava1seat;
	}
	public int getAva2seat() {
		return ava2seat;
	}
	public void setAva2seat(int ava2seat) {
		this.ava2seat = ava2seat;
	}
	public int getAva3seat() {
		return ava3seat;
	}
	public void setAva3seat(int ava3seat) {
		this.ava3seat = ava3seat;
	}
	public String getSeatNumb() {
		return seatNumb;
	}
	public void setSeatNumb(String seatNumb) {
		this.seatNumb = seatNumb;
	}
    
}
