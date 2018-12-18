package tn.iset.govsolution.ui.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tn.iset.govsolution.dao.RegistrationDAO;
import tn.iset.govsolution.dao.RegistrationDAOImpl;
import tn.iset.govsolution.dao.UserDAO;
import tn.iset.govsolution.dao.UserDAOImpl;
import tn.iset.govsolution.entity.Inscription;

@Controller
@RequestMapping("/inscription")
public class InscriptionController {
	
	RegistrationDAO regDAO=new RegistrationDAOImpl();
	
	@RequestMapping(value="/doMngInscription",method=RequestMethod.GET)
	public ModelAndView logOut(HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/inscriptionModule/inscriptionMng");
		
		List<Inscription> inscriptions=regDAO.getInscriptions();
		mv.addObject("inscriptions",inscriptions);
		return mv;
		
	}


}
