package nowon.dto;

public class TimeDTO {
	
	private String src;
	private int rate;
	private String soldTime;
	private int goodsCount;
	private String goods;
	private String price;
	
	public TimeDTO() {
	}
	
	public TimeDTO(String src, int rate, String soldTime, int goodsCount, String goods, String price) {
		super();
		this.src = src;
		this.rate = rate;
		this.soldTime = soldTime;
		this.goodsCount = goodsCount;
		this.goods = goods;
		this.price = price;
	}

	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getSoldTime() {
		return soldTime;
	}
	public void setSoldTime(String soldTime) {
		this.soldTime = soldTime;
	}
	public int getGoodsCount() {
		return goodsCount;
	}
	public void setGoodsCount(int goodsCount) {
		this.goodsCount = goodsCount;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
