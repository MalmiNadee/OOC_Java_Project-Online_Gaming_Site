package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;


import com.DAO.gameDaoImp;
import com.DataBase.DBConnect;
import com.entity.GameInfo;

@MultipartConfig
public class EditGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  try {
			  int gameId = Integer.parseInt(req.getParameter("id")); // Assuming 'id' is passed as a request parameter
			    req.setAttribute("id",gameId);
				
				
				String gameName =req.getParameter("gname");
				String price =req.getParameter("gprice");
				String category =req.getParameter("gcategory");
				Part part = req.getPart("gimage");
				String fileName = part.getSubmittedFileName();
				
				GameInfo g = new GameInfo();
				 g.setGameId(gameId);
				 g.setGameName(gameName);
				 g.setPrice(price);
				 g.setCategory(category);
				 g.setImage(fileName);
				 
				 gameDaoImp dao= new gameDaoImp(DBConnect.getConnection());
				 boolean f =dao.updateGames(g);
				 
				 HttpSession session = req.getSession();
				 
				 if(f) {
					 
					 session.setAttribute("successMsg", "Game Updated Successfully");
						resp.sendRedirect("Admin/all_games.jsp");
				}else {
						session.setAttribute("errorMsg", "Error!!!");
						resp.sendRedirect("Admin/all_games.jsp");
					}
				
				
		  }catch (Exception e) {
			e.printStackTrace();
		}
	}

}
