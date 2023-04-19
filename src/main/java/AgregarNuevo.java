import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/AgregarNuevo"})
public class AgregarNuevo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tarea = request.getParameter("tarea");
        //Obtener la Sesion 
        HttpSession ses = request.getSession();
        // Crear una variable de tipo lista
        ArrayList<String> lista = (ArrayList<String>) ses.getAttribute("lista");
        lista.add(tarea);
        response.sendRedirect(request.getContextPath()+"/index.jsp");

    }

}
