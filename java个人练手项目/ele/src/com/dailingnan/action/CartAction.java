package com.dailingnan.action;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.springframework.http.HttpRequest;

import com.dailingnan.pojo.AddressBean;
import com.dailingnan.pojo.Cart;
import com.dailingnan.pojo.FoodBean;
import com.dailingnan.pojo.OrderBean;
import com.dailingnan.pojo.OrderItemBean;
import com.dailingnan.service.CartService;
import com.dailingnan.service.ICratService;

public class CartAction {
	private ICratService cratService;
	private List<Cart> carts;
	private List<Cart> carts1;
	private String[] shiping;
	private int each;
	private String fid;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	private int size=2;//ÿҳ��¼��
	private int daxiao;//�ܹ�ҳ��
	private List<OrderItemBean> oitems;
	private static Logger log = Logger.getLogger(CartAction.class);//������־
	private OrderBean order;
	private List<AddressBean> addressBean;
	private List<OrderBean> orderlist;

	
	public List<OrderBean> getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(List<OrderBean> orderlist) {
		this.orderlist = orderlist;
	}
	public List<AddressBean> getAddressBean() {
		return addressBean;
	}
	public void setAddressBean(List<AddressBean> addressBean) {
		this.addressBean = addressBean;
	}
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}
	public int getDaxiao() {
		return daxiao;
	}
	public void setDaxiao(int daxiao) {
		this.daxiao = daxiao;
	}
	public List<Cart> getCarts1() {
		return carts1;
	}
	public void setCarts1(List<Cart> carts1) {
		this.carts1 = carts1;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String[] getShiping() {
		return shiping;
	}
	public void setShiping(String[] shiping) {
		this.shiping = shiping;
	}
	public List<Cart> getCarts() {
		return carts;
	}
	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
	public ICratService getCratService() {
		return cratService;
	}
	public void setCratService(ICratService cratService) {
		this.cratService = cratService;
	}
	public String execute(){
		System.out.println("���ﳵ");
		List<Cart> list  = cratService.findCart();
		System.out.println(list.get(0).getGcid());
		return null;
	}
	//���빺�ﳵ
	public String add(){
		Cart cart = new Cart();
		cart.setFid(fid);//���մ���Ĳ�ƷID
		cart.setNum(1);//���մ��������
		cart.setUid("1");//���մ�����û�id
		System.out.println("���빺�ﳵ");
		//cart.setTotal(cratService.findFood(1).getPrice()*cart.getNum());
		cratService.addCart(cart);
		return null;
	}
	//���ﳵ��ѯ
	public String find(){
		carts = new ArrayList<Cart>();
		carts =cratService.findcart(1);
		daxiao=cratService.countyeshu(carts);
		log.info("carts������Ϊ"+carts.size());
		return "query1";
	}
	//�ύ���ﳵ,���ɶ�����
	public String delete(){
		//������ɶ������
		String oid = cratService.randoid();
		//���붩��
		OrderBean od = new OrderBean( oid ,"0", "1", "����ʡ������");
		cratService.insertOrder(od,shiping);
		cratService.insertOrderItem(shiping,oid);
		oitems = cratService.findorderitem(oid);
		order = cratService.findorderByid(oid);
		addressBean = cratService.findaddress("1");//��ѯ�û���ַ
		return "besure";
	}
	
	public List<OrderItemBean> getOitems() {
		return oitems;
	}
	public void setOitems(List<OrderItemBean> oitems) {
		this.oitems = oitems;
	}
	//���ﳵ��������
	public String updateadd(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String gcid =request.getParameter("gcid");
		cratService.updateadd(gcid);
		return null;
	}
	//���ﳵ��������
	public String updatedec(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String gcid =request.getParameter("gcid");
		cratService.updatedec(gcid);
		return null;
	} 
	//��ѯһҳ����
	public String findone(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String each1 =request.getParameter("each");
		carts = new ArrayList<Cart>();
		carts1 = new ArrayList<Cart>();
		each = Integer.parseInt(each1);//ҳ��
		carts =cratService.findcart(1);
		//ȡ����ҳ��
		daxiao=cratService.countyeshu(carts);
		//ȡ��ÿһҳ������
		carts1 = cratService.eachdata(each, carts);
		return "query";
	}
	public String before(){//��һҳ
		carts1 = new ArrayList<Cart>();
		if(each-1>0){
			each = each-1;
		}else{
			each = each;
		}
		carts1 = cratService.eachdata(each, carts);
		return "query";
	}
	public String after(){//��һҳ
		carts =cratService.findcart(1);
		carts1 = new ArrayList<Cart>();
		if(each+1<carts.size()){
			each = each+1;
		}else{
			each = each;
		}
		carts1 = cratService.eachdata(each, carts);
		return "query";
	}
	//������ַ
	public String upaddress() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String address = request.getParameter("address");
		//�ַ���ת��
		String address1=new String(address.getBytes("ISO-8859-1"),"utf-8"); //ת��UTF8
		order.setArderadd(address1);
		cratService.updateaddress(order);
		return null;
	}
	public String date() throws ParseException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String begin = request.getParameter("begin");
		orderlist = cratService.findorderBydt(begin);
		return "queryorder";
	}
}
