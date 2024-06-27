package com.entity;

public class GameInfo {
	
	private int gameId;
	private String gameName;
	private String price;
	private String category;
	private String image;
	public GameInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GameInfo(String gameName, String price, String category, String image) {
		super();
		this.gameName = gameName;
		this.price = price;
		this.category = category;
		this.image = image;
	}
	public int getGameId() {
		return gameId;
	}
	public void setGameId(int gameId) {
		this.gameId = gameId;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "GameInfo [gameId=" + gameId + ", gameName=" + gameName + ", price=" + price + ", category=" + category
				+ ", image=" + image + "]";
	}
	
	

}
