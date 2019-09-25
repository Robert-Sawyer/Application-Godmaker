package pl.coderslab.theprojecttest1.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.coderslab.theprojecttest1.user.SpringDataUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

//    @Override
//    public void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("user1").password("{noop}user123").roles("USER")
//                .and()
//                .withUser("admin1").password("{noop}admin123").roles("ADMIN");
//    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/forlogged").authenticated()
                .antMatchers("/foradmin").hasRole("ADMIN") //można dać więcej role'i
                .antMatchers("/leagues/**").hasRole("ADMIN")
                .antMatchers("/rounds/**").hasRole("ADMIN")
                .antMatchers("/matches/**").hasRole("ADMIN")
                .anyRequest().permitAll() //nadmiarowe ale ogólnie jeśli adres nie został opisany to daje mu globalny dostęp
                .and().formLogin()
                .loginPage("/login").defaultSuccessUrl("/")
                .and().logout().logoutSuccessUrl("/")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/403");
        //14 slajd - rozbudowanie
        //18 slajd można w konkretnym kontrolerze a nawet metodzie dodać zabezpieczenie i akcji kontrolera
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    }
}
