package com.icbt.adprogramming.labap.model;

public class TestDetails {

	private String testId;
    private String testName;
    private String fee;

    public TestDetails(String testId, String testName,String fee2) {
        this.setTestId(testId);
       this.setTestName(testName);
        this.setFee(fee2);
        
    }

	public String getTestId() {
		return testId;
	}

	public void setTestId(String testId) {
		this.testId = testId;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee2) {
		this.fee = fee2;
	}
	
}
