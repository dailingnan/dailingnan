package order.domain;

import java.util.Date;
import java.util.List;

import user.User;

public class Order {
	private String oid;
	private Date ordertime;// 下单时间
	private double total;// 合计
	private int state;// 订单状态有四种：0未付款 1已付款但未发货 2已发货但未确认收货3已确认交易成功
	private User owner;// 订单所有者
	private String address;// 收货地址
	
	private List<OrderItem> orderItemList;//当前订单下所有条目
}
