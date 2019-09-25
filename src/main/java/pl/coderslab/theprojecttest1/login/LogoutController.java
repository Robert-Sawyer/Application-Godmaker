package pl.coderslab.theprojecttest1.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LogoutController {

    @GetMapping("/logout")
    public String logoutUserGet() {
        return "admin/logout";
    }

}
