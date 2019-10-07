package com.thorneos.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thorneos.entidades.Disciplina;
import com.thorneos.services.DisciplinaService;

@Controller
@RequestMapping(value = "/disciplina")
public class DisciplinaController {
	
	@Autowired
	DisciplinaService disService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("/disciplina/list");
		List<Disciplina> list = disService.listar();
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("disciplina/form");
		Disciplina dis = disService.obtenerPorId(id);
		mav.addObject("disciplina", dis);
		return mav;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav = new ModelAndView("disciplina/form");
		Disciplina dis = new Disciplina();
		mav.addObject("disciplina", dis);
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("disciplina") Disciplina dis) {
		disService.guardar_actualizar(dis);
		return new ModelAndView("redirect:/disciplina/list");
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		disService.eliminar(id);
		return new ModelAndView("redirect:/disciplina/list");
	}
}
