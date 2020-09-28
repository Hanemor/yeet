package com.skoleprøver.servlets;

public class skoleprøve {
	private String Fornavn;
	private String Etternavn;
	private String Matte;
	private String Norsk;
	private String Historie;
	private String Tysk;
	
	
	
	public skoleprøve(String fornavn, String etternavn, String matte, String norsk, String historie, String tysk) {
		super();
		Fornavn = fornavn;
		Etternavn = etternavn;
		Matte = matte;
		Norsk = norsk;
		Historie = historie;
		Tysk = tysk;
	}
	public String getFornavn() {
		return Fornavn;
	}
	public void setFornavn(String fornavn) {
		Fornavn = fornavn;
	}
	public String getEtternavn() {
		return Etternavn;
	}
	public void setEtternavn(String etternavn) {
		Etternavn = etternavn;
	}
	public String getMatte() {
		return Matte;
	}
	public void setMatte(String matte) {
		Matte = matte;
	}
	public String getNorsk() {
		return Norsk;
	}
	public void setNorsk(String norsk) {
		Norsk = norsk;
	}
	public String getHistorie() {
		return Historie;
	}
	public void setHistorie(String historie) {
		Historie = historie;
	}
	public String getTysk() {
		return Tysk;
	}
	public void setTysk(String tysk) {
		Tysk = tysk;
	}

	
}
