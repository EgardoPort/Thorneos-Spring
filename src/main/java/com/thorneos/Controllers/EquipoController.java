package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Equipo;
import com.thorneos.services.EquipoService;

@Controller
@RequestMapping (value = "/equipo")
public class EquipoController {
	
	@Autowired
	EquipoService equipoService;
	
	@RequestMapping(value="/list", method =  RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav= new ModelAndView("equipo/list");
		
		List<Equipo>list=equipoService.listar();
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView update (@PathVariable("id") int id) {
		ModelAndView mav= new ModelAndView("equipo/form");
		Equipo eq= equipoService.getEquipoPorId(id);
		
		mav.addObject("equipo", eq);
		return mav;
	
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav= new ModelAndView("equipo/form");
		Equipo eq= new Equipo();
		
		mav.addObject("equipo", eq);
		return mav;
		
	}
	
	@RequestMapping(value ="/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("equipo") Equipo eq) {
		equipoService.guardarActualizar(eq);
		
		return new ModelAndView("redirect:/equipo/list");
	}
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete (@ModelAttribute("id") int id) {
		equipoService.eliminar(id);
		
		return new ModelAndView("redirect:/equipo/list");
		
	}
	

}
