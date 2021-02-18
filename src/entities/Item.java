package entities;

public class Item {

	private Courses9th courses9th=new Courses9th();
	private Courses10th courses10th=new Courses10th();
	private Courses11th courses11th=new Courses11th();
	private Courses12th courses12th=new Courses12th();
	
	private int quantity;

	public Courses9th getCourses9th() {
		return courses9th;
	}

	public void setCourses9th(Courses9th courses9th) {
		this.courses9th = courses9th;
	}


	public Courses10th getCourses10th() {
		return courses10th;
	}

	public void setCourses10th(Courses10th courses10th) {
		this.courses10th = courses10th;
	}

	public Courses11th getCourses11th() {
		return courses11th;
	}

	public void setCourses11th(Courses11th courses11th) {
		this.courses11th = courses11th;
	}

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
	public Item() {
		super();
	}
	public Item(Courses9th courses9th, Courses10th courses10th, Courses11th courses11th, Courses12th courses12th,
			int quantity) {
		super();
		this.courses9th = courses9th;
		this.courses10th = courses10th;
		this.courses11th = courses11th;
		this.courses12th = courses12th;
		this.quantity = quantity;
	}

	
	
}
