package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Persona;
import com.thorneos.services.PersonaService;

@Controller
@RequestMapping(value = "/persona")
public class PersonaController {
	
	@Autowired
	PersonaService perService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("persona/list");
		List<Persona> list = perService.listar();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value = "/update{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		Persona per = perService.obtenerPorId(id);
		mav.addObject("persona", per);
		return mav;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav = new ModelAndView("Persona/form");
		Persona per = new Persona();
		mav.addObject("persona",per);
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("persona") Persona per) {
		perService.guardar_actualizar(per);
		return new ModelAndView("redirect:/Persona/list");
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		perService.eliminar(id);
		return new ModelAndView("redirect:/Persona/list");
	}
}
