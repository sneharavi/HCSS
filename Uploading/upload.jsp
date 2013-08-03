<%@ page import="java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<% 


	  
	
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {

DataInputStream in = new DataInputStream(request.getInputStream());

int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];

int byteRead = 0;
int totalBytesRead = 0;

while (totalBytesRead < formDataLength) {

byteRead = in.read(dataBytes, totalBytesRead,formDataLength);

totalBytesRead += byteRead;
}
String file = new String(dataBytes);

String saveFile = file.substring(file.indexOf("filename=\"") + 10);

saveFile = saveFile.substring(0, saveFile.indexOf("\n"));

saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

int lastIndex = contentType.lastIndexOf("=");

String boundary = contentType.substring(lastIndex + 1,contentType.length());

int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

int boundaryLocation = file.indexOf(boundary, pos) - 4;

int startPos = ((file.substring(0, pos)).getBytes()).length;

int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

String s="F:\\IBM"+"\\"+saveFile;

File f = new File("F:\\IBM"+"\\"+saveFile);

FileOutputStream fileOut = new FileOutputStream(f);

fileOut.write(dataBytes, startPos, (endPos - startPos));

fileOut.flush();
fileOut.close();


	 Class.forName("com.ibm.db2.jcc.DB2Driver");
	   Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/DATABASE","db2admin","db2admin");
	     Statement st=con.createStatement();
	     int i=st.executeUpdate("insert into UVA.LIBRARY values('"+s+"')");
   
	 
     if(i>0)
     {
    	 out.println("Success");
    	// response.sendRedirect("http://localhost:8080/HCSS_new/LoginRegistrationForm/login.html");
     }
     else
     {
         %><script type="text/javascript">alert("report uploading failure");</script>  <%
     }




}


%>
  