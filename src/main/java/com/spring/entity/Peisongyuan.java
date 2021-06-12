package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "peisongyuan")
public class Peisongyuan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "gonghao")
    private String gonghao;
    @Column(name = "mima")
    private String mima;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "xingbie")
    private String xingbie;
    @Column(name = "zhaopian")
    private String zhaopian;
    @Column(name = "nianling")
    private String nianling;
    @Column(name = "peisongyuantiwen")
    private Double peisongyuantiwen;
    @Column(name = "zhuangtai")
    private String zhuangtai;
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "beizhu")
    private String beizhu;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getTiwenjianceCount()
    {
        return Query.make("tiwenjiance").where("peisongyuanid" , id).count();
    }


    public String getGonghao() {
        return gonghao;
    }
    public void setGonghao(String gonghao) {
        this.gonghao = gonghao == null ? "" : gonghao.trim();
    }

    public String getMima() {
        return mima;
    }
    public void setMima(String mima) {
        this.mima = mima == null ? "" : mima.trim();
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

    public String getZhaopian() {
        return zhaopian;
    }
    public void setZhaopian(String zhaopian) {
        this.zhaopian = zhaopian == null ? "" : zhaopian.trim();
    }

    public String getNianling() {
        return nianling;
    }
    public void setNianling(String nianling) {
        this.nianling = nianling == null ? "" : nianling.trim();
    }

    public Double getPeisongyuantiwen() {
        return peisongyuantiwen;
    }
    public void setPeisongyuantiwen(Double peisongyuantiwen) {
        this.peisongyuantiwen = peisongyuantiwen == null ? 0.0f : peisongyuantiwen;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getLianxidianhua() {
        return lianxidianhua;
    }
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua == null ? "" : lianxidianhua.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
