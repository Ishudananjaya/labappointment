package com.icbt.adprogramming.labap.model;

import java.util.List;

public class TestReport {

	

	    private String patientId;
	    private String patientName;
	    private String testName;
	    private String status;
	    private String reportLink;

	    // Constructor, getters, setters
	    public TestReport() {}

	    public TestReport(String patientId, String patientName, String testName, String status, String reportLink) {
	        this.patientId = patientId;
	        this.patientName = patientName;
	        this.testName = testName;
	        this.status = status;
	        this.reportLink = reportLink;
	    }

	    // Getters and setters
	    // Id (if needed)
	   



	    public String getPatientId() {
	        return patientId;
	    }

	    public void setPatientId(String patientId) {
	        this.patientId = patientId;
	    }

	    public String getPatientName() {
	        return patientName;
	    }

	    public void setPatientName(String patientName) {
	        this.patientName = patientName;
	    }

	    public String getTestName() {
	        return testName;
	    }

	    public void setTestName(String testName) {
	        this.testName = testName;
	    }

	    public String getStatus() {
	        return status;
	    }

	    public void setStatus(String status) {
	        this.status = status;
	    }

	    public String getReportLink() {
	        return reportLink;
	    }

	    public void setReportLink(String reportLink) {
	        this.reportLink = reportLink;
	    }

		public void add(List<TestReport> testreport) {
			// TODO Auto-generated method stub
			
		}
	}

