package jn.mjz.aiot.maven.repair.dao;

import jn.mjz.aiot.maven.repair.po.Version;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author 19622
 */
@Repository
public interface VersionRepository extends JpaRepository<Version,Long> {

}
