package com.DAO;

import java.util.List;

import com.entity.GameInfo;

public interface gameDao {
	
	public boolean addGames(GameInfo g);
		
    public List<GameInfo> getAllGames();
    
    public GameInfo getGameInfoById(int id);
    
    public boolean updateGames(GameInfo g);
    
    public boolean deleteGames(int id);

}
