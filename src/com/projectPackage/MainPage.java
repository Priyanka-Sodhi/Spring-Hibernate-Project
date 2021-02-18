package com.projectPackage;

import entities.Courses10th;
import entities.Courses11th;
import entities.Courses12th;
import entities.Courses9th;
import entities.Item;
import entities.Item10th;
import entities.Item11th;
import entities.Item12th;
import entities.Item9th;
import entities.User;
import model.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping(value = "/")
public class MainPage {
	private AccountModel accountModel = new AccountModel();
	private CourseModel9th courseModel9th = new CourseModel9th();
	private CourseModel10th courseModel10th = new CourseModel10th();
	private CourseModel11th courseModel11th = new CourseModel11th();
	private CourseModel12th courseModel12th = new CourseModel12th();

	@GetMapping("/")
	public ModelAndView firstPage() {
		ModelAndView modelandview = new ModelAndView("firstPage");
		return modelandview;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap modelMap) {
		modelMap.put("use", new User());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "use") User use, ModelMap modelMap, HttpSession session) {
		if (accountModel.login(use.getUsername(), use.getPass()) != null) {
			session.setAttribute("username", use.getUsername());
			return "content";
		}
		if (use.getUsername().isEmpty() && use.getPass().isEmpty()) {
			session.setAttribute("login-failed", "Please enter the details first!");
			// modelMap.put("message","Please enter proper details!");
			return "login";
		}
		if (use.getUsername().isEmpty()) {
			session.setAttribute("login-failed", "Please enter username!");
			// modelMap.put("message","Please enter proper details!");
			return "login";
		}
		if (use.getPass().isEmpty()) {
			session.setAttribute("login-failed", "Please enter password!");
			// modelMap.put("message","Please enter proper details!");
			return "login";
		} else {
			session.setAttribute("login-failed", "Invalid Credentials!");
			// modelMap.put("message","Please enter proper details!");
			return "login";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		ModelAndView modelandview = new ModelAndView("register");
		return "register";
	}

	@RequestMapping(value = "/registerDetails", method = RequestMethod.POST)
	public RedirectView register(@ModelAttribute("use") User use, ModelMap modelMap, Model m, BindingResult result,
			SessionStatus status, RedirectAttributes redir) {
		boolean error = false;
		if (use.getUsername().isEmpty() && use.getEmail().isEmpty() && use.getPass().isEmpty()) {
			error = true;
			RedirectView redirectView = new RedirectView("/register", true);
			redir.addFlashAttribute("message", "Please enter details first!");
			return redirectView;
		}
		if (use.getUsername().isEmpty()) {
			error = true;
			RedirectView redirectView = new RedirectView("/register", true);
			redir.addFlashAttribute("message", "Please enter username!");
			return redirectView;
		}
		if (use.getEmail().isEmpty()) {
			// result.rejectValue("lastName", "error.lastName");
			error = true;
			RedirectView redirectView = new RedirectView("/register", true);
			redir.addFlashAttribute("message", "Please enter email!");
			return redirectView;
		}
		if (use.getPass().isEmpty()) {
			error = true;
			RedirectView redirectView = new RedirectView("/register", true);
			redir.addFlashAttribute("message", "Please enter password!");
			return redirectView;
		} else {
			HibernateUtil.addUser(use);
			status.setComplete();
			// modelMap.put("registerSuccess","Registeration Successful!");
			RedirectView redirectView = new RedirectView("/login", true);
			redir.addFlashAttribute("registerSuccess", "Registeration Successful!");
			return redirectView;
		}
	}

	@GetMapping("/content")
	public ModelAndView content(@ModelAttribute(value = "use") User use,
			@ModelAttribute(value = "courses9th") Courses9th courses9th,
			@ModelAttribute(value = "courses10th") Courses10th courses10th,
			@ModelAttribute(value = "courses11th") Courses11th courses11th,
			@ModelAttribute(value = "courses12th") Courses12th courses12thModel, Model m, ModelMap mp,
			HttpServletRequest req, HttpServletResponse res) throws IOException {
		String usern = (String) req.getSession().getAttribute("username");
		if (usern == null) {
			// res.sendRedirect("/MySpringHibernateProject/login");
			m.addAttribute("message", "Please login first!");
			ModelAndView modelandview = new ModelAndView("login");
			return modelandview;
		}
		Session session = null;
		session = HibernateUtil.getSessionFactory().openSession();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("username", usern));
		User myuser = (User) criteria.uniqueResult();
		m.addAttribute("user_logged", myuser);

		mp.put("listCourses9th", this.courseModel9th.findAll());
		mp.put("listCourses10th", this.courseModel10th.findAll());
		mp.put("listCourses11th", this.courseModel11th.findAll());
		mp.put("listCourses12th", this.courseModel12th.findAll());
		// System.out.println(this.courseModel9th.findAll());
		
		ModelAndView modelandview = new ModelAndView("content");
		return modelandview;
	}

	@GetMapping("/cart")
	public String cart() {
		return "cart";
	}

	@RequestMapping(value = "/booknow9th/courseno={courseid}", method = RequestMethod.GET)
	public String cart(@PathVariable(value = "courseid") int courseid, HttpSession session, ModelMap mp) {
		
		if (session.getAttribute("cart9") == null) {
			
			List<Item9th> cart9 = new ArrayList<Item9th>();
			cart9.add(new Item9th(this.courseModel9th.find(courseid), 1));
			session.setAttribute("cart9", cart9);

		} else {
			List<Item9th> cart9 = (List<Item9th>) session.getAttribute("cart9");
			int index = isExisting9th(courseid, session);
			if (index == -1) {
				cart9.add(new Item9th(this.courseModel9th.find(courseid), 1));
			} 
			session.setAttribute("cart9", cart9);
		}

		return "cart";
	}

	private int isExisting9th(int courseid, HttpSession session) {
		List<Item9th> cart9 = (List<Item9th>) session.getAttribute("cart9");
		for (int i = 0; i < cart9.size(); i++) {
			if (cart9.get(i).getCourses9th().getCourseid() == courseid) {
				return i;
			}
		}
		return -1;
	}

	@RequestMapping(value = "/booknow10th/courseno={courseid}", method = RequestMethod.GET)
	public String booknow10th(@PathVariable(value = "courseid") int courseid, HttpSession session) {

		if (session.getAttribute("cart10") == null) {
			List<Item10th> cart10 = new ArrayList<Item10th>();
			cart10.add(new Item10th(this.courseModel10th.find(courseid), 1));
			session.setAttribute("cart10", cart10);

		} else {
			List<Item10th> cart10 = (List<Item10th>) session.getAttribute("cart10");
			int index = isExisting10th(courseid, session);
			if (index == -1) {
				cart10.add(new Item10th(this.courseModel10th.find(courseid), 1));
			} 
			session.setAttribute("cart10", cart10);
		}

		return "cart";
	}

	private int isExisting10th(int courseid, HttpSession session) {
		List<Item10th> cart10 = (List<Item10th>) session.getAttribute("cart10");
		for (int i = 0; i < cart10.size(); i++) {
			if (cart10.get(i).getCourses10th().getCourseid() == courseid) {
				return i;
			}
		}
		return -1;
	}

	@RequestMapping(value = "/booknow11th/courseno={courseid}", method = RequestMethod.GET)
	public String booknow11th(@PathVariable(value = "courseid") int courseid, HttpSession session) {

		if (session.getAttribute("cart11") == null) {
			List<Item11th> cart11 = new ArrayList<Item11th>();
			cart11.add(new Item11th(this.courseModel11th.find(courseid), 1));
			session.setAttribute("cart11", cart11);

		} else {
			List<Item11th> cart11 = (List<Item11th>) session.getAttribute("cart11");
			int index = isExisting11th(courseid, session);
			if (index == -1) {
				cart11.add(new Item11th(this.courseModel11th.find(courseid), 1));
			} 
			session.setAttribute("cart11", cart11);
		}

		return "cart";
	}

	private int isExisting11th(int courseid, HttpSession session) {
		List<Item11th> cart11 = (List<Item11th>) session.getAttribute("cart11");
		for (int i = 0; i < cart11.size(); i++) {
			if (cart11.get(i).getCourses11th().getCourseid() == courseid) {
				return i;
			}
		}
		return -1;
	}

	@RequestMapping(value = "/booknow12th/courseno={courseid}", method = RequestMethod.GET)
	public String booknow12th(@PathVariable(value = "courseid") int courseid, HttpSession session) {

		if (session.getAttribute("cart12") == null) {
			List<Item12th> cart12 = new ArrayList<Item12th>();
			cart12.add(new Item12th(this.courseModel12th.find(courseid), 1));
			session.setAttribute("cart12", cart12);

		} else {
			List<Item12th> cart12 = (List<Item12th>) session.getAttribute("cart12");
			int index = isExisting12th(courseid, session);
			if (index == -1) {
				cart12.add(new Item12th(this.courseModel12th.find(courseid), 1));
			} 
			session.setAttribute("cart12", cart12);
		}

		return "cart";
	}

	private int isExisting12th(int courseid, HttpSession session) {
		List<Item12th> cart12 = (List<Item12th>) session.getAttribute("cart12");
		for (int i = 0; i < cart12.size(); i++) {
			if (cart12.get(i).getCourses12th().getCourseid() == courseid) {
				return i;
			}
		}
		return -1;
	}

	@RequestMapping(value = "/delete9th/{courseid}", method = RequestMethod.GET)
	public String delete9th(@PathVariable(value = "courseid") int courseid, HttpSession session) {
		List<Item9th> cart9 = (List<Item9th>) session.getAttribute("cart9");
		int index = isExisting9th(courseid, session);
		cart9.remove(index);
		session.setAttribute("cart9", cart9);
		return "cart";
	}

	@RequestMapping(value = "/delete10th/{courseid}", method = RequestMethod.GET)
	public String delete10th(@PathVariable(value = "courseid") int courseid, HttpSession session) {
		List<Item10th> cart10 = (List<Item10th>) session.getAttribute("cart10");
		int index = isExisting10th(courseid, session);
		cart10.remove(index);
		session.setAttribute("cart10", cart10);
		return "cart";
	}

	@RequestMapping(value = "/delete11th/{courseid}", method = RequestMethod.GET)
	public String delete11th(@PathVariable(value = "courseid") int courseid, HttpSession session) {
		List<Item11th> cart11 = (List<Item11th>) session.getAttribute("cart11");
		int index = isExisting11th(courseid, session);
		cart11.remove(index);
		session.setAttribute("cart11", cart11);
		return "cart";
	}

	@RequestMapping(value = "/delete12th/{courseid}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "courseid") int courseid, HttpSession session) {
		List<Item12th> cart12 = (List<Item12th>) session.getAttribute("cart12");
		int index = isExisting12th(courseid, session);
		cart12.remove(index);
		session.setAttribute("cart12", cart12);
		return "cart";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public RedirectView logout(HttpServletRequest req, HttpServletResponse res, HttpSession session,
			RedirectAttributes redir) {
		session.setAttribute("logoutMsg", "Logout Successful!");
		req.getSession().invalidate();
		RedirectView redirectView = new RedirectView("/login", true);
		redir.addFlashAttribute("logoutMsg", "Logout Successful!");
		return redirectView;
	}

}
