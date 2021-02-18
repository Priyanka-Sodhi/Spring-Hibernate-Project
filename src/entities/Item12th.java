package entities;

public class Item12th {

	private Courses12th courses12th=new Courses12th();
	private int quantity;
	public Courses12th getCourses12th() {
		return courses12th;
	}
	public void setCourses12th(Courses12th courses12th) {
		this.courses12th = courses12th;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item12th(Courses12th courses12th, int quantity) {
		super();
		this.courses12th = courses12th;
		this.quantity = quantity;
	}
	public Item12th() {
		super();
	}
	

}
