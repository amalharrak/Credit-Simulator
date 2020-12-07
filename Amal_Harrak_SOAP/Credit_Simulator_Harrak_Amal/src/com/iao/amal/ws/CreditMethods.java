package com.iao.amal.ws;

public class CreditMethods {

	public CreditMethods() {
		super();
		// TODO Auto-generated constructor stub
	}

	public double calculAnnuite(double capital, int duree, double taux) {

		double temp = Math.pow(1 + taux, (double) 1 / 12) - 1;
		double annuite = Math.pow(1 + temp, duree) * temp * capital / (Math.pow(1 + temp, duree) - 1);
		return annuite;

	}

	public double calculCapital(double annuite, int duree, double taux) {

		double temp = Math.pow(1 + taux, (double) 1 / 12) - 1;
		double capital = (annuite * (Math.pow(1 + temp, duree) - 1)) / (Math.pow(1 + temp, duree) * temp);
		return capital;
	}

	public int calculDuree(double capital, double annuite, double taux) {
		double temp = Math.pow(1 + taux, (double) 1 / 12) - 1;
		double duree = Math.log(annuite / (annuite - (temp * capital))) / Math.log(1 + temp);
		return (int) Math.round(duree);
	}

}
