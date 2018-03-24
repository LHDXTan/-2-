package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IBaseDao;
import dao.BaseDaoImpl;

public class TestServlet extends HttpServlet {

	public void destroy() {
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String reqType=  request.getParameter("reqType");
		
		if(reqType.equals("checkuser")){
			checkuser(request, response);
		}else if(reqType.equals("changePro")){
			changePro(request, response);
		}
	}

	public void init() throws ServletException {
	}

	public void checkuser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		try{
			PrintWriter out = response.getWriter();
			String uname = request.getParameter("uname");
			System.out.println(uname);
			IBaseDao dao = new BaseDaoImpl();
			boolean b = dao.checkuser(uname);
			if(b){
				out.println("当前用户名已经存在");
			}else{
				out.println("可以注册");
			}
			out.flush();
			out.close();
		}catch(Exception e){
			
		}
	}
	public void changePro(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		PrintWriter out = response.getWriter();
		String proNo = request.getParameter("proNo");
		IBaseDao dao = new BaseDaoImpl();
		List list = dao.getAllCity(proNo);
		StringBuffer sb = new StringBuffer();
		out.println(sb.toString());
		out.flush();
		out.close();
	}
}
