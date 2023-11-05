package controllers;

import java.io.IOException;

import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDao;
import model.Client;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
  

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws   IOException, ServletException {
	  Client client = new Client();
	  
	  client.setNome(req.getParameter("nome"));
	  client.setLogin(req.getParameter("login"));
	  client.setSenha(req.getParameter("senha"));
	  client.setEndereco(req.getParameter("endereco"));
	  client.setTel(req.getParameter("tel"));
	  client.setDataNasc(LocalDate.parse(req.getParameter("dataNasc")));
	  
	  
	  try {
		
		  ClientDao clientDao = new ClientDao();
		  clientDao.createClient(client);
		  res.sendRedirect("ReadController");
		  
		  
	} catch (Exception e) {
		
	}

   }

}
