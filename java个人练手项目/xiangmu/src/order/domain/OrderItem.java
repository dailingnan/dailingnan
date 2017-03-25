package order.domain;

import good.domain.*;

public class OrderItem {
	private String iid;
	private int count;// 数量
	private double subtotal;// 小计
	private Order order;// 所属订单
	private Good gid;// 所要购买的商品
}
