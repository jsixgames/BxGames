<%@page import="br.com.modelos.MetodosGerais"%>
<%@page import="br.com.modelos.Item_Pedido"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head> 
        <title> BOX GAMES - A SUA LOJA DE GAMES </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="description" content="BOX GAMES | Loja de Games | Compre Consoles, Jogos e Equipamentos para sua diversão"/>
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

          <div id="conteudo">                                            
            <h1 id="titulocadastro">Carrinho de Compras</h1>
            <div id="tabelalista2">                                               
            <table id="tablistadesejos2">
                <tbody>
                    <tr style="background-color: #dddddd">                    
                    <td id="titulocolunalistapedido">CÓDIGO</td>
                    <td id="titulocolunalistapedido">NOME</td>
                    <td id="titulocolunalistapedido">CATEGORIA</td>
                    <td id="titulocolunalistapedido">QUANTIDADE</td>
                    <td id="titulocolunalistapedido">PREÇO</td>                    
                </tr>                
                 <% 
               List<Item_Pedido> list = (List<Item_Pedido>) session.getAttribute("listaitem");
               for(int i = 0; i < list.size();i++){
                   Item_Pedido ip = list.get(i);                   
                   String preco = new MetodosGerais().doubleTostring(ip.getPreco_total());                   
                   out.println("<tr>" +
                    "<td id='linhatabelalistapedido'>" + ip.getProduto().getId_prod() + "</td>" +
                    "<td id='linhatabelalistapedido'>" + ip.getProduto().getNome() + "</td>" +
                    "<td id='linhatabelalistapedido'>" + ip.getProduto().getDepto() + "</td>" +                 
                    "<td id='linhatabelalistapedido'><form action='CarrinhoServlet'>"
                           +"<input type='hidden' name='evento' value='atualiza'>"
                           +"<input type='hidden' name='item-id' value='"+i+"'>"
                           + "<input type='number' value='" 
                           + ip.getQtd() +"' name='qtdenova' min='1' style='width:35px'>"+
                            "<input type='submit' value='Atualizar'></form>"
                           +"</td>" +
                    "<td id='linhatabelalistapedido'>" + preco + "</td>" +                  
                    "<td id='linhatabelalistapedido' style='border:0'>" + "<a href='CarrinhoServlet?evento=remover&item-id="
                           +i+"'"+"><img id='imgremovecart' src='images/icon-rem.png'></a>" + "</td>" +       
                    "<td id='linhatabelalistapedido' style='border:0'>" + "</td>" +       
                            "</tr>"                                                             
                           );
               }                                             
                     %>
            </tbody>
            </table>                                              
        </div>
        </div>
        
        <c:import url="footer.jsp" />
    </body>
</html>