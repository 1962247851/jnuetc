package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.DataChangeLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 19622
 */
@Repository
public interface DataChangeLogRepository extends JpaRepository<DataChangeLog, Long> {
    /**
     * 根据dataId找修改日志
     *
     * @param dataId dataId
     * @return 修改日志
     */
    List<DataChangeLog> findByDataId(Long dataId);
}
