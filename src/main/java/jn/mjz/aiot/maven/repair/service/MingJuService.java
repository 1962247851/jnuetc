package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.MingJu;

import java.util.List;

/**
 * @author 19622
 */
public interface MingJuService {
    /**
     * 增加
     *
     * @param mingJuList 名句列表
     */
    void insertAll(List<MingJu> mingJuList);

    /**
     * 获取随机名句
     *
     * @return MingJu
     */
    MingJu getRandomMingJu();

    /**
     * 根据主题和类别获取随机名句
     *
     * @param topic 主题
     * @param type  类型
     * @return MingJu
     */
    MingJu getRandomMingJuByTopicAndType(String topic, String type);
}
