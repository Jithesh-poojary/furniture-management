<%@page import="java.io.IOException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sending Emails</title>
</head>
<body>
<h1>hello</h1>
<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String text=request.getParameter("text");


String to="jitheshpoojary04@gmail.com";
String frm="karthikunofficial1@gmail.com";
Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.port", "587");
props.put("mail.smtp.host", "smtp.gmail.com");
  Session sessions = Session.getInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication(frm,"@adminkarthik");//change accordingly
   }
  });
 
//compose message
 
  try {
	  
   MimeMessage message = new MimeMessage(sessions);
   message.setFrom(new InternetAddress(frm));//change accordingly
   message.setRecipients(Message.RecipientType.TO,to);
   //message.setSubject("Interview Alert: Company - "+com.getOrg());
   message.setSubject("Notification from Wood jewels!");
   message.setText("Message from,\r\nName: "+name+"\r\nEmail: "+email+"\r\nPhone: "+contact+"\r\nMessage: "+text);
  
   
	Transport.send(message);
	
	
	
	RequestDispatcher dispatch=request.getRequestDispatcher("contact.jsp");
	
	 session.setAttribute("mess","Thank you for connecting with us..");

	response.sendRedirect("contact.jsp");
  } 
  catch (javax.mail.MessagingException e) 
  {
	  throw new RuntimeException(e);
}%>
</body>
</html>