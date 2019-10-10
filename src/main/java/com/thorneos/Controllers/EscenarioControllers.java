package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Escenario;
import com.thorneos.services.EscenarioService;

@Controller
@RequestMapping(value = "/escenario")
public class EscenarioControllers {
	
	@Autowired
	EscenarioService escenarioService;
	
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav= new ModelAndView("escenario/list");
		
		List<Escenario>list=escenarioService.listar();
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value="/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView mav= new ModelAndView("escenario/form");
		Escenario e= escenarioService.getEscenarioPorId(id);
		
		mav.addObject("escenario", e);
		return mav;
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav= new ModelAndView("escenario/form");
		Escenario e= new Escenario();
		
		mav.addObject("escenario", e);
		return mav;
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("escenario") Escenario e) {
		escenarioService.guardarActualizar(e);
		
		return new ModelAndView("redirect:/escenario/list");
		
		
	}
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete (@ModelAttribute("id") int id) {
		escenarioService.eliminar(id);
		
		return new ModelAndView("redirect:/escenario/list");
	}


}
