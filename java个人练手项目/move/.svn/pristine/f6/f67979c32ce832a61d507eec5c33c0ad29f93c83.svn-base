package com.dailingnan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orderitem")
public class OrderItemBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer orderItemId;
	
	@ManyToOne
	@JoinColumn(name="orderid")
	private OrderBean order;
	
	@Column(name="seat")
	private int seat;
	
	public OrderItemBean(Integer orderItemId, OrderBean order, int seat) {
		super();
		this.orderItemId = orderItemId;
		this.order = order;
		this.seat = seat;
	}
	public OrderItemBean() {
		super();
	
	}
	public Integer getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(Integer orderItemId) {
		this.orderItemId = orderItemId;
	}
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	
}
