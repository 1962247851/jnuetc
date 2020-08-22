package jn.mjz.aiot.maven.repair.po;

import jn.mjz.aiot.maven.repair.util.GsonUtil;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * @author 19622
 */
@Entity
@Table(name = "t_data")
public class Data {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "t_data_hibernate_seq")
    @TableGenerator(name = "t_data_hibernate_seq",
            allocationSize = 1,//自动增长，设置为1
            pkColumnName = "sequence_name", //表里用来保存主键名字的字段
            valueColumnName = "sequence_next_hi_value",//表里用来保存主键值的字段
            pkColumnValue = "data_id"//表里名字字段对应的值
    )
    private Long id;
    @Column(unique = true)
    private String uuid;
    @Convert(converter = TimestampLongConverter.class)
    private Long date;
    private Integer state;
    private String name;
    private String college;
    private String grade;
    private String tel;
    private String qq;
    private String local;
    private Integer district;
    private String model;
    @Size(max = 1000)
    private String message;
    private String repairer;
    @Convert(converter = TimestampLongConverter.class)
    private Long orderDate;
    @Convert(converter = TimestampLongConverter.class)
    private Long repairDate;
    private String mark;
    private String service;
    @Lob
    @Column(columnDefinition = "TEXT")
    private String repairMessage;
    private String photo;
    /**
     * mappedBy="dataUuid" Data表中的data_uuid属性
     * 1、FetchType.LAZY：懒加载，加载一个实体时，定义懒加载的属性不会马上从数据库中加载。
     * 2、FetchType.EAGER：急加载，加载一个实体时，定义急加载的属性会立即从数据库中加载。
     * cascade = CascadeType.ALL ALL 里包括更新，删除
     */
    @OneToMany(mappedBy = "dataId", cascade = CascadeType.ALL)
    private List<DataChangeLog> dataChangeLogs = new ArrayList<>();

    @Override
    public String toString() {
        return GsonUtil.getInstance().toJson(this);
//        @JsonIgnore
//        ObjectMapper objectMapper = new ObjectMapper();
//        try {
//            return objectMapper.writeValueAsString(Data.this);
//        } catch (JsonProcessingException e) {
//            e.printStackTrace();
//            return "{}";
//        }
//        Gson gson = new GsonBuilder().addSerializationExclusionStrategy(new ExclusionStrategy() {
//            @Override
//            public boolean shouldSkipField(FieldAttributes f) {
//                return "dataChangeLogs".equals(f.getName());
//            }
//
//            @Override
//            public boolean shouldSkipClass(Class<?> clazz) {
//                return false;
//            }
//        }).create();
//        return gson.toJson(this);
    }

    public Data() {
        this.uuid = UUID.randomUUID().toString();
        this.date = System.currentTimeMillis();
        this.orderDate = System.currentTimeMillis();
        this.repairDate = System.currentTimeMillis();
        this.mark = "小白";
        this.service = "系统问题";
        this.repairer = "";
        this.repairMessage = "";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Long getDate() {
        return date;
    }

    public void setDate(Long date) {
        this.date = date;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Integer getDistrict() {
        return district;
    }

    public void setDistrict(Integer district) {
        this.district = district;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getRepairer() {
        return repairer;
    }

    public void setRepairer(String repairer) {
        this.repairer = repairer;
    }

    public Long getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Long orderDate) {
        this.orderDate = orderDate;
    }

    public Long getRepairDate() {
        return repairDate;
    }

    public void setRepairDate(Long repairDate) {
        this.repairDate = repairDate;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getRepairMessage() {
        return repairMessage;
    }

    public void setRepairMessage(String repairMessage) {
        this.repairMessage = repairMessage;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public List<DataChangeLog> getDataChangeLogs() {
        return dataChangeLogs;
    }

    public void setDataChangeLogs(List<DataChangeLog> dataChangeLogs) {
        this.dataChangeLogs = dataChangeLogs;
    }

    /**
     * 获得两个报修单的不同之处，报修单三个状态都可能有
     *
     * @param newData 新报修单
     * @param oldData 旧报修单
     * @return 字符串
     */
    public static String differentBetween(Data newData, Data oldData) {
        StringBuilder stringBuilder = new StringBuilder();
        if (!oldData.getName().equals(newData.getName())) {
            stringBuilder.append("报修人从").append(oldData.getName()).append("改为").append(newData.getName());
        }
        if (!oldData.getGrade().equals(newData.getGrade())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("年级从").append(oldData.getGrade()).append("改为").append(newData.getGrade());
        }
        if (!oldData.getCollege().equals(newData.getCollege())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("学院从").append(oldData.getCollege()).append("改为").append(newData.getCollege());
        }
        if (!oldData.getLocal().equals(newData.getLocal())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("园区从").append(oldData.getLocal()).append("改为").append(newData.getLocal());
        }
        if (!oldData.getTel().equals(newData.getTel())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("电话从").append(oldData.getTel()).append("改为").append(newData.getTel());
        }
        if (!oldData.getQq().equals(newData.getQq())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("QQ从").append(oldData.getQq()).append("改为").append(newData.getQq());
        }
        if (!oldData.getModel().equals(newData.getModel())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("设备型号从").append(oldData.getModel()).append("改为").append(newData.getModel());
        }
        if (!oldData.getMessage().equals(newData.getMessage())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("故障详情从").append(oldData.getMessage()).append("改为").append(newData.getMessage());
        }
        if (!oldData.getRepairer().equals(newData.getRepairer())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("维修人从").append(oldData.getRepairer()).append("改为").append(newData.getRepairer());
        }
        if (!oldData.getService().equals(newData.getService())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("服务内容从").append(oldData.getService()).append("改为").append(newData.getService());
        }
        if (!oldData.getRepairMessage().equals(newData.getRepairMessage())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("故障描述及解决过程从").append(oldData.getRepairMessage()).append("改为").append(newData.getRepairMessage());
        }
        if (!oldData.getMark().equals(newData.getMark())) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("用户电脑水平评估从").append(oldData.getMark()).append("改为").append(newData.getMark());
        }
        return stringBuilder.toString();
    }
}
