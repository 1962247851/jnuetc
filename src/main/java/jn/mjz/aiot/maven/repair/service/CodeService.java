package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.Code;

/**
 * @author 19622
 */
public interface CodeService {

    /**
     * 增加邀请码
     *
     * @param code 邀请码
     * @return Code
     */
    Code insert(Integer code);

    /**
     * 删除邀请码
     *
     * @param code code
     */
    void delete(Integer code);

    /**
     * 查询邀请码
     *
     * @param code code
     * @return Code
     */
    Code query(Integer code);
}
