package pl.coderslab.theprojecttest1.home;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.theprojecttest1.user.CurrentUser;
import pl.coderslab.theprojecttest1.user.User;


@Controller
@RequestMapping("")
public class HomeController {

    @GetMapping(value = "/", produces = "text/html; charset=utf-8")
    public String welcomePage() {
        return "home";
    }

    @GetMapping("/forlogged")
    @ResponseBody
    public String forLogged() {
        return "Strona dla zalogowanych";
    }

    @GetMapping("/foradmin")
    @ResponseBody
    public String forAdmin() {
        return "Strona dla adminów";
    }

    @GetMapping("/checkX")
    @ResponseBody
    public String userInfo(@AuthenticationPrincipal UserDetails customUser) {
 //       log.info("customUsSer class {} " , customUser.getClass());
        return "You are logged as " + customUser;
    }

    @GetMapping("/check")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getUsername();
    }

}
