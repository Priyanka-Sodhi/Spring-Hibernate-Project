package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "courses9th", catalog = "springmvc")
public class Courses9th implements java.io.Serializable {

	private Integer courseid;
	private String coursename;
	private String photo;
	private Double price;
	
	public Courses9th() {
	}

	public Courses9th(String coursename,String photo, Double price) {
		this.coursename = coursename;
		this.photo=photo;
		this.price = price;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "courseid", unique = true, nullable = false)
	public Integer getCourseid() {
		return this.courseid;
	}

	public void setCourseid(Integer courseid) {
		this.courseid = courseid;
	}

	@Column(name = "coursename", nullable = false)
	public String getCoursename() {
		return this.coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	@Column(name = "photo", nullable = false)
	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Column(name = "price", nullable = false)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}
