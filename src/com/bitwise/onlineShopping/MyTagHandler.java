package com.bitwise.onlineShopping;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.catalina.connector.Request;

public class MyTagHandler extends TagSupport{

	String uid;
	Item item;

	public void setItem(Item item) {
		this.item = item;
	}

	public int doStartTag() throws JspException {

		HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();

		uid = (String) request.getSession().getAttribute("name");
		HashMap<String, Item> map = new HashMap<>();
		map.put(uid, item);

		 for(Map.Entry m: map.entrySet() ){  
	           System.out.println(m.getKey()+","+m.getValue());  
	        }
		
		return 1;

	}
}
