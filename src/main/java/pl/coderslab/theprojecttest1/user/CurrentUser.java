package pl.coderslab.theprojecttest1.user;

import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;

public class CurrentUser extends org.springframework.security.core.userdetails.User {
    private final pl.coderslab.theprojecttest1.user.User user;
    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       pl.coderslab.theprojecttest1.user.User user) {
        super(username, password, authorities);
        this.user = user;
    }
    public pl.coderslab.theprojecttest1.user.User getUser() {return user;}
}
