<%@page import="java.sql.*,java.util.*,java.util.Properties,javax.mail.Message,javax.mail.MessagingException,javax.mail.Session,javax.mail.Transport,javax.mail.internet.AddressException,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage,org.apache.catalina.connector.Request"%>
<%
String to = session.getAttribute("regmail").toString();
String accno1 = session.getAttribute("regaccno").toString();
String pwd = session.getAttribute("regpwd").toString();


String from = "amistosoohcss@gmail.com";
String password = "sriganesha3" ;


String subject = "Registration Successful";

String body = "Registration Successful. \n \n"+"Your Lock no. is: "+accno1 +"\n \n Your Password is:  "+pwd+"\n \n Thank you for using HCSS... \n \n Team Amistosoo" ;	

String host="smtp.gmail.com", user = from, pass = password;  
String SSL_FACTORY ="javax.net.ssl.SSLSocketFactory"; 
boolean sessionDebug = true;
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props,null);
mailSession.setDebug(sessionDebug);
Message msg =new MimeMessage(mailSession);
//msg.setFrom(new InternetAddress(from));
try
{
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(body,"text/plain"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
transport.sendMessage(msg, msg.getAllRecipients());//WasEmailSent = true; // assume it was sent


}
catch(Exception err) 
{

//WasEmailSent = false; // assume it's a fail

//System.out.println("Error"+err.getMessage());
}



%>