package ro.netrom.summercamp.summercamp2017.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementService;

@Controller
@RequestMapping("/announcements")
public class AnnouncementController {
	
	static Log lOG = LogFactory.getLog(AnnouncementController.class.getName());

	@Autowired
    private AnnouncementService service;
	
	@RequestMapping( method = RequestMethod.GET)
    public String findAll(Model model) {
        model.addAttribute("announcements", service.findAll());
        model.addAttribute("categories", service.findCategories());
        model.addAttribute("newAnnouncement", new AnnouncementDTO());
        model.addAttribute("cAnnouncement", new AnnouncementDTO());
        return "index";
    }
    
    @RequestMapping(params = {"categ"}, method = RequestMethod.GET)
	public String filterByCategoryName(@RequestParam(name = "categ") String categoryName, Model model) {
        model.addAttribute("announcements", service.findAllForCategoryName(categoryName));
        model.addAttribute("categories", service.findCategories());
        return "index";
    }

}
