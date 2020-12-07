package com.iao.amal.model;


import java.io.Serializable;

public class ClientModel implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
String NomCli,PreCli,AdrCli,VilCli,TelCli, MailCli, PassCli;
int NumCli;

public ClientModel() { }

public String getNomCli() {
	return NomCli;
}
public void setNomCli(String nomCli) {
	NomCli = nomCli;
}
public String getPreCli() {
	return PreCli;
}
public void setPreCli(String preCli) {
	PreCli = preCli;
}
public String getAdrCli() {
	return AdrCli;
}
public void setAdrCli(String adrCli) {
	AdrCli = adrCli;
}
public String getVilCli() {
	return VilCli;
}
public void setVilCli(String vilCli) {
	VilCli = vilCli;
}
public String getTelCli() {
	return TelCli;
}
public void setTelCli(String telCli) {
	TelCli = telCli;
}
public String getMailCli() {
	return MailCli;
}
public void setMailCli(String mailCli) {
	MailCli = mailCli;
}
public String getPassCli() {
	return PassCli;
}
public void setPassCli(String passCli) {
	PassCli = passCli;
}
public int getNumCli() {
	return NumCli;
}
public void setNumCli(int numCli) {
	NumCli = numCli;
}

	
	
}
