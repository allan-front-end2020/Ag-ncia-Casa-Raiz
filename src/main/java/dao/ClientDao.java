package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import database.MysqlConnection;
import model.Client;

public class ClientDao {

	private Connection connection;
	private String sql;

	public ClientDao() throws SQLException {

		connection = MysqlConnection.createConnection();

	}

	public void closeConnection() {

		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// cria cliente
	public void createClient(Client client) {
		String sql = "INSERT INTO cliente( nome,login,senha,endereco,tel,dataNasc) VALUES(?,?,?,?,?,?)";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, client.getNome());
			stmt.setString(2, client.getLogin());
			stmt.setString(3, client.getSenha());
			stmt.setString(4, client.getEndereco());
			stmt.setString(5, client.getTel());

			Date data = Date.valueOf(client.getDataNasc());

			stmt.setDate(6, data);
			stmt.executeUpdate();

			System.out.println("cliente criado!");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Client findClient(int id) {
		Client client = null;

		String sql = "SELECT * FROM cliente WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			ResultSet r = stmt.executeQuery();

			while (r.next()) {
				client = new Client();
				client.setId(id);
				client.setNome(r.getString("nome"));
				client.setLogin(r.getString("login"));
				client.setSenha(r.getString("senha"));
				client.setEndereco(r.getString("endereco"));
				client.setTel(r.getString("tel"));
				client.setDataNasc(r.getDate("dataNasc").toLocalDate());

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return client;

	}

	// Lista cliente
	public List<Client> findClients() {
		sql = "SELECT * FROM cliente";

		List<Client> clients = new ArrayList<Client>();

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			ResultSet r = stmt.executeQuery();

			while (r.next()) {
				Client client = new Client();
				client.setId(r.getInt("id"));
				client.setNome(r.getString("nome"));
				client.setLogin(r.getString("login"));
				client.setSenha(r.getString("senha"));
				client.setEndereco(r.getString("endereco"));
				client.setTel(r.getString("tel"));
				client.setDataNasc(r.getDate("dataNasc").toLocalDate());

				clients.add(client);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return clients;

	}

	// atualiza cliente
	public void upDateClient(Client client) {
	    String sql = "UPDATE cliente SET nome=?, login=?, senha=?, endereco=?, tel=?, dataNasc=? WHERE id=?";
	    try (PreparedStatement stmt = connection.prepareStatement(sql)) {
	        stmt.setString(1, client.getNome());
	        stmt.setString(2, client.getLogin());
	        stmt.setString(3, client.getSenha());
	        stmt.setString(4, client.getEndereco());
	        stmt.setString(5, client.getTel());

	        //Date sqlDate = Date.valueOf(client.getDataNasc());
	       // stmt.setDate(6, sqlDate);
	        
	        LocalDate localDate = client.getDataNasc();
	        if (localDate != null) {
	            Date sqlDate = Date.valueOf(localDate);
	            stmt.setDate(6, sqlDate);
	        } else {
	            // Handle the case where localDate is null, such as setting a default date or reporting an error.
	        }

	        stmt.setInt(7, client.getId());

	        stmt.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}


	// deleta cliente
	public void deleteClient(int id) {
		String sql = "DELETE FROM cliente WHERE id=?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();
			System.out.println("deletado!!");

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}