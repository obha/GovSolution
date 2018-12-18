<%@ include  file="includeslib.jsp" %>


<c:choose>
         
         <c:when test = "${typeApp <= 0}">
            <%@ include  file="header.jsp" %>
            <%@ include file="login.jsp" %>
         </c:when>
         
         <c:when test = "${typeApp ==1}">
           <%@ include  file="headerSuperAdmin.jsp" %>
           <%@ include file="homeSuperAdmin.jsp" %> 
         </c:when>
         <c:when test = "${typeApp ==2}">
           <%@ include  file="headerAdminCompany.jsp" %>
           <%@ include file="homeAdminCompany.jsp" %>  
         </c:when>
         <c:when test = "${typeApp ==3}">
           <%@ include  file="headerUserCompany.jsp" %>
           <%@ include file="homeUserCompany.jsp" %>
         </c:when>
         
         <c:otherwise>
           <%@ include  file="header.jsp" %>
           <%@ include file="login.jsp" %>
         </c:otherwise>
      </c:choose>


<%@ include file="footer.jsp" %>
