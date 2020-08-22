package jn.mjz.aiot.maven.repair.po;

import jn.mjz.aiot.maven.repair.util.GsonUtil;

import javax.persistence.*;

@Entity
@Table(name = "t_mingju")
public class MingJu {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_mingju_hibernate_seq")
    @TableGenerator(name = "t_mingju_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "mingju_id"//表里名字字段对应的值
    )
    private Long id;
    private String author;
    private String shiName;
    private String content;
    private String topic;
    private String type;

    @Override
    public String toString() {
        return GsonUtil.getInstance().toJson(this);
    }

    public MingJu() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getShiName() {
        return shiName;
    }

    public void setShiName(String shiName) {
        this.shiName = shiName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
