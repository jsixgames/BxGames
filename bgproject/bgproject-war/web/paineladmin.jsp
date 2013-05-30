<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% if (session.getAttribute("verificalog") == (Object) false
            || session.getAttribute("verificalog") == (Object) null) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head> 
        <title>BOX GAMES - A SUA LOJA DE GAMES</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="description" content="BOX GAMES | Loja de Games | Compre Consoles, Jogos e Equipamentos para sua diversão"/>
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.9.1/build/cssreset/cssreset-min.css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="js/jquery-1.9.1.js">                        
        </script>        
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>   

    </head>
    <body>                
        <div id="conteudo">                           
            <h1 id="titulocadastro">Painel de Administração</h1>
            <div id="painelopcoes"> 
                <c:import url='opcoespaineladmin.jsp' />
                <div id="painelconteudo">
                    <c:choose>         
                        <c:when test="${listacliente != null}"> 
                            <h1 id="titulodadoscad">Clientes Cadastrados</h1>
                            <table id="tabelaclientes" cellspacing=0>
                                <tr style="background-color: #aaddbb">
                                    <td id="listaclientecol">CÓDIGO</td>
                                    <td id="listaclientecol">NOME</td>
                                    <td id="listaclientecol">CPF</td>
                                    <td id="listaclientecol">SEXO</td>
                                    <td id="listaclientecol">EMAIL</td>
                                    <td id="listaclientecol">SENHA</td>
                                </tr>
                            <%=session.getAttribute("listacliente")%>
                            </table>
                            <% session.removeAttribute("listacliente");%>
                        </c:when> 
                        <c:when test="${listaend != null}">
                            <h1 id="titulodadoscad">Endereços Cadastrados</h1>
                            <table id="tabelaclientes" cellspacing=0>                                        
                                <tr style="background-color: #aaddbb">
                                    <td id="listaclientecol">CÓDIGO</td>                                    
                                    <td id="listaclientecol">DESCRIÇÃO</td>
                                    <td id="listaclientecol">CEP</td>
                                    <td id="listaclientecol">ENDERECO</td>                                    
                                    <td id="listaclientecol">CIDADE</td>                                    
                                </tr>                                
                            <%=session.getAttribute("listaend")%>
                            </table>
                            <% session.removeAttribute("listaend");%>
                        </c:when>
                        <c:otherwise> 
                            <h1 id="titulodadoscad">Selecione ao lado o que deseja</h1>
                        </c:otherwise> 
                    </c:choose>  
                </div>
            </div>
        </div>

    </body>
</html>


