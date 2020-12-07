package com.iao.amal.model;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("unused")

public class CreditModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int NumCred ,  NumCli;	
	private double MonCre, dureeCre ,tauxCre ,  AnnCred ;
	private java.util.Date DatPre;
	
	
	public CreditModel() {
		super();
	}

	public int getNumCred() {
		return NumCred;
	}

	public void setNumCred(int numCred) {
		NumCred = numCred;
	}


	public double getMonCre() {
		return MonCre;
	}

	public void setMonCre(double monCre) {
		MonCre = monCre;
	}

	public double getDureeCre() {
		return dureeCre;
	}

	public void setDureeCre(double duree) {
		this.dureeCre = duree;
	}

	public double getTauxCre() {
		return tauxCre;
	}

	public void setTauxCre(double tauxCre) {
		this.tauxCre = tauxCre;
	}

	public double getAnnCred() {
		return AnnCred;
	}

	public void setAnnCred(double annCred) {
		AnnCred = annCred;
	}

	
	public java.util.Date getDatPre() {
		return DatPre;
	}

	public void setDatPre(java.util.Date date) {
		DatPre = date;
	}

	public int getNumCli() {
		return NumCli;
	}


	public void setNumCli(int numCli) {
		NumCli = numCli;
	}
	@Override
	public String toString() {
		return "CreditModel [NumCred=" + NumCred + ", NumCli=" + NumCli + ", MonCre=" + MonCre + ", dureeCre="
				+ dureeCre + ", tauxCre=" + tauxCre + ", AnnCred=" + AnnCred + ", DatPre=" + DatPre + "]";
	}

}
