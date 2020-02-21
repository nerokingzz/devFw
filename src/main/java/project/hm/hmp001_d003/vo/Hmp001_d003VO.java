package project.hm.hmp001_d003.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("p0003VO") 
public class Hmp001_d003VO {
	private String prod_id = "";
	private String vend_id = "";
	private String prod_name = "";
	private int prod_price = 0;
	private String prod_desc;
	
	public String getProd_id() {
		return prod_id;
	}
	public void setProd_id(String prod_id) {
		this.prod_id = prod_id;
	}
	public String getVend_id() {
		return vend_id;
	}
	public void setVend_id(String vend_id) {
		this.vend_id = vend_id;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_desc() {
		return prod_desc;
	}
	public void setProd_desc(String prod_desc) {
		this.prod_desc = prod_desc;
	}
	
	

	
}
