<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head> 
        <title> BOX GAMES - A SUA LOJA DE GAMES </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="description" content="BOX GAMES | Loja de Games | Compre Consoles, Jogos e Equipamentos para sua divers�o"/>
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.9.1/build/cssreset/cssreset-min.css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>          

    </head>
    <body>        
        <c:choose>         
            <c:when test="${verificalog == true}"> 
            <c:import url='headerLogado.jsp'/>
            </c:when> 
            <c:otherwise> 
                <c:import url='header.jsp'/>
            </c:otherwise> 
        </c:choose> 

        <div id="conteudo2">    
            <c:import url='index_produtos.jsp'/>
            <c:choose>         
            <c:when test="${jaexiste == 0}"> 
                <script language="JavaScript" type="text/javascript">
                alert("Este produto j� est� na sua lista de desejos");    
                </script>
                <%session.removeAttribute("jaexiste"); %>
            </c:when>             
            <c:when test="${jaexiste == 1}"> 
                <script language="JavaScript" type="text/javascript">
                alert("Produto adicionado com sucesso a sua lista de desejos");    
                </script>
                <%session.removeAttribute("jaexiste"); %>
            </c:when>             
            </c:choose>                  
        </div>
        
        <c:import url="footer.jsp" />
    </body>
</html>

