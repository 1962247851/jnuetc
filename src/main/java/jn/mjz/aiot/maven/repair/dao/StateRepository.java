package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.State;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author 19622
 */
@Repository
public interface StateRepository extends JpaRepository<State, Long> {

    /**
     * 根据服务类型查询服务
     *
     * @param type 服务类型
     * @return 服务
     */
    State findByType(String type);

}
