package test;

public class ProductVO {
	private int pk;
	private String name;
	private int price;
	
	private String tmp = "기본";
	
	public ProductVO() {
		this(0,"",0); //pk 뭘로 리셋할지 생각좀
	}
	public ProductVO(int pk, String name, int price) {
		this.pk = pk;
		this.name = name;
		this.price = price;
	}
	
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTmp() {
		return tmp;
	}
	public void setTmp(String tmp) {
		this.tmp = tmp;
	}
	
	@Override
	public String toString() {
		return this.pk +"."+this.name+" 가격: "+this.price;
	}
	

}
