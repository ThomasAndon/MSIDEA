package jspServlet.servlet;

import jspServlet.DAO.CommodityDAO;
import jspServlet.DAO.impl.CommodityDAOImpl;
import jspServlet.vo.Commodity;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    @Override
    /**
     * 展示商品搜索结果
     * @author Zeyang Sun
     */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String string=req.getParameter("Search");
        String order=req.getParameter("Order");
        System.out.println(order);
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write("<a href=\"./index(welcome).jsp\">Back</a>");
        resp.getWriter().write("</br>");
        resp.getWriter().write("</br>");
        ArrayList<Commodity> AL =null;
        CommodityDAO dao= new CommodityDAOImpl();
        try {
            if(string.equals("SN")){
                AL=dao.FQCommodity(req.getParameter("SC"),order);
            }else
                if(string.equals("SLC")){
                    AL=dao.LargeclassSearch(req.getParameter("SC"),order);
                }else
                    if(string.equals("SSC")){
                        AL=dao.SmallclassSearch(req.getParameter("SC"),order);
                    }
            resp.getWriter().write("Total "+AL.size()+" result(s)");
            resp.getWriter().write("</br>");
            resp.getWriter().write("</br>");
            int i=0,j=1;
            for(Commodity commodity:AL){
                if(i==3){
                    i=0;
                    resp.getWriter().write("</br>");
                }
                resp.getWriter().write(j+". Name: "+commodity.getName()+"&emsp;");
                resp.getWriter().write("Price:"+commodity.getPrice()+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
                i++;j++;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        resp.getWriter().write("</br>");
        resp.getWriter().write("<a href=\"./index(welcome).jsp\">Back</a>");


    }
}
