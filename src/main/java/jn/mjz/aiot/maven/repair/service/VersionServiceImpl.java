package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.dao.VersionRepository;
import jn.mjz.aiot.maven.repair.po.Version;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 19622
 */
@Service
public class VersionServiceImpl implements VersionService {

    private final VersionRepository versionRepository;

    public VersionServiceImpl(VersionRepository versionRepository) {
        this.versionRepository = versionRepository;
    }

    @Override
    public List<Version> queryAll() {
        return versionRepository.findAll();
    }

    @Override
    public Version insert(Version version) {
        return versionRepository.saveAndFlush(version);
    }
}
