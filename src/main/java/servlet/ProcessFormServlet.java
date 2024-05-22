package servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessFormServlet
 */
@WebServlet("/processForm")
public class ProcessFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        String[] newsletters = request.getParameterValues("newsletter");
        List<String> newsletterList = (newsletters != null) ? Arrays.asList(newsletters) : null;

        String requestMaterials = request.getParameter("requestMaterials");

        request.setAttribute("name", name);
        request.setAttribute("company", company);
        request.setAttribute("email", email);
        request.setAttribute("message", message);
        request.setAttribute("newsletterList", newsletterList);
        request.setAttribute("requestMaterials", requestMaterials);

        if ("Yes".equals(requestMaterials)) {
            request.getRequestDispatcher("/jsp/thankYou.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/jsp/result.jsp").forward(request, response);
        }
    }
}
