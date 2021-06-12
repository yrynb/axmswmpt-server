package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "dingdanqianshou")
public class Dingdanqianshou implements Serializable {
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
    @Column(name = "peisongpingji")
    private String peisongpingji;
    @Column(name = "pingjia")
    private String pingjia;
    @Column(name = "pingjiaren")
    private String pingjiaren;
    private Integer dingdanxinxiid;

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

    public String getPeisongpingji() {
        return peisongpingji;
    }
    public void setPeisongpingji(String peisongpingji) {
        this.peisongpingji = peisongpingji == null ? "" : peisongpingji.trim();
    }

    public String getPingjia() {
        return pingjia;
    }
    public void setPingjia(String pingjia) {
        this.pingjia = pingjia == null ? "" : pingjia.trim();
    }

    public String getPingjiaren() {
        return pingjiaren;
    }
    public void setPingjiaren(String pingjiaren) {
        this.pingjiaren = pingjiaren == null ? "" : pingjiaren.trim();
    }
    public Integer getDingdanxinxiid() {
        return dingdanxinxiid;
    }
    public void setDingdanxinxiid(Integer dingdanxinxiid) {
        this.dingdanxinxiid = dingdanxinxiid == null ? 0 : dingdanxinxiid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
