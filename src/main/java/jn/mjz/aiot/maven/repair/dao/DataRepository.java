package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.Data;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * @author 19622
 */
@Repository
public interface DataRepository extends JpaRepository<Data, Long> {
    /**
     * 批量删除
     * Modifying 说明该操作是修改类型操作，删除或者修改
     * Transactional(rollbackFor = Exception.class) 因为默认是readOnly=true的，这里必须自己进行声明（真正的删除才会用）
     * Query(value = "update Data set deleteFlag = 1 where id in ?1") 删除的语句
     *
     * @param idList idList
     */
    @Transactional(rollbackOn = Exception.class)
    void deleteByIdIn(List<Long> idList);

    /**
     * 批量查询
     *
     * @param idList idList
     * @return dataList
     */
    List<Data> queryByIdIn(List<Long> idList);

}
