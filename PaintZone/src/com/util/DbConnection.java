/*******************************************************************************
 * Copyright (c) 2016  Santosh Gaikwad.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms.
 * Contributors:
 *     SourceCode Technology Pvt. Ltd.
 *******************************************************************************/
/** Designed and developed by Santosh Gaikwad
 * 
 */


package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection 
{
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paintzen","root","");
		
		return con;
	}
}
