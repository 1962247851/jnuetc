package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.Data;

import java.util.List;

/**
 * @author 19622
 */
public interface DataService {

    /**
     * 增加报修单
     *
     * @param data data
     * @return Data
     */
    Data insert(Data data);

    /**
     * 批量删除报修单
     *
     * @param idList idList
     */
    void deleteByIdList(List<Long> idList);

    /**
     * 修改报修单
     *
     * @param data data
     * @return Data
     */
    Data modify(Data data);

    /**
     * 查询所有报修单
     *
     * @return datas
     */
    List<Data> queryAll();

    /**
     * 根据idList查询报修单
     *
     * @param idList idList
     * @return dataList
     */
    List<Data> queryByIdList(List<Long> idList);

    /**
     * 根据Id查询报修单
     *
     * @param id Id
     * @return Data
     */
    Data queryById(Long id);
}
