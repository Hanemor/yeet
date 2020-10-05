package com.skoleprøver.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;



public class LeggeInnNyeKaraktererServlet extends GenericServlet {
	private SkolePrøveDao skoleprøveDao;
	
	public void init() throws ServletException {
		SkolePrøveDao skoleprøveDao = new SkolePrøveDao();
		}


	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		
		String fornavn_var = request.getParameter("fornavn");
		String etternavn_var = request.getParameter("etternavn");
		String matte_var = request.getParameter("matte");
		String norsk_var = request.getParameter("norsk");
		String historie_var = request.getParameter("historie");
		String tysk_var = request.getParameter("tysk");
		skoleprøve nySkoleprøve = new skoleprøve(fornavn_var, etternavn_var, matte_var, norsk_var, historie_var, tysk_var);
		try {
			skoleprøveDao.nyPrøve(nySkoleprøve);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}PrintWriter out = response.getWriter();
		out.println("Vellykket innsending av karakter");
	}

}

