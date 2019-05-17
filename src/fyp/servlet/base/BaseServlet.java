package fyp.servlet.base;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.lang.reflect.Method;




/**
 * ͨ�õ�servlet
 */
public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1.��ȡ��������
			String mName = request.getParameter("method");
			
			//1.1�ж� �����Ƿ�Ϊ��  ��Ϊ��,ִ��Ĭ�ϵķ���
			if(mName == null || mName.trim().length()==0){
				mName = "index";
			}
			
			//2.��ȡ��������
			Method method = this.getClass().getMethod(mName, HttpServletRequest.class,HttpServletResponse.class);
			
			//3.�÷���ִ��,���ܷ���ֵ
			String path=(String) method.invoke(this, request,response);
			
			//4.�жϷ���ֵ�Ƿ�Ϊ�� ����Ϊ��ͳһ��������ת��
			if(path != null){
				request.getRequestDispatcher(path).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	
	public String index(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println("��,��Ҫ����");
		return null;
	}
}
