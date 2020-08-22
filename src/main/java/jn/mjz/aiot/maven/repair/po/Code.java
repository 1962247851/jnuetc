package jn.mjz.aiot.maven.repair.po;

import javax.persistence.*;

/**
 * @author 19622
 */
@Entity
@Table(name = "t_code")
public class Code {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_code_hibernate_seq")
    @TableGenerator(name = "t_code_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "code_id"//表里名字字段对应的值
    )
    private Long id;

    @Column(nullable = false, unique = true)
    private Integer code;

    public Code() {
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
