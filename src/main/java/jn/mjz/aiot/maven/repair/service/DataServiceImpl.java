package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.DataRepository;
import jn.mjz.aiot.maven.repair.po.Data;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * @author 19622
 */
@Service
public class DataServiceImpl implements DataService {

    private final DataRepository dataRepository;

    public DataServiceImpl(DataRepository dataRepository) {
        this.dataRepository = dataRepository;
    }

    @Override
    public Data insert(Data data) {
        return dataRepository.save(data);
    }

    @Override
    public void deleteByIdList(List<Long> idList) {
        dataRepository.deleteByIdIn(idList);
    }

    @Override
    public Data modify(Data data) {
        return dataRepository.saveAndFlush(data);
    }

    @Override
    public List<Data> queryAll() {
        return dataRepository.findAll();
    }

    @Override
    public List<Data> queryByIdList(List<Long> idList) {
        return dataRepository.queryByIdIn(idList);
    }

    @Override
    public Data queryById(Long id) {
        Optional<Data> optional = dataRepository.findById(id);
        return optional.orElse(null);
    }
}
