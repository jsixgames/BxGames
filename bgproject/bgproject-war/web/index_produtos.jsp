<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<h1 id="titulocadastro">Produtos em destaque</h1>
            <div id="tabelahome">
                <table id="tabelaprodutos">
                    <tbody>
                        <tr>
                            <td class="proditem">
                                <a href="super_mario_galaxy.jsp"><img src="images/mariogalaxy.jpg" alt="SUPER_MARIO_GALAXY"/></a>
                                <p id="nomejogo">Jogo Wii Super Mario Galaxy 2</p>
                                <p id="valor-por">Por: <strong>R$ 149,90</strong></p>                                
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=1"></a>                                
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=1">                                    
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="lego_piratas_do_caribe.jsp"><img src="images/lego_piratas.jpg" alt="LEGO_PIRATAS_DO_CARIBE"/></a>
                                <p id="nomejogo">Jogo 3DS Lego Piratas do Caribe</p>
                                <p id="valor-por">Por: <strong>R$ 69,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=2"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=2">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="bioshock.jsp"><img src="images/bioshock_ps3.jpg" alt="BIOSHOCK_INFINITE"/></a>
                                <p id="nomejogo">Jogo PS3 Bioshock Infinite</p>
                                <p id="valor-por">Por: <strong>R$ 199,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=3"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=3">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="ps3_160.jsp"><img src="images/ps3_console.jpg" alt="PS3_160"/></a>
                                <p id="nomejogo">Console PlayStation 3 Slim 160gb </p>
                                <p id="valor-por">Por: <strong>R$ 1199,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=4"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=4">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                        </tr> 
                        <tr>
                            <td class="proditem">
                                <a href="dirt_3.jsp"><img src="images/dirt3.jpg" alt="DIRT_3"/></a>
                                <p id="nomejogo">Jogo PC/DVD para Windows Dirt 3</p>
                                <p id="valor-por">Por: <strong>R$ 69,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=5"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=5">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="pes_2013.jsp"><img src="images/pes_2013.jpg" alt="PES_2013"/></a>
                                <p id="nomejogo">Jogo Xbox 360 Pro Evolution Soccer 2013</p>
                                <p id="valor-por">Por: <strong>R$ 99,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=6"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=6">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="logitech_volante.jsp"><img src="images/volante_ps3.jpg" alt="LOGITECH_VOLANTE"/></a>
                                <p id="nomejogo">Acessório PS3 Volante Logitech</p>
                                <p id="valor-por">Por: <strong>R$ 799,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=7"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=7">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="mario_super_sluggers.jsp"><img src="images/MARIO_SUPER_SLUGGERS.jpg" alt="MARIO_SUPER_SLUGGERS"/></a>
                                <p id="nomejogo">Jogo Wii Mario Super Sluggers</p>
                                <p id="valor-por">Por: <strong>R$ 189,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=8"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=8">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                        </tr> 
                        <tr>
                            <td class="proditem">
                                <a href="vita.jsp"><img src="images/VITA.jpg" alt="VITA"/></a>
                                <p id="nomejogo">Console PSVita</p>
                                <p id="valor-por">Por: <strong>R$ 989,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=9"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=9">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="naruto_ultimate_ninja_strom_3.jsp"><img src="images/NARUTO_ULTIMATE_NINJA_STORM_3.jpg" alt="NARUTO_ULTIMATE_NINJA_STORM_3"/></a>
                                <p id="nomejogo">Jogo PS3 Naruto Ultimate Ninja Storm 3</p>
                                <p id="valor-por">Por: <strong>R$ 199,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=10"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=10">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="forza_horizon.jsp"><img src="images/FORZA_HORIZON.jpg" alt="FORZA_HORIZON"/></a>
                                <p id="nomejogo">Jogo Xbox 360 Forza Horizon</p>
                                <p id="valor-por">Por: <strong>R$ 199,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=11"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=11">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                            <td class="proditem">
                                <a href="kid_icarus.jsp"><img src="images/KID_ICARUS.jpg" alt="KID_ICARUS"/></a>
                                <p id="nomejogo">Jogo 3DS Kid Icarus</p>
                                <p id="valor-por">Por: <strong>R$ 129,90</strong></p>
                                <a id="btn-comprar" href="CarrinhoServlet?btn-comprar=comprar1&prod-id=12"></a>
                                <c:choose>         
                                <c:when test="${verificalog == true}">                                 
                                <a id="botaologout" href="ListaDesejosServlet?btn-desejo=add&prod-id=12">
                                    <p>Adicionar a lista de desejos</p>
                                </a>
                                </c:when>                                 
                                </c:choose>
                            </td>
                        </tr> 
                    </tbody>                
                </table>
                      
            </div>
    </body>
</html>
