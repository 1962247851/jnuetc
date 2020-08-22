package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.Code;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author 19622
 */
@Repository
public interface CodeRepository extends JpaRepository<Code, Long> {
    /**
     * 查询邀请码
     *
     * @param code code
     * @return Code
     */
    Code findCodeByCode(Integer code);


    /**
     * 根据code删除Code
     *
     * @param code code
     */
    void deleteCodeByCode(Integer code);
}
