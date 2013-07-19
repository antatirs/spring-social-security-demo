 <html>
 <head>
 </head>
 <body>


<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <authz:authorize access="!hasRole('ROLE_USER')">


<p>Please log in with a third party provider</p>


  <form class="login" action="<c:url value='/signin/twitter'/>" method="POST">
	<p><input type="submit" value="Login with Twitter" /></p>
</form> 

  <form class="login" action="<c:url value='/signin/facebook'/>" method="POST">
	<p><input type="submit" value="Login with Facebook" /></p>
</form> 



</authz:authorize>

 <authz:authorize access="hasRole('ROLE_USER')">
	
	You are already logged in
 
 </authz:authorize>
 </body>
 </html>