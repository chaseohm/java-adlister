import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="AdServlet", urlPatterns = "/ads")
public class AdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Ad> ads = DaoFactory.getAdsDao().all();

        // bind the quotes to the request object
        request.setAttribute("ads", ads);

        // send the response along w/ the data
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);

    }
}
