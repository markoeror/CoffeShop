package aplicationControler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import action.AbstractAction;
import action.ActionFactory;
@MultipartConfig(maxFileSize = 1024*1024*10)
public class AplicationControler {

	private static AplicationControler instanca;

	private AplicationControler() {

	}

	public static AplicationControler getInstanca() {
		if (instanca == null) {
			instanca = new AplicationControler();
		}
		return instanca;
	}

	public String processRequest(String value, HttpServletRequest request) throws IOException, ServletException {
		
		AbstractAction action = ActionFactory.createAction(value);
		return action.execute(request);
	}
}
