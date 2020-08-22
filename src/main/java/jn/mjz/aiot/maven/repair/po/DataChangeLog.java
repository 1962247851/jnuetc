package jn.mjz.aiot.maven.repair.po;

import jn.mjz.aiot.maven.repair.util.GsonUtil;

import javax.persistence.*;

/**
 * @author 19622
 */
@Entity
@Table(name = "t_data_change_log")
public class DataChangeLog {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_data_change_log_hibernate_seq")
    @TableGenerator(name = "t_data_change_log_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "data_change_log_id"//表里名字字段对应的值
    )
    private Long id;
    @Lob
    @Column(columnDefinition = "TEXT")
    private String changeInfo;
    @Convert(converter = TimestampLongConverter.class)
    private Long date;
    private String name;
    /**
     * ManyToOne(optional = false) 表示data不能为空。删除dataChangeLog，不影响Data
     */
//    @ManyToOne(optional = false)
    private Long dataId;

    @Override
    public String toString() {
        return GsonUtil.getInstance().toJson(this);
//        Gson gson = new GsonBuilder().addSerializationExclusionStrategy(new ExclusionStrategy() {
//            @Override
//            public boolean shouldSkipField(FieldAttributes f) {
//                return "data".equals(f.getName());
//            }
//
//            @Override
//            public boolean shouldSkipClass(Class<?> clazz) {
//                return false;
//            }
//        }).create();
//        return gson.toJson(this);
    }

    public DataChangeLog() {
        this.date = System.currentTimeMillis();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getChangeInfo() {
        return changeInfo;
    }

    public void setChangeInfo(String changeInfo) {
        this.changeInfo = changeInfo;
    }

    public Long getDate() {
        return date;
    }

    public void setDate(Long date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getDataId() {
        return dataId;
    }

    public void setDataId(Long dataId) {
        this.dataId = dataId;
    }
}
