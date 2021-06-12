package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "tiwenjiance")
public class Tiwenjiance implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "gonghao")
    private String gonghao;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "xingbie")
    private String xingbie;
    @Column(name = "nianling")
    private String nianling;
    @Column(name = "jiancetiwen")
    private Double jiancetiwen;
    @Column(name = "zhuangtai")
    private String zhuangtai;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "jianceren")
    private String jianceren;
    private Integer peisongyuanid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getGonghao() {
        return gonghao;
    }
    public void setGonghao(String gonghao) {
        this.gonghao = gonghao == null ? "" : gonghao.trim();
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getXingbie() {
        return xingbie;
    }
    public void setXingbie(String xingbie) {
        this.xingbie = xingbie == null ? "" : xingbie.trim();
    }

    public String getNianling() {
        return nianling;
    }
    public void setNianling(String nianling) {
        this.nianling = nianling == null ? "" : nianling.trim();
    }

    public Double getJiancetiwen() {
        return jiancetiwen;
    }
    public void setJiancetiwen(Double jiancetiwen) {
        this.jiancetiwen = jiancetiwen == null ? 0.0f : jiancetiwen;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getJianceren() {
        return jianceren;
    }
    public void setJianceren(String jianceren) {
        this.jianceren = jianceren == null ? "" : jianceren.trim();
    }
    public Integer getPeisongyuanid() {
        return peisongyuanid;
    }
    public void setPeisongyuanid(Integer peisongyuanid) {
        this.peisongyuanid = peisongyuanid == null ? 0 : peisongyuanid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
