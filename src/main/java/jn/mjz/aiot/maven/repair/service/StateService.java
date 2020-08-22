package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.State;

/**
 * @author 19622
 */
public interface StateService {

    /**
     * 检查某个服务是否可用
     *
     * @param type 服务类型
     * @return 是否可用
     */
    Boolean checkService(String type);

    /**
     * 改变某个服务状态
     *
     * @param type      服务类型
     * @param available 是否可用
     * @return State
     */
    State changeState(String type, Boolean available);
}
