package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 19622
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    /**
     * 根据sno查找单个User
     *
     * @param sno 学号
     * @return 用户
     */
    User findUserBySno(String sno);

    /**
     * 根据分组查找用户
     *
     * @param group 分组
     * @return 用户
     */
    List<User> findUsersByWhichGroup(Integer group);

}
