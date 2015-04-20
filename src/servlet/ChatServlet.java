package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import bean.SayingBean;
import bean.UserBean;

public class ChatServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static int success = 0;
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		Map map = new HashMap();
		map.put("content", request.getParameter("sayingContent"));
		JSONObject json = JSONObject.fromObject(map);
		try {
			System.out.println("sayingContent");
			System.out.println(request.getParameter("sayingContent"));
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
/*
 *  1、首先介绍write()和print()方法的区别：
  (1)、write()：仅支持输出字符类型数据，字符、字符数组、字符串等
  (2)、print()：可以将各种类型（包括Object）的数据通过默认编码转换成bytes字节形式，这些字节都通过write(int c)方法被输出
 * 
 * */
