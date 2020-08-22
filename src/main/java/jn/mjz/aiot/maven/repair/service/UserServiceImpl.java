package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.UserRepository;
import jn.mjz.aiot.maven.repair.po.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 19622
 */
@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User selectBySno(String sno) {
        return userRepository.findUserBySno(sno);
    }

    @Override
    public List<User> selectByGroup(Integer group) {
        return userRepository.findUsersByWhichGroup(group);
    }

    @Override
    public List<User> selectAll() {
        return userRepository.findAll();
    }

    @Override
    public User insert(User user) {
        return userRepository.save(user);
    }

    @Override
    public User update(User user) {
        return userRepository.saveAndFlush(user);
    }
}
