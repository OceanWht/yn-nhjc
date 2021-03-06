package com.xl.ems.userservice.model;

public class EmsCompanyModel {
    private Integer id;

    private String uid;

    private String name;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }


    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof EmsCompanyModel){
          EmsCompanyModel model = (EmsCompanyModel) obj;
          //因为企业名字有可能改变,所以只要UID一样就认为是一个企业
          if (this.uid.equals(model.getUid())){
              return true;
          }
        }

        return false;
    }
}