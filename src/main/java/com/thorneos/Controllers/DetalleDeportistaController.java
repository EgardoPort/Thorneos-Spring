package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.DetalleDeportista;
import com.thorneos.services.DDeportistaService;

@Controller
@RequestMapping(value = "/detalledepor")

public class DetalleDeportistaController {
	
	@Autowired
	DDeportistaService ddService;
	
	@RequestMapping(name= "list", method = RequestMethod.GET)
	public ModelAndView lista(){
		ModelAndView mav = new ModelAndView("detalledepor/list");
		List<DetalleDeportista> list = ddService.listar();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(name = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView save(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("detalledepor/form");
		DetalleDeportista dd = ddService.getPorId(id);
		mav.addObject("detalledepor", dd);
		return mav;
	}
	
	@RequestMapping(name= "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav = new ModelAndView("detalledepor/form");
		DetalleDeportista dd = new DetalleDeportista();
		mav.addObject("detalledepor", dd);
		return mav;
	}
	
	@RequestMapping(name="/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("detalledepor") DetalleDeportista dd) {
		ddService.guardar_actualizar(dd);
		return new ModelAndView("redirect:/detalledepor/list");
	}
	
	@RequestMapping(name="/delete/{id}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		ddService.eliminar(id);
		return new ModelAndView("redirect:/detalledepor/list");
	}
}
