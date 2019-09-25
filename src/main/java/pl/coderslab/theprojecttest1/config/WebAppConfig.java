package pl.coderslab.theprojecttest1.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        //registry.addViewController("/login").setViewName("admin/login");
        //ta metoda jest nadmiarowa chyba bo /login i tak przekierowuje do admin/login
        registry.addViewController("/403").setViewName("admin/403");//albo może też byc akcja
    }
}