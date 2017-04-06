package com.ncsu.cms.controller;
import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.BillBean;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.ncsu.cms.utils.HashUtil;
import com.opensymphony.xwork2.ActionSupport;

public class StudentManagementAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
	private StudentBean studentDetails;	
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String address;
	private String email;
	private String entPwd;
	private String confPwd;
	private String errorMessage;
	private String saveMessage;
	private String editError;
	private String resetSuccess;
	private BillBean bill;
	private String payAmount;
	private String payError;
	private String paySuccess;
	

	public String execute() throws Exception {
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_EDIT_STUDENT_DETAILS")){
			String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
			studentDetails = cmsDB.getStudentDetails(Integer.parseInt(studentId));
			
		}
		else if(actionName.equals("ACTION_UPDATE_STUDENT_DETAILS")){
			
			String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
		    if(firstName.isEmpty()||lastName.isEmpty()||email.isEmpty()||phoneNumber.isEmpty())
		    	this.editError ="None of the above fields should be empty";
		    else{
		    	cmsDB.updateStudentDetails(firstName, lastName, email, Long.parseLong(phoneNumber), address,Integer.parseInt(studentId));
				this.saveMessage = "Student Details successfully saved";
		    }
			
		}
		else if(actionName.equals("ACTION_REGISTER_COURSE")){
			

			
		}
		else if(actionName.equals("ACTION_VIEW_BILL")){
			String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
			int stId = Integer.parseInt(studentId);
			this.bill = cmsDB.getBill(stId);
			
		} 
		else if(actionName.equals("ACTION_PAY_BILL")){
			String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
			int stId = Integer.parseInt(studentId);
			this.bill = cmsDB.getBill(stId);
			if(payAmount.isEmpty())
				this.setPayError("Please enter a value for Pay Amount");
			else if(Integer.parseInt(payAmount)>= 0){
				int payValue = Integer.parseInt(payAmount);
				
				cmsDB.updateBillAmountForSemester(studentId, payValue);

				/*int currAmt = Integer.parseInt(bill.getBillAmount());
				int updatedAmount = currAmt - Integer.parseInt(payAmount);
				cmsDB.updateBillAmount(stId,updatedAmount);
				this.setPaySuccess("Payment Made successfully");*/
			}
			else{
					this.setPayError("Please Enter a positive value for pay amount");
				}
		}
		else if(actionName.equals("ACTION_RESET_PASSWORD")){
			
		}
		else if(actionName.equals("ACTION_UPDATE_PASSWORD")){
			
			if(entPwd.isEmpty() || confPwd.isEmpty()){
				this.setErrorMessage("The entered password and the confirmed password cannot be empty");}
			
			else if(entPwd!=null && confPwd!=null){						
				if(!entPwd.equals(confPwd))
					this.setErrorMessage("The newly entered password and confirmed password do not match");	
				else{
					String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
					System.out.println("Student Id"+studentId);
					int stuInt = Integer.parseInt(studentId);
					cmsDB.updateUserPassword(stuInt, HashUtil.generateSHA256Hash(entPwd));
					this.setResetSuccess("Passowrd has been reset successfully");
				}
					
		    }
			
		}
		
		return SUCCESS;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public StudentBean getStudentDetails() {
		return studentDetails;
	}

	public void setStudentDetails(StudentBean studentDetails) {
		this.studentDetails = studentDetails;
	}

	public String getEntPwd() {
		return entPwd;
	}

	public void setEntPwd(String entPwd) {
		this.entPwd = entPwd;
	}

	public String getConfPwd() {
		return confPwd;
	}

	public void setConfPwd(String confPwd) {
		this.confPwd = confPwd;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getSaveMessage() {
		return saveMessage;
	}

	public void setSaveMessage(String saveMessage) {
		this.saveMessage = saveMessage;
	}

	public String getEditError() {
		return editError;
	}

	public void setEditError(String editError) {
		this.editError = editError;
	}

	public String getResetSuccess() {
		return resetSuccess;
	}

	public void setResetSuccess(String resetSuccess) {
		this.resetSuccess = resetSuccess;
	}

	public BillBean getBill() {
		return bill;
	}

	public void setBill(BillBean bill) {
		this.bill = bill;
	}

	public String getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(String payAmount) {
		this.payAmount = payAmount;
	}

	public String getPayError() {
		return payError;
	}

	public void setPayError(String payError) {
		this.payError = payError;
	}

	public String getPaySuccess() {
		return paySuccess;
	}

	public void setPaySuccess(String paySuccess) {
		this.paySuccess = paySuccess;
	}
}