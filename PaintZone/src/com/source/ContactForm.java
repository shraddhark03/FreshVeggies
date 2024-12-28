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
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/ContactForm")
public class ContactForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
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
		System.out.println("Hello");
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String contact=req.getParameter("contact");
		String subject=req.getParameter("subject");
		String message=req.getParameter("message");
			
		//HttpSession session=req.getSession();
		//String name=session.getAttribute("name").toString();
		//String lname = session.getAttribute("lname").toString();
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `contactus` (`name`,`email`,`contact`,`subject`,`message`) VALUES ('"+name+"','"+email+"','"+contact+"','"+subject+"','"+message+"')");
			int result=ps.executeUpdate();
		
			System.out.println(ps); 
			if (result > 0)
			{
				System.out.println("Enquery Send Successfull");
				res.sendRedirect("index.jsp?Done");	
			}
			else
			{
				System.out.println("Enquery failed");
				res.sendRedirect("index.jsp?fail");	
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
}
