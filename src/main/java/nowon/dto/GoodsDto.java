package nowon.dto;

public class GoodsDto {
	private String gImg;
	private String title;
	private double saleRate;
	private String orginPrice;
	private String price;

	public GoodsDto() {
	}

	public GoodsDto(String gImg, String title, double saleRate, String orginPrice, String price) {
		super();
		this.gImg = gImg;
		this.title = title;
		this.saleRate = saleRate;
		this.orginPrice = orginPrice;
		this.price = price;
	}

	public String getgImg() {
		return gImg;
	}

	public void setgImg(String gImg) {
		this.gImg = gImg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getSaleRate() {
		return saleRate;
	}

	public void setSaleRate(double saleRate) {
		this.saleRate = saleRate;
	}

	public String getOrginPrice() {
		return orginPrice;
	}

	public void setOrginPrice(String orginPrice) {
		this.orginPrice = orginPrice;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
