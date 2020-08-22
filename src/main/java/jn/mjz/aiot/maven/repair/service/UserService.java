package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.User;

import java.util.List;

/**
 * @author 19622
 */
public interface UserService {

    /**
     * 根据学号查找User
     *
     * @param userSno 学号
     * @return 用户
     */
    User selectBySno(String userSno);

    /**
     * 根据南区北区查找用户
     *
     * @param group 分组
     * @return 用户
     */
    List<User> selectByGroup(Integer group);

    /**
     * 查找所有用户
     *
     * @return 用户
     */
    List<User> selectAll();

    /**
     * 注册
     *
     * @param user 用户
     * @return 带有注册时间和rootLevel的User
     */
    User insert(User user);

    /**
     * 修改用户
     *
     * @param user 用户
     * @return 修改后的用户
     */
    User update(User user);
}
