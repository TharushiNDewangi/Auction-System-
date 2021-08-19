

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.suplier;
import com.util.SupplierDBUtil;
import com.util.CreateDBConnection;

/**
 * Servlet implementation class SupplierLoginservlet
 */
@WebServlet("/SupplierLoginservlet")
public class SupplierLoginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierLoginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
	    String id = request.getParameter("supid");
	    try {
	    List<suplier>suDetails = SupplierDBUtil.validate(username, id);
	    //create connection jsp page
	    System.out.println("success1*********************************");
	    request.setAttribute("supdetils",suDetails);
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    System.out.println("animation*********************************");
	    RequestDispatcher dis = request.getRequestDispatcher("supAccount.jsp");
	    dis.forward(request, response);
	}	
	

}
