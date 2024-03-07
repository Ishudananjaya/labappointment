package com.icbt.adprogramming.labap.model;

public class Appointment {
    private String id;
    private String name;
    private String testName;
    private String date;
    private String time;

    public Appointment(String id, String name, String testName, String date, String time) {
        this.id = id;
        this.name = name;
        this.testName = testName;
        this.date = date;
        this.time = time;
    }

    // Getters and setters
    // You can generate them using your IDE or write them manually
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
