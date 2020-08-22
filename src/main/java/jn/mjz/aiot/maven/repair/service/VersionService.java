package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.po.Version;

import java.util.List;

/**
 * @author 19622
 */
public interface VersionService {

    /**
     * 查询所有更新记录
     *
     * @return versionList
     */
    List<Version> queryAll();

    /**
     * 新增
     *
     * @param version 新版本
     * @return version
     */
    Version insert(Version version);
}
