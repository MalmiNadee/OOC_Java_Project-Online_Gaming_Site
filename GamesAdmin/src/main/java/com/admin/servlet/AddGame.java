package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.DAO.gameDaoImp;
import com.DataBase.DBConnect;
import com.entity.GameInfo;

@MultipartConfig
public class AddGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
          try {
			
			String gameName =req.getParameter("gname");
			String price =req.getParameter("gprice");
			String category =req.getParameter("gcategory");
			Part part = req.getPart("gimage");
			String fileName = part.getSubmittedFileName();

			GameInfo g = new GameInfo(gameName,price,category,fileName);
			
			gameDaoImp dao = new gameDaoImp(DBConnect.getConnection());
			
			
			
			boolean f =dao.addGames(g);
			
		     HttpSession session = req.getSession();
		
			if(f) {
				String path =getServletContext().getRealPath("")+"images";
				
				File file = new File(path);
				part.write(path+File.separator+fileName);
				System.out.println(path);
				
				session.setAttribute("successMsg", "Game Added Successfully");
				resp.sendRedirect("Admin/add_games.jsp");
			}else {
				session.setAttribute("errorMsg", "Error!!!");
				resp.sendRedirect("Admin/add_games.jsp");
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
		
	

}
