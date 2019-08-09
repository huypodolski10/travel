package com.daoxuanson.controller;

import com.daoxuanson.entity.Role;
import com.daoxuanson.entity.User;
import com.daoxuanson.model.request.Register;
import com.daoxuanson.service.RoleService;
import com.daoxuanson.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private RoleService roleService;
    @Autowired
    private UserService userService;

    @GetMapping("/admin/home")
    public ModelAndView home() {

        ModelAndView mav = new ModelAndView("admin");

        return mav;
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String homePost(@ModelAttribute(name = "register") Register register) {
        String targerUrl = "";
        User user = userService.findUserByUserNameAndPassword(register.getUsername(), register.getPassword());
        for (Role role : user.getRoles()) {
            if ("ADMIN".equals(role.getName())) {
                targerUrl = "redirect:/admin/home";
                break;
            } else if ("USER".equals(role.getName())) {
                targerUrl = "redirect:/web";
                break;
            }
        }

        return targerUrl;
    }


    @GetMapping("/web")
    public ModelAndView web() {
        ModelAndView mav = new ModelAndView("web");

        return mav;
    }

    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

//    @GetMapping("/logout")
//    public String logout(HttpServletRequest request, HttpServletResponse response) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        if (authentication != null) {
//            new SecurityContextLogoutHandler().logout(request, response, authentication);
//        }
//
//        return "redirect:/login";
//    }

//    @GetMapping(value = "/accessDenied")
//    public String accessDenied(ModelMap model) {
//        model.addAttribute("message", "your aren't permission this url");
//
//        return "redirect:/login";
//    }
}
