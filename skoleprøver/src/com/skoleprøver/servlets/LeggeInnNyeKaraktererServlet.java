package com.skoleprÝver.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;



public class LeggeInnNyeKaraktererServlet extends GenericServlet {
	private SkolePrÝveDao skoleprÝveDao;
	
	public void init() throws ServletException {
		SkolePrÝveDao skoleprÝveDao = new SkolePrÝveDao();
		}


	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		
		String fornavn_var = request.getParameter("fornavn");
		String etternavn_var = request.getParameter("etternavn");
		String matte_var = request.getParameter("matte");
		String norsk_var = request.getParameter("norsk");
		String historie_var = request.getParameter("historie");
		String tysk_var = request.getParameter("tysk");
		skoleprÝve nySkoleprÝve = new skoleprÝve(fornavn_var, etternavn_var, matte_var, norsk_var, historie_var, tysk_var);
		try {
			skoleprÝveDao.nyPrÝve(nySkoleprÝve);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}PrintWriter out = response.getWriter();
		out.println("Vellykket innsending av karakter");
	}

}

