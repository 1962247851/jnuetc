package jn.mjz.aiot.maven.repair.po;

import jn.mjz.aiot.maven.repair.util.GsonUtil;

import javax.persistence.*;


/**
 * @author 19622
 */
@Entity
@Table(name = "t_user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_user_hibernate_seq")
    @TableGenerator(name = "t_user_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "user_id"//表里名字字段对应的值
    )
    private Long id;
    private String openId;
    private String formId;
    private String userName;
    private Integer sex;
    private String sno;
    private String password;
    private Integer rootLevel;
    private Integer whichGroup;
    @Convert(converter = TimestampLongConverter.class)
    private Long regDate;

    @Override
    public String toString() {
        return GsonUtil.getInstance().toJson(this);
    }

    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getFormId() {
        return formId;
    }

    public void setFormId(String formId) {
        this.formId = formId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getRootLevel() {
        return rootLevel;
    }

    public void setRootLevel(Integer rootLevel) {
        this.rootLevel = rootLevel;
    }

    public Integer getWhichGroup() {
        return whichGroup;
    }

    public void setWhichGroup(Integer whichGroup) {
        this.whichGroup = whichGroup;
    }

    public Long getRegDate() {
        return regDate;
    }

    public void setRegDate(Long regDate) {
        this.regDate = regDate;
    }
}
