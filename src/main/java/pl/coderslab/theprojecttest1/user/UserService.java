package pl.coderslab.theprojecttest1.user;

public interface UserService {

    User findByUserName(String name);

    void saveUser(User user);
}
