package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "shangpinxinxi")
public class Shangpinxinxi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "shangpinbianhao")
    private String shangpinbianhao;
    @Column(name = "fenlei")
    private String fenlei;
    @Column(name = "shangpinmingcheng")
    private String shangpinmingcheng;
    @Column(name = "tupian")
    private String tupian;
    @Column(name = "jiage")
    private Double jiage;
    @Column(name = "xiaoliang")
    private Integer xiaoliang;
    @Column(name = "shangpinxiangqing")
    private String shangpinxiangqing;

    @Column(name = "addtime")
    private String addtime;
    @Column(name = "chushi")
    private String chushi;
    @Column(name = "yuancailiao")
    private String yuancailiao;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getGouwucheCount()
    {
        return Query.make("gouwuche").where("shangpinxinxiid" , id).count();
    }


    public String getShangpinbianhao() {
        return shangpinbianhao;
    }
    public void setShangpinbianhao(String shangpinbianhao) {
        this.shangpinbianhao = shangpinbianhao == null ? "" : shangpinbianhao.trim();
    }

    public String getFenlei() {
        return fenlei;
    }
    public void setFenlei(String fenlei) {
        this.fenlei = fenlei == null ? "" : fenlei.trim();
    }

    public String getShangpinmingcheng() {
        return shangpinmingcheng;
    }
    public void setShangpinmingcheng(String shangpinmingcheng) {
        this.shangpinmingcheng = shangpinmingcheng == null ? "" : shangpinmingcheng.trim();
    }

    public String getTupian() {
        return tupian;
    }
    public void setTupian(String tupian) {
        this.tupian = tupian == null ? "" : tupian.trim();
    }

    public Double getJiage() {
        return jiage;
    }
    public void setJiage(Double jiage) {
        this.jiage = jiage == null ? 0.0f : jiage;
    }

    public Integer getXiaoliang() {
        return xiaoliang;
    }
    public void setXiaoliang(Integer xiaoliang) {
        this.xiaoliang = xiaoliang == null ? 0 : xiaoliang;
    }

    public String getShangpinxiangqing() {
        return shangpinxiangqing;
    }
    public void setShangpinxiangqing(String shangpinxiangqing) {
        this.shangpinxiangqing = shangpinxiangqing == null ? "" : shangpinxiangqing.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getChushi() {
        return chushi;
    }

    public void setChushi(String chushi) {
        this.chushi = chushi;
    }

    public String getYuancailiao() {
        return yuancailiao;
    }

    public void setYuancailiao(String yuancailiao) {
        this.yuancailiao = yuancailiao;
    }
}
