<%@page import="com.alfasoft.entita.BustaPaga"%>
<%@page import="com.alfasoft.servizi.GestioneServizi"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%   
    	GestioneServizi gs = new GestioneServizi();
    	ServletContext context = request.getSession().getServletContext();  
		String pathJasper = context.getRealPath("/jasper/busta.jasper");
		
		
    	//parametri
    	String nome = request.getParameter("nome");
    	String cognome = request.getParameter("cognome");
    	Double importo = Double.parseDouble(request.getParameter("importo"));
    	
    	SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
    	Date data = sdf.parse(request.getParameter("data"));
    	
    	BustaPaga bp1 = new BustaPaga(nome,cognome,importo,data);
    	boolean res = gs.creaPdf(bp1, pathJasper);
    	
     	if (res) {
 			response.sendRedirect("registraBustaPaga.jsp");
 		}else {
 			response.sendRedirect("errorBustaPaga.jsp");
 		}
    %>