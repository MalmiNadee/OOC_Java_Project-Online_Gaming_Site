package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.DAO.gameDaoImp;
import com.DataBase.DBConnect;


public class DeleteGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int id=Integer.parseInt(request.getParameter("id"));
			gameDaoImp dao = new gameDaoImp(DBConnect.getConnection());
			boolean f=dao.deleteGames(id);
			HttpSession session = request.getSession();
			
			if(f) {
				 
				 session.setAttribute("successMsg", "Game Deleted Successfully");
				 response.sendRedirect("Admin/all_games.jsp");
			}else {
					session.setAttribute("errorMsg", "Error!!!");
					response.sendRedirect("Admin/all_games.jsp");
				}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
