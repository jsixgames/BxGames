package br.com.controller;

import br.com.interfaces.CarrinhoRemote;
import br.com.interfaces.Item_PedidoRemote;
import br.com.interfaces.PedidoRemote;
import br.com.interfaces.ProdutoRemote;
import br.com.modelos.Item_Pedido;
import br.com.modelos.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CarrinhoServlet", urlPatterns = {"/CarrinhoServlet"})
public class CarrinhoServlet extends HttpServlet {
    
    @EJB
    private CarrinhoRemote cart;    
    @EJB
    private ProdutoRemote pr;
    @EJB
    private PedidoRemote pedr;
    
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        try {
            
            try {
             if(req.getParameter("btn-comprar").equals("comprar1") ||
             req.getParameter("btn-comprar").equals("comprar2")){      
                 //set id e busca produto
                 Long id = Long.parseLong(req.getParameter("prod-id"));                 
                 Produto p = pr.find(id);
                 int indice = 9999;
                 Item_Pedido ip = new Item_Pedido();
                               
                 try {
                 if(cart.getItems().isEmpty()){
                 cart.addItem(ip);
                 ip.setProduto(p);
                 ip.setPreco_unidade(p.getPreco());
                 ip.setQtd(1);                 
                 ip.setPreco_total(ip.getPreco_unidade()*ip.getQtd());  
                 session.setAttribute("qtde", cart.qtde());
                 session.setAttribute("listacarrinho", cart.getItems());
                 req.getRequestDispatcher("index.jsp").forward(req, resp);
                 }
                 else{
                     for(int i = 0; cart.qtde() >= i; i++){
                         cart.getItems().get(i).equals(ip);
                         if(cart.getItems().get(i).equals(ip) == true){
                             System.out.print("A");
                             cart.getItems().get(indice).setQtd((cart.getItems().get(indice).getQtd()) + 1);                 
                             session.setAttribute("qtde", cart.qtde());                             
                             session.setAttribute("listacarrinho", cart.getItems());
                             req.getRequestDispatcher("index.jsp").forward(req, resp);  
                             
                         }
                         else{
                             System.out.print("B");                            
                             cart.addItem(ip);
                             session.setAttribute("qtde", cart.qtde());
                             session.setAttribute("listacarrinho", cart.getItems());
                             req.getRequestDispatcher("index.jsp").forward(req, resp);
                         }}
                 }
                 }catch (Exception e) {
                     out.println("Erro ao setar o novo item");
                 }
                 
            }                
            } catch (Exception e) {
                out.println("Erro ao adicionar produto no carrinho");
            }
            
            try {
                if (req.getParameter("mostrar").equals("1")) {
                    req.getRequestDispatcher("carrinho.jsp").forward(req, resp);
                }
            } catch (Exception e) {
                out.println("Erro ao redirecionar para a pagina do carrinho");
            }
             
        } catch (Exception e) {
            out.println("Erro no servlet do carrinho de compras");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
