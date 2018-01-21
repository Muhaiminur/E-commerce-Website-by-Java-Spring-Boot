package muhaiminur_rahman_SE_JAVA.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

public class product_info {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String p_name;
	private double p_price;
	private double p_percent;
	private String p_type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public double getP_price() {
		return p_price;
	}
	public void setP_price(double p_price) {
		this.p_price = p_price;
	}
	public double getP_percent() {
		return p_percent;
	}
	public void setP_percent(double p_percent) {
		this.p_percent = p_percent;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	
	public product_info(int id,String p_name,double p_price,double p_percent,String p_type) {
		super();
		this.id = id;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_percent = p_percent;
		this.p_type = p_type;
	}
	public product_info() {
		super();
	}
	
	
}