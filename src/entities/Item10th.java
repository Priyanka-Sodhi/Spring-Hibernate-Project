package entities;

public class Item10th {

	private Courses10th courses10th=new Courses10th();
	private int quantity;
	public Courses10th getCourses10th() {
		return courses10th;
	}
	public void setCourses10th(Courses10th courses10th) {
		this.courses10th = courses10th;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item10th(Courses10th courses10th, int quantity) {
		super();
		this.courses10th = courses10th;
		this.quantity = quantity;
	}
	public Item10th() {
		super();
	}
	
	

}
