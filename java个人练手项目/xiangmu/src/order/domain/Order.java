package order.domain;

import java.util.Date;
import java.util.List;

import user.User;

public class Order {
	private String oid;
	private Date ordertime;// �µ�ʱ��
	private double total;// �ϼ�
	private int state;// ����״̬�����֣�0δ���� 1�Ѹ��δ���� 2�ѷ�����δȷ���ջ�3��ȷ�Ͻ��׳ɹ�
	private User owner;// ����������
	private String address;// �ջ���ַ
	
	private List<OrderItem> orderItemList;//��ǰ������������Ŀ
}
