package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.DataChangeLogRepository;
import jn.mjz.aiot.maven.repair.po.DataChangeLog;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 19622
 */
@Service
public class DataChangeLogServiceImpl implements DataChangeLogService {
    private final DataChangeLogRepository dataChangeLogRepository;

    public DataChangeLogServiceImpl(DataChangeLogRepository dataChangeLogRepository) {
        this.dataChangeLogRepository = dataChangeLogRepository;
    }

    @Override
    public List<DataChangeLog> queryById(Long id) {
        return dataChangeLogRepository.findByDataId(id);
    }

    @Override
    public DataChangeLog insert(DataChangeLog dataChangeLog) {
        return dataChangeLogRepository.save(dataChangeLog);
    }
}
