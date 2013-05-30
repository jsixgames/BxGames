package br.com.controller;

import br.com.interfaces.ClienteRemote;
import br.com.interfaces.EnderecoRemote;
import br.com.modelos.Cliente;
import br.com.modelos.Endereco;
import br.com.modelos.MetodosGerais;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CadastroEnderecoServlet", urlPatterns = {"/CadastroEnderecoServlet"})
public class CadastroEnderecoServlet extends HttpServlet {

    @EJB
    private ClienteRemote cr;
    @EJB
    private EnderecoRemote er;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            if (request.getParameter("btn-newend") != null
                    && request.getParameter("btn-newend").equals("Cadastrar")) {

                Endereco endereco = new Endereco();
                String email, senha;
                email = (String) session.getAttribute("emailLogado");
                senha = (String) session.getAttribute("senhaLogado");

                Cliente c = cr.login(email, senha);
                
                try {
                    endereco.setEndereco(request.getParameter("endereco"));        
                    endereco.setCep(new MetodosGerais().tirardotecoma(request.getParameter("cep")));                    
                    endereco.setCidade(request.getParameter("cidade"));                                        
                    endereco.setDescricao(request.getParameter("descricao"));
                } catch (Exception e) {
                    out.println("Erro ao setar o endereco novo");
                }
                
                try {                
                c.getEndereco().add(endereco);                
                } catch (Exception e) {
                    out.println("Erro ao setar o novo endereco na lista");
                }

                try {
                    cr.edit(c);                
                    cr.create(c);
                } catch (Exception e) {
                    out.println("Erro ao dar o merge e persistir");
                }
                
                session.setAttribute("respnewend", true);
                request.getRequestDispatcher("painel.jsp").forward(request, response);

            }
        } catch (Exception e) {
            session.setAttribute("respnewend", false);
            request.getRequestDispatcher("painel.jsp").forward(request, response);
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
