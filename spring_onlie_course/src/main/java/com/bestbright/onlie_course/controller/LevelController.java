package com.bestbright.onlie_course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestbright.onlie_course.model.Level;
import com.bestbright.onlie_course.repository.CourseRepository;
import com.bestbright.onlie_course.repository.LevelRepository;
import com.bestbright.onlie_course.service.LevelService;

@Controller
@RequestMapping("/level")
public class LevelController {

	@Autowired
	private LevelRepository levelRepository;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private LevelService levelService;
	
	@GetMapping("/create_level")
	public String createLevel(Model model) {
		model.addAttribute("level", new Level());
		model.addAttribute("courseList",courseRepository.findAll());
		return "create_level";
	}
	@PostMapping("/save_level")
	public String saveLevel(@ModelAttribute("level")Level level,Model model) {
		
		levelRepository.save(level);
		
		model.addAttribute("levelList",levelRepository.findAll());
		
		return "redirect:/level/level_list";
	}
	
	@GetMapping("/level_list")
	public String showlevel(Model model) {
		model.addAttribute("levelList",levelRepository.findAll());
		return "level_list";
	}
	
	@GetMapping("/delete/{level_id}")
	public String deletelevel(@PathVariable Long level_id) {
		levelService.delete(level_id);
		return "redirect:/level/level_list";
	}
}
