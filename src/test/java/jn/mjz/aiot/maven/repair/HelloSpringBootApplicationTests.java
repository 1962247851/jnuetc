package jn.mjz.aiot.maven.repair;

import jn.mjz.aiot.maven.repair.po.Data;
import jn.mjz.aiot.maven.repair.po.DataChangeLog;
import jn.mjz.aiot.maven.repair.service.DataService;
import jn.mjz.aiot.maven.repair.util.GsonUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HelloSpringBootApplicationTests {

    @Autowired
    private DataService dataService;

    @Test
    public void contextLoads() {
        Data data = dataService.queryById(179L);
        List<DataChangeLog> dataChangeLogs = data.getDataChangeLogs();
        System.out.println(GsonUtil.getInstance().toJson(dataChangeLogs));
    }

}
