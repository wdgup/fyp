package fyp.servlet;


import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import fyp.Service.UserService;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		// 上传
		// request.getParameter("sname")
		try {
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (isMultipart) {// 判断前台的form是否有 mutipart属性
//				FileItemFactory factory = new DiskFileItemFactory();
				DiskFileItemFactory factory = new DiskFileItemFactory();

				ServletFileUpload upload = new ServletFileUpload(factory);

				//设置上传文件时 用到的临时文件的大小DiskFileItemFactory
				factory.setSizeThreshold(10240000);//设置临时的缓冲文件大小为10000kb
				factory.setRepository(new File("D:\\xsw\\uploadtemp"));//设置临时文件的目录
				//控制上传单个文件的大小  20000KB ServletFileUpload
				upload.setSizeMax(20480000);//字节B
				Thread.sleep(3000);


				System.out.println("1");

				// 通过parseRequest解析form中的所有请求字段，并保存到 items集合中（即前台传递的sno sname
				// spicture此时就保存在了items中）
				List<FileItem> items = upload.parseRequest(request);
				// 遍历items中的数据（item=sno sname spicture）
				Iterator<FileItem> iter = items.iterator();
				String sname = null;
				String sidentify = null;
				UserService userService=new UserService();
				HttpSession session =  request.getSession();// 获取session
				String phone=session.getAttribute("userid").toString();
				while (iter.hasNext()) {
					System.out.println("1");
					FileItem item = iter.next();
					String itemName = item.getFieldName();

					// 判断前台字段 是普通form表单字段，还是文件字段

					// request.getParameter() -- iter.getString()
					if (item.isFormField()) {
						if (itemName.equals("sname")) {// 根据name属性 判断item是sno sname 还是spicture?
							sname = item.getString("UTF-8");
						} else if (itemName.equals("sidentify")) {
							sidentify = item.getString("UTF-8");
						} else {
							System.out.println("null字段");
						}
					} else {// spicture 123
						// 文件 上传
						// 文件名 getFieldName是获取 普通表单字段的Name值
						// getName()是获取 文件名
						String fileName = item.getName();//a.txt   a.docx   a.png
						String ext = fileName.substring(  fileName.indexOf(".")+1 ) ;
						if(!(ext.equals("png") || ext.equals("gif") ||ext.equals("jpg"))) {
							System.out.println("图片类型有误！格式只能是 png gif  jpg");
							return ;//终止
						}
						// 获取文件内容 并上传
						// 定义文件路径：指定上传的位置(服务器路径)
						// 获取服务器路径D:\\study\\apache-tomcat-8.5.30\\wtpwebapps\\UpAndDown\\upload
						String path =request.getSession().getServletContext().getRealPath("upload") ;

						String newName=phone+"."+ext;
						File file = new File(path, newName);



						item.write(file);// 上传
						System.out.println(fileName + "上传成功！");

					}
				}

				userService.updateIdentify(phone, sname, sidentify);//身份证
				request.getRequestDispatcher("IndexServlet2").forward(request,response);
				//response.sendRedirect("identify_success.html");

			}

		}
		catch (FileUploadBase.SizeLimitExceededException e) {//SizeLimitExceededException是FileUploadException的一个子类
			System.out.println("上传文件大小超过限制！最大20KB");
		}
		catch (FileUploadException e)
		{
			e.printStackTrace();

		}

		// 解析请求
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return;
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
