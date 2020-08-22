package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.MingJu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 19622
 */
@Repository
public interface MingJuRepository extends JpaRepository<MingJu, Long> {

    /**
     * 根据topic和type查询名句
     *
     * @param topic 话题
     * @param type  类别
     * @return MingJuList
     */
    List<MingJu> findByTopicAndType(String topic, String type);
}
