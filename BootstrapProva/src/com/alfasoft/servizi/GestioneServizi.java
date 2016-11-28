package com.alfasoft.servizi;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.alfasoft.entita.BustaPaga;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;


public class GestioneServizi {
	static final Logger log = Logger.getLogger(GestioneServizi.class); //LogManager.getLogger(GestioneServizi.class);
	
	public boolean creaPdf(BustaPaga bp, String path) {
		log.info("entrato");
		
		boolean res = false;
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		
		int anno = cal.get(Calendar.YEAR);
		int mese = cal.get(Calendar.MONTH)+1;
		int giorno = cal.get(Calendar.DAY_OF_MONTH);
		log.info("Anno: " + anno +" - Mese: " + mese +" - Giorno: "+ giorno);
		
		String nomeFile = "ElencoBustaPaga_"+anno+"-"+mese+"-"+giorno+".pdf";
		String percorso  = "C:\\Users\\corso\\Desktop\\pdfJersey\\";
		String fileFinale = percorso + nomeFile;
		
		try {
	           Map<String, Object> parameters = new HashMap<String, Object>();
	                   
        	   parameters.put("nome", bp.getNome());
        	   parameters.put("cognome", bp.getCognome());
        	   parameters.put("importo", bp.getImporto());
        	   parameters.put("data", bp.getData());
        	   
        	   JasperPrint jasperPrint = JasperFillManager.fillReport(path, parameters, new JREmptyDataSource());
	
	           OutputStream outputStream = new FileOutputStream(new File(fileFinale));

	           JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
	
	           System.out.println("File e' stato creato");
	           
	           res = true;
	       } catch (JRException ex) {
	           ex.printStackTrace();
	       } catch (FileNotFoundException ex) {
	           ex.printStackTrace();
	       }
		
		return res;
	}
}
