package com.christmas.partytonight;
import org.springframework.web.servlet.ModelAndView;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource(name = "UserService")
	private UserService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.GET)
	public ModelAndView checkLogin(HttpServletRequest request, Model model) throws Exception {
		String userName = request.getParameter("userName");
		System.out.println("UserNamer : " + userName);
		String str[] = service.enterTicket(userName);
//		System.out.println("str : " + str);
		ModelAndView mv = new ModelAndView("jsonView");
		if (str == null) {
			mv.addObject("result", -1);
		} else {			
			mv.addObject("result", 1);
		}
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request, Model model) throws Exception {
		
		
		return "login";
	}
	
	@RequestMapping(value = "/card", method = RequestMethod.GET)
	public String card(HttpServletRequest request, Model model) throws Exception {
		String userName = request.getParameter("userName");
		String str[] = service.enterTicket(userName);
		model.addAttribute("name", str[0]);
		model.addAttribute("seatNumber", str[1]);
		return "card";
	}
	
	
}
