<%@ page import="io.vavr.control.Try" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="daggerok.ejb.api.HelloService" %><%--
  Created by IntelliJ IDEA.
  User: mak
  Date: 3/19/18
  Time: 03:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  final HelloService helloService = HelloService.class.cast(
      Try.of(() -> new InitialContext().lookup("java:app/ejb-services-0.0.1/HelloServiceBean"))
         .getOrElse(() -> null)
  );
%>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form method="post" action="/servlet/api/greeter-resource">
  <input type="text" name="name" placeholder="What's your name, my friend?" />
  <input type="submit" hidden="hidden" />
</form>
<p>db: <%= helloService.getAllGreetings() %></p>
</body>
</html>
