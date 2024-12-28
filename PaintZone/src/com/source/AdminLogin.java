package com.source;

import java.io.IOException;  
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String username;
	String password;

	public void init(ServletConfig config) throws ServletException 
	{
		try
		{
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}	
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		try 
		{
			res.setContentType("text/html");  
	        PrintWriter out=res.getWriter();
			username=req.getParameter("uname");
			password=req.getParameter("pwd");
			System.out.println(username);
			System.out.println(password);
			ps=con.prepareStatement("select * from admin where uname=? and pwd=?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			HttpSession session=req.getSession(true);
			if (rs.next())
			{
				session.setAttribute("username",username);
				res.sendRedirect("adminHome.jsp?done");
			} 
			else 
			{
			 	out.print("<h1>Sorry, username or password error!</h1>");
			 	res.sendRedirect("adminLogin.jsp?fail");
			}
			out.close();  
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}


	}

}
