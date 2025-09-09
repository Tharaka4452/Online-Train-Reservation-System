package com.Controller;

public class Schedule_list {
    
    // Attributes representing various details of the train schedule
    private int journeyId;               // Unique identifier for the journey
    private String journeyName;          // Name of the journey
    private String trainId;              // Unique identifier for the train
    private String trainName;            // Name of the train
    private String trainStartTime;       // Scheduled start time of the train
    private String trainArrivalTime;     // Scheduled arrival time of the train
    private String trainCapacity;         // Capacity of the train
    private String thirdSeat;             // Price or availability for third class seating
    private String firstSeat;             // Price or availability for first class seating
    private String start_location;        // Starting location of the journey
    private String end_location;          // Destination location of the journey
    
    // Getters and Setters

    public String getStart_location() {
        return start_location;
    }

    public void setStart_location(String start_location) {
        this.start_location = start_location;
    }

    public String getEnd_location() {
        return end_location;
    }

    public void setEnd_location(String end_location) {
        this.end_location = end_location;
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
}
