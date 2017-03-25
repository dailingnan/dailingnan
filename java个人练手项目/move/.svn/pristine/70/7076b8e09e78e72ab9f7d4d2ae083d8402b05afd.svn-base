package com.dailingnan.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="orders")
public class OrderBean {
	
	@Id
	@GeneratedValue(generator = "paymentableGenerator") 
	@GenericGenerator(name = "paymentableGenerator", strategy = "increment")
	private Integer orderid;
	
	@ManyToOne
	@JoinColumn(name="uid")
	private User user;
	

	@ManyToOne
	@JoinColumn(name="marrangeid")
	private MoveArrangeBean moveArrang;
	
	@Column(name="total")
	private float total;
	
	@Column(name="telephoto")
	private String telephoto;
	
	@Column(name="state")
	private int state;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="orderdate")
	private Date date;
	
	
	public OrderBean(Integer orderid, User user, MoveArrangeBean moveArrang, float total, String telephoto, int state,
			Date date) {
		super();
		this.orderid = orderid;
		this.user = user;
		this.moveArrang = moveArrang;
		this.total = total;
		this.telephoto = telephoto;
		this.state = state;
		this.date = date;
	}
	public OrderBean(User user, MoveArrangeBean moveArrang, float total,  int state
			) {
		super();
		this.user = user;
		this.moveArrang = moveArrang;
		this.total = total;
		this.state = state;
	}
	public OrderBean(User user, MoveArrangeBean moveArrang, float total,  int state,String telephoto
			) {
		super();
		this.user = user;
		this.moveArrang = moveArrang;
		this.total = total;
		this.state = state;
		this.telephoto=telephoto;
	}
	public OrderBean() {
		super();
		
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public MoveArrangeBean getMoveArrang() {
		return moveArrang;
	}
	public void setMoveArrang(MoveArrangeBean moveArrang) {
		this.moveArrang = moveArrang;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public String getTelephoto() {
		return telephoto;
	}
	public void setTelephoto(String telephoto) {
		this.telephoto = telephoto;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
