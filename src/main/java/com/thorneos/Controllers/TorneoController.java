package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Torneo;
import com.thorneos.services.TorneoService;

@Controller
@RequestMapping(value ="/torneo")
public class TorneoController {
	
	@Autowired
	TorneoService torneoService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list()
	{
		ModelAndView mav = new ModelAndView("torneo/list");
		List<Torneo> list = torneoService.lista();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add()
	{
		ModelAndView mav = new ModelAndView("torneo/form");
		Torneo t = new Torneo();
		mav.addObject("torneo", t);
		return mav;
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id)
	{
		ModelAndView mav = new ModelAndView("torneo/form");
		Torneo t = torneoService.getTorneoPorId(id);
		mav.addObject("torneo", t);
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("id") Torneo t)
	{
		torneoService.guardar_actualizar(t);
		return new ModelAndView("redirect:/torneo/list");
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id)
	{
		torneoService.eliminar(id);
		return new ModelAndView("redirect:/torneo/list");
	}
}
