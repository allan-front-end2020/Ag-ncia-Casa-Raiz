package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDao;
import model.Client;

@WebServlet("/UpDateController")
public class UpDateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		try {
			

			ClientDao clienteDao = new ClientDao();
			Client clients = clienteDao.findClient(id);

			req.setAttribute("client", clients);

			RequestDispatcher rd = req.getRequestDispatcher("atualizar.jsp");
			rd.forward(req, res);
			

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws  IOException, ServletException {
        try {
            Client clients = new Client();
            clients.setId(Integer.parseInt(req.getParameter("id")));
            clients.setNome(req.getParameter("nome"));
            clients.setLogin(req.getParameter("login"));
            clients.setSenha(req.getParameter("senha"));
            clients.setEndereco(req.getParameter("endereco"));
            clients.setTel(req.getParameter("tel"));
           clients.setDataNasc(LocalDate.parse(req.getParameter("dataNasc")));
          
          
      

            ClientDao clientDao = new ClientDao();
            clientDao.upDateClient(clients);
            
           res.sendRedirect("ReadController");
            
            
        } catch (Exception e) {
        	e.printStackTrace();
        }
        
	}
}
