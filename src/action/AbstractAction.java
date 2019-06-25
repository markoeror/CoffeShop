package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public abstract class AbstractAction {
	public abstract String execute(HttpServletRequest request) throws IOException, ServletException;
}
