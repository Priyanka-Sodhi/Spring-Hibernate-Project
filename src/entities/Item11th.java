package entities;

public class Item11th {

	private Courses11th courses11th=new Courses11th();
	private int quantity;
	public Courses11th getCourses11th() {
		return courses11th;
	}
	public void setCourses11th(Courses11th courses11th) {
		this.courses11th = courses11th;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item11th(Courses11th courses11th, int quantity) {
		super();
		this.courses11th = courses11th;
		this.quantity = quantity;
	}
	public Item11th() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
