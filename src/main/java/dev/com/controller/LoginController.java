package dev.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by dmytrok on 21.10.15.
 */
@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public String login(HttpSession session, Model uiModel) {
//        Object appError = session.getAttribute("application_error");
//        if (appError != null && appError instanceof String) {
//            session.removeAttribute("application_error");
//            uiModel.addAttribute("error", appError);
//        } else {
//            String error = (String) session.getAttribute("error");
//            if (error != null && !error.equals("")) {
//                session.removeAttribute("error");
//                uiModel.addAttribute("error", error);
//            }
//
//            String success = (String) session.getAttribute("success");
//            if (success != null && !success.equals("")) {
//                session.removeAttribute("success");
//                uiModel.addAttribute("success", success);
//            }
//        }
//        return "login";
//    }
//
//    @RequestMapping(value = {"/loginfail"}, method = RequestMethod.GET)
//    public String loginFail(Model uiModel) {
//        uiModel.addAttribute("error", "authorization_fail_login");
//        return "login";
//    }
}
