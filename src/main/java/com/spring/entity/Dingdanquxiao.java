package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "dingdanquxiao")
public class Dingdanquxiao implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "dingdanbianhao")
    private String dingdanbianhao;
    @Column(name = "dingdanxinxi")
    private String dingdanxinxi;
    @Column(name = "dingdanjine")
    private Double dingdanjine;
    @Column(name = "anpaipeisong")
    private Integer anpaipeisong;
    @Column(name = "gonghao")
    private String gonghao;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "peisongyuantiwen")
    private Double peisongyuantiwen;
    @Column(name = "waimaitupian")
    private String waimaitupian;
    @Column(name = "peisongzhaopian")
    private String peisongzhaopian;
    @Column(name = "quxiaoyuanyin")
    private String quxiaoyuanyin;
    @Column(name = "quxiaoren")
    private String quxiaoren;
    private Integer dingdanpeisongid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getDingdanbianhao() {
        return dingdanbianhao;
    }
    public void setDingdanbianhao(String dingdanbianhao) {
        this.dingdanbianhao = dingdanbianhao == null ? "" : dingdanbianhao.trim();
    }

    public String getDingdanxinxi() {
        return dingdanxinxi;
    }
    public void setDingdanxinxi(String dingdanxinxi) {
        this.dingdanxinxi = dingdanxinxi == null ? "" : dingdanxinxi.trim();
    }

    public Double getDingdanjine() {
        return dingdanjine;
    }
    public void setDingdanjine(Double dingdanjine) {
        this.dingdanjine = dingdanjine == null ? 0.0f : dingdanjine;
    }

    public Integer getAnpaipeisong() {
        return anpaipeisong;
    }
    public void setAnpaipeisong(Integer anpaipeisong) {
        this.anpaipeisong = anpaipeisong == null ? 0 : anpaipeisong;
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

    public Double getPeisongyuantiwen() {
        return peisongyuantiwen;
    }
    public void setPeisongyuantiwen(Double peisongyuantiwen) {
        this.peisongyuantiwen = peisongyuantiwen == null ? 0.0f : peisongyuantiwen;
    }

    public String getWaimaitupian() {
        return waimaitupian;
    }
    public void setWaimaitupian(String waimaitupian) {
        this.waimaitupian = waimaitupian == null ? "" : waimaitupian.trim();
    }

    public String getPeisongzhaopian() {
        return peisongzhaopian;
    }
    public void setPeisongzhaopian(String peisongzhaopian) {
        this.peisongzhaopian = peisongzhaopian == null ? "" : peisongzhaopian.trim();
    }

    public String getQuxiaoyuanyin() {
        return quxiaoyuanyin;
    }
    public void setQuxiaoyuanyin(String quxiaoyuanyin) {
        this.quxiaoyuanyin = quxiaoyuanyin == null ? "" : quxiaoyuanyin.trim();
    }

    public String getQuxiaoren() {
        return quxiaoren;
    }
    public void setQuxiaoren(String quxiaoren) {
        this.quxiaoren = quxiaoren == null ? "" : quxiaoren.trim();
    }
    public Integer getDingdanpeisongid() {
        return dingdanpeisongid;
    }
    public void setDingdanpeisongid(Integer dingdanpeisongid) {
        this.dingdanpeisongid = dingdanpeisongid == null ? 0 : dingdanpeisongid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
