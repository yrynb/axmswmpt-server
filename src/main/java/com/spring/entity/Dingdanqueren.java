package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "dingdanqueren")
public class Dingdanqueren implements Serializable {
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
    @Column(name = "guketiwen")
    private Double guketiwen;
    @Column(name = "xiadanren")
    private String xiadanren;
    @Column(name = "jiedanbeizhu")
    private String jiedanbeizhu;
    @Column(name = "caozuoren")
    private String caozuoren;
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

    public Double getGuketiwen() {
        return guketiwen;
    }
    public void setGuketiwen(Double guketiwen) {
        this.guketiwen = guketiwen == null ? 0.0f : guketiwen;
    }

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }

    public String getJiedanbeizhu() {
        return jiedanbeizhu;
    }
    public void setJiedanbeizhu(String jiedanbeizhu) {
        this.jiedanbeizhu = jiedanbeizhu == null ? "" : jiedanbeizhu.trim();
    }

    public String getCaozuoren() {
        return caozuoren;
    }
    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren == null ? "" : caozuoren.trim();
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
