package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Deportista;
import com.thorneos.services.DeportistaService;

@Controller
@RequestMapping(value = "/deportista")
public class DeportistaController {
	
	@Autowired
	DeportistaService deportistaService;
	
	@RequestMapping(value = "/list", method =  RequestMethod.GET)
	public ModelAndView list()
	{
		ModelAndView mav = new ModelAndView("deportista/list");
		List<Deportista> list = deportistaService.lista();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id)
	{
		ModelAndView mav = new ModelAndView("deportista/form");
		Deportista d = deportistaService.getDeportistaPorId(id);
		mav.addObject("deportista", d);
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("deportista") Deportista d)
	{
		deportistaService.guardar_actualizar(d);
		return new ModelAndView("redirect:/deportista/list");
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@ModelAttribute("id") int id)
	{
		deportistaService.eliminar(id);
		return new ModelAndView("redirect:/deportista/list");
	}
}
