package entities;

public class Item9th {

	private Courses9th courses9th=new Courses9th();
	private int quantity;
	public Courses9th getCourses9th() {
		return courses9th;
	}
	public void setCourses9th(Courses9th courses9th) {
		this.courses9th = courses9th;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item9th(Courses9th courses9th, int quantity) {
		super();
		this.courses9th = courses9th;
		this.quantity = quantity;
	}
	public Item9th() {
		super();
	}
	
	

}
