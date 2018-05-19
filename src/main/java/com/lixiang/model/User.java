package com.lixiang.model;

public class User {
	private String id;//id
	private String name;//姓名
	private String age;//年龄
	private String phone;//手机号
	private String address;//地址
	private String menu;//套餐
	private String password;//服务密码
	private String openernum;//开户工号
	private String note;//备注
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOpenernum() {
		return openernum;
	}
	public void setOpenernum(String openernum) {
		this.openernum = openernum;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", age=" + age + ", phone=" + phone + ", address=" + address
				+ ", menu=" + menu + ", password=" + password + ", openernum=" + openernum + ", note=" + note + "]";
	}
	
	
}
