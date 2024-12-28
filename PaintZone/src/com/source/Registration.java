package com.source;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;


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
		String fname=req.getParameter("fname");
		String middlename=req.getParameter("mname");
		String lastname=req.getParameter("lname");
		String dob=req.getParameter("dob");
		String gender=req.getParameter("gender");
		String email=req.getParameter("email");
		String mbno=req.getParameter("mbno");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String username=req.getParameter("uname");
		String password=req.getParameter("pwd");
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `user` (`id`, `fname`, `mname`, `lname`, `dob`, `gender`, `email`, `mbno`, `address`, `city`, `uname`, `pwd`) VALUES (NULL, '"+fname+"', '"+middlename+"', '"+lastname+"', '"+dob+"', '"+gender+"', '"+email+"', '"+mbno+"', '"+address+"', '"+city+"', '"+username+"', '"+password+"')");
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Ragistration successfull");
				res.sendRedirect("login.jsp?regDone");	
			}
			else
			{
				System.out.println("Ragistration failed");
				res.sendRedirect("Ragistration.jsp?regDone");	
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
}
