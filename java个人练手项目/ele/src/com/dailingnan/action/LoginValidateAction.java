package com.dailingnan.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LoginValidateAction extends ActionSupport {
private String checkCode;
    
    public String getCheckCode()
    {
        return checkCode;
    }

    public void setCheckCode(String checkCode)
    {
        this.checkCode = checkCode;
    }

    public String execute() throws Exception
    {
        return "success";
    }
    
    @Override
    public void validate()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        
        String checkCode2 = (String)session.getAttribute("checkCode");
        
        if(!checkCode.equals(checkCode2))
        {
            this.addActionError("输入的验证码不正确，请重新输入！");
        }
    }
}
