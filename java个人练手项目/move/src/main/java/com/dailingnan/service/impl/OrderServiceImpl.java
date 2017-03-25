package com.dailingnan.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFDataFormat;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.OrderDao;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;
import com.dailingnan.entity.User;
import com.dailingnan.service.OrderService;
import com.dailingnan.util.ExportUtil;
import com.sun.org.apache.xerces.internal.impl.xs.XSMessageFormatter;

@Repository
public class OrderServiceImpl implements OrderService{
	@Resource
	private OrderDao orderDao;

	public List<OrderBean> findOrderByCin(CinemaBean cinemaBean,int rows,int page) {
		// TODO Auto-generated method stub
		return orderDao.findOrderByCin(cinemaBean,(page-1)*rows, rows);
	}

	public Long findMoveCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		return orderDao.findMoveCount(cinemaBean);
	}

	public Map<String, Object> findOrderAndOrderItem(User user) {
		// TODO Auto-generated method stub
		//ת��ʱ���ʽ
		Map<String,Object> map = new HashMap<String, Object>();
		List<OrderBean> orderBeans = orderDao.findOrders(user.getUid());
		List<OrderItemBean> list = new ArrayList<OrderItemBean>();
		for (OrderBean orderBean : orderBeans) {
			List<OrderItemBean> orderItemBeans = orderDao.findOrderItems(orderBean.getOrderid());
			for (OrderItemBean orderItemBean : orderItemBeans) {
				list.add(orderItemBean);
			}
		}
		map.put("orderBeans", orderBeans);
		map.put("orderItemBeans", list);
		return map;
	}
	
	/*
	 * ��������excel
	 */
	public void exportExcel(List<OrderBean> orderList,String[] titles, ServletOutputStream outputStream) {
		// TODO Auto-generated method stub
		 //����
       // List<User> orderList = dao.findUser(0, 3);  
        
        
        // ����һ��workbook ��Ӧһ��excelӦ���ļ�  
        XSSFWorkbook workBook = new XSSFWorkbook();  
        // ��workbook�����һ��sheet,��ӦExcel�ļ��е�sheet  
        XSSFSheet sheet = workBook.createSheet("��������excel����");  
        ExportUtil exportUtil = new ExportUtil(workBook, sheet);
        //ͷ����ʽ
        XSSFCellStyle headStyle = exportUtil.getHeadStyle();
        //������ʽ
        XSSFCellStyle bodyStyle = exportUtil.getBodyStyle();  
        
        
        // ������ͷ  
        XSSFRow headRow = sheet.createRow(0);
        
        XSSFCell cell = null;  
        for (int i = 0; i < titles.length; i++)  
        {  
            cell = headRow.createCell(i);  
            cell.setCellStyle(headStyle);  
            cell.setCellValue(titles[i]);  
        }  
        // ������������  
        if (orderList != null && orderList.size() > 0)  
        {  
            for (int j = 0; j < orderList.size(); j++)  
            {  
                XSSFRow bodyRow = sheet.createRow(j + 1);  
                OrderBean order = orderList.get(j);  
  
                cell = bodyRow.createCell(0);  
                cell.setCellStyle(bodyStyle);  
                cell.setCellValue(order.getUser().getUsername());  
  
                cell = bodyRow.createCell(1);  
                cell.setCellStyle(bodyStyle);  
                cell.setCellValue(order.getMoveArrang().getMove().getName());  
  
                cell = bodyRow.createCell(2);  
                //cell.setCellStyle(bodyStyle);
                XSSFCellStyle bodyStyle1 = workBook.createCellStyle();
                
                //��ʽ��ʱ��
                XSSFDataFormat format= workBook.createDataFormat();
                bodyStyle1.setDataFormat(format.getFormat("yyyy-MM-dd"));
                bodyStyle1.setBorderLeft(XSSFCellStyle.BORDER_THIN);
                bodyStyle1.setBorderBottom(XSSFCellStyle.BORDER_THIN);
                bodyStyle1.setBorderRight(XSSFCellStyle.BORDER_THIN);
                bodyStyle1.setBorderTop(XSSFCellStyle.BORDER_THIN);
               
                cell.setCellValue(order.getDate());
                cell.setCellStyle(bodyStyle1);
                
                cell = bodyRow.createCell(3);  
                cell.setCellStyle(bodyStyle);  
                cell.setCellValue(order.getTotal());
                
                cell = bodyRow.createCell(4);  
                cell.setCellStyle(bodyStyle);  
                cell.setCellValue(order.getState());
                
                cell = bodyRow.createCell(5);  
                cell.setCellStyle(bodyStyle);  
                cell.setCellValue(order.getTelephoto());
            }  
        }  
        try  
        {  
            workBook.write(outputStream);  
            outputStream.flush();  
            outputStream.close();  
        }  
        catch (IOException e)  
        {  
            e.printStackTrace();  
        }  
        finally  
        {  
            try  
            {  
                outputStream.close();  
            }  
            catch (IOException e)  
            {  
                e.printStackTrace();  
            }  
        }
	}

	
}
