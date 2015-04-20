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
 *  1�����Ƚ���write()��print()����������
  (1)��write()����֧������ַ��������ݣ��ַ����ַ����顢�ַ�����
  (2)��print()�����Խ��������ͣ�����Object��������ͨ��Ĭ�ϱ���ת����bytes�ֽ���ʽ����Щ�ֽڶ�ͨ��write(int c)���������
 * 
 * */
