package com.DAO;
import java.sql.Connection;

import com.DataBase.DBConnect;
import com.entity.GameInfo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class gameDaoImp implements gameDao{
	
	public Connection con =DBConnect.getConnection();

	public gameDaoImp(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean addGames(GameInfo g) {
		boolean f =false;
		if(con != null) {
		try {
			
			String sql = "insert into game_db(gameName,price,category,image)values(?,?,?,?)";
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setString(1, g.getGameName());
			pstat.setString(2, g.getPrice());
			pstat.setString(3, g.getCategory());
			pstat.setString(4, g.getImage());
			
		
			int i=pstat.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
		return f;
	}
	
	 public List<GameInfo> getAllGames() {
			
			List<GameInfo> list  = new ArrayList<GameInfo>();
			GameInfo g =null;
			try {
				String sql="select * from game_db";
				PreparedStatement pstat = con.prepareStatement(sql);
				
				ResultSet rs= pstat.executeQuery();
				while(rs.next()) {
					g = new GameInfo();
					g.setGameId(rs.getInt(1));
					g.setGameName(rs.getString(2));
					g.setPrice(rs.getString(3));
					g.setCategory(rs.getString(4));
					g.setImage(rs.getString(5));
					list.add(g);
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
	 
	 public GameInfo getGameInfoById(int id) {
		 
		 GameInfo g =null;
		 
		 try {
			 
			 String sql ="select * from game_db where gameId=?";
			 PreparedStatement pstat = con.prepareStatement(sql);
			 pstat.setInt(1, id);
			 
			 ResultSet rs = pstat.executeQuery();
			 while(rs.next()) {

				 g=new GameInfo();
				 g.setGameId(rs.getInt(1));
				 g.setGameName(rs.getString(2));
				 g.setPrice(rs.getString(3));
				 g.setCategory(rs.getString(4));
				 g.setImage(rs.getString(5));

			 }

		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return g;


	 }
	 
	 public boolean updateGames(GameInfo g) {
		 
		 boolean f=false;
		 
		 try {
			 
			 String sql="update game_db set gameName=?, price=?, category=?, image=? where gameId=?" ;
			 PreparedStatement pstat = con.prepareStatement(sql);
			 pstat.setString(1,g.getGameName());
			 pstat.setString(2,g.getPrice());
			 pstat.setString(3,g.getCategory());
			 pstat.setString(4,g.getImage());
			 pstat.setInt(5, g.getGameId());
			 
			 int i = pstat.executeUpdate();
			 if(i==1) {
				 f=true;
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return f;
		 
	 }
	 
	 public boolean deleteGames(int id) {
		 
		 boolean f= false;
		 
		 try {
			 
			 String sql="delete from game_db where gameId=?";
			 PreparedStatement pstat=con.prepareStatement(sql);
			 pstat.setInt(1, id);
			 
			 int i=pstat.executeUpdate();
			 if(i==1) {
				 f=true;
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 
		 
		 return f;
	 }
	 

  
}
