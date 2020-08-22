package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.DataChangeLog;

import java.util.List;

/**
 * @author 19622
 */
public interface DataChangeLogService {
    /**
     * 根据报修单id获取更改日志
     *
     * @param id 报修单Id
     * @return 报修单更改日志
     */
    List<DataChangeLog> queryById(Long id);

    /**
     * 新增修改日志
     *
     * @param dataChangeLog 修改日志
     * @return 修改日志
     */
    DataChangeLog insert(DataChangeLog dataChangeLog);
}
