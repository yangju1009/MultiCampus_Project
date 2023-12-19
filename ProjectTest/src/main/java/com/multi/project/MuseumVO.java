package com.multi.project;

import java.sql.Time;
import java.util.Date;

public class MuseumVO {
    private int museumId;
    private String name;
    private String location;
    private Time time;
    private Date closure;
    private String tel;
	
    public int getMuseumId() {
		return museumId;
	}
	public void setMuseumId(int museumId) {
		this.museumId = museumId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public Date getClosure() {
		return closure;
	}
	public void setClosure(Date closure) {
		this.closure = closure;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
    // 생성자, Getter 및 Setter 메서드
	@Override
	public String toString() {
		return "MuseumVO [museumId=" + museumId + ", name=" + name + ", location=" + location + ", time=" + time
				+ ", closure=" + closure + ", tel=" + tel + "]";
	}
}