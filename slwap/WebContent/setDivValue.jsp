<% String divVal = request.getParameter("divVal");
session.setAttribute("divVal",divVal);
System.out.println("helloo session value is "+session.getAttribute("divVal"));
%>