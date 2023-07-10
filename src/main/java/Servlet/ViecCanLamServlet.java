package Servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.ViecCanLam;
import repository.ViecCanLamRepository;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViecCanLamServlet", value = {"/viec-can-lam/hien-thi"})
public class ViecCanLamServlet extends HttpServlet {
    private ViecCanLamRepository viecCanLamRepository = new ViecCanLamRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ViecCanLam> viecCanLamList = viecCanLamRepository.getAll();
        request.setAttribute("viecCanLamList",viecCanLamList);
        request.getRequestDispatcher("/view/ViecCanLam/ViecCanLam.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
