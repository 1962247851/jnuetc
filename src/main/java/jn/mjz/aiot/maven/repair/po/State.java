package jn.mjz.aiot.maven.repair.po;

import javax.persistence.*;

/**
 * @author 19622
 */
@Entity
@Table(name = "t_state")
public class State {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_state_hibernate_seq")
    @TableGenerator(name = "t_state_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "state_id"//表里名字字段对应的值
    )
    private Long id;

    @Column(unique = true)
    private String type;
    private Boolean available;

    public State() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}
