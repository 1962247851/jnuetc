package jn.mjz.aiot.maven.repair.po;

import jn.mjz.aiot.maven.repair.util.GsonUtil;

import javax.persistence.*;
import javax.validation.constraints.Size;

/**
 * @author 19622
 */
@Entity
@Table(name = "t_version")
public class Version {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_version_hibernate_seq")
    @TableGenerator(name = "t_version_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "version_id"//表里名字字段对应的值
    )
    private Long id;
    @Size(max = 1000)
    private String message;
    @Convert(converter = TimestampLongConverter.class)
    private Long date = System.currentTimeMillis();
    private String version = "";
    private String url = "";

    @Override
    public String toString() {
        return GsonUtil.getInstance().toJson(this);
    }

    public Version() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getDate() {
        return date;
    }

    public void setDate(Long date) {
        this.date = date;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
