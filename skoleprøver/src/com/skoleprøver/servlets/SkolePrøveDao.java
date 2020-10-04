package com.skolepr�ver.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SkolePr�veDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/elevkarakterer";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Ex20200702-IS201";
	private String jdbcDriver = "com.mysql.jdbc.Driver";
	
	private static final String INSERT_PR�VE_SQL = "INSERT INTO skolepr�ve" + "(Fornavn, Etternavn, Mattte, Norsk, Historie, Tysk) VALUES"
	+"(?, ?, ?, ?, ?, ?)";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager .getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}catch (SQLException e) {
			e.printStackTrace();
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
public SkolePr�veDao() {
		
	}

public void nyPr�ve(skolepr�ve skolepr�ve ) throws SQLException {
	System.out.println(INSERT_PR�VE_SQL);
	try(Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PR�VE_SQL)){
		preparedStatement.setString(1, skolepr�ve.getFornavn());
		preparedStatement.setString(1, skolepr�ve.getEtternavn());
		preparedStatement.setString(1, skolepr�ve.getMatte());
		preparedStatement.setString(1, skolepr�ve.getNorsk());
		preparedStatement.setString(1, skolepr�ve.getHistorie());
		preparedStatement.setString(1, skolepr�ve.getTysk());
		System.out.println(preparedStatement);
		}catch (SQLException e) {
			printSQLException(e);
		}	
		
	
	
	}

private void printSQLException(SQLException ex) {
	for(Throwable e : ex) {
		if (e instanceof SQLException) {
			e.printStackTrace(System.err);
			System.err.println("SQLState: " + ((SQLException) e) .getSQLState());
			System.err.println("Error Code: " +((SQLException) e) .getErrorCode());
			System.err.println("Message: " + e.getMessage());
			Throwable t = ex.getCause();
			while (t !=null) {
				System.out.println("Cause: " + t);
				t = t.getCause();
			}
		}
	}
}

	
	
	
	
}
