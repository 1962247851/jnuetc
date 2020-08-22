package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.MingJuRepository;
import jn.mjz.aiot.maven.repair.po.MingJu;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 19622
 */
@Service
public class MingJuServiceImpl implements MingJuService {

    private final MingJuRepository mingJuRepository;

    public MingJuServiceImpl(MingJuRepository mingJuRepository) {
        this.mingJuRepository = mingJuRepository;
    }

    @Override
    public void insertAll(List<MingJu> mingJuList) {
        mingJuRepository.saveAll(mingJuList);
    }

    @Override
    public MingJu getRandomMingJu() {
        long id = (long) (Math.random() * mingJuRepository.findAll().size() + 1);
        return mingJuRepository.getOne(id);
    }

    @Override
    public MingJu getRandomMingJuByTopicAndType(String topic, String type) {
        List<MingJu> mingJuList = mingJuRepository.findByTopicAndType(topic, type);
        if (mingJuList.isEmpty()) {
            return null;
        }
        int size = mingJuList.size();
        int index = (int) (Math.random() * size);
        return mingJuList.get(index);
    }


}
