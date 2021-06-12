package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "dingdanxinxi")
public class Dingdanxinxi implements Serializable {
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
    @Column(name = "shoucanren")
    private String shoucanren;
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "shoucandizhi")
    private String shoucandizhi;
    @Column(name = "cuncanweizhi")
    private String cuncanweizhi;
    @Column(name = "guketiwen")
    private Double guketiwen;
    @Column(name = "shifougeli")
    private String shifougeli;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "dingdanzhuangtai")
    private String dingdanzhuangtai;
    @Column(name = "xiadanren")
    private String xiadanren;
    private String iszf;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getDingdanquerenCount()
    {
        return Query.make("dingdanqueren").where("dingdanxinxiid" , id).count();
    }
    public Long getDingdanpeisongCount()
    {
        return Query.make("dingdanpeisong").where("dingdanxinxiid" , id).count();
    }
    public Long getDingdanqianshouCount()
    {
        return Query.make("dingdanqianshou").where("dingdanxinxiid" , id).count();
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

    public String getShoucanren() {
        return shoucanren;
    }
    public void setShoucanren(String shoucanren) {
        this.shoucanren = shoucanren == null ? "" : shoucanren.trim();
    }

    public String getLianxidianhua() {
        return lianxidianhua;
    }
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua == null ? "" : lianxidianhua.trim();
    }

    public String getShoucandizhi() {
        return shoucandizhi;
    }
    public void setShoucandizhi(String shoucandizhi) {
        this.shoucandizhi = shoucandizhi == null ? "" : shoucandizhi.trim();
    }

    public String getCuncanweizhi() {
        return cuncanweizhi;
    }
    public void setCuncanweizhi(String cuncanweizhi) {
        this.cuncanweizhi = cuncanweizhi == null ? "" : cuncanweizhi.trim();
    }

    public Double getGuketiwen() {
        return guketiwen;
    }
    public void setGuketiwen(Double guketiwen) {
        this.guketiwen = guketiwen == null ? 0.0f : guketiwen;
    }

    public String getShifougeli() {
        return shifougeli;
    }
    public void setShifougeli(String shifougeli) {
        this.shifougeli = shifougeli == null ? "" : shifougeli.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getDingdanzhuangtai() {
        return dingdanzhuangtai;
    }
    public void setDingdanzhuangtai(String dingdanzhuangtai) {
        this.dingdanzhuangtai = dingdanzhuangtai == null ? "" : dingdanzhuangtai.trim();
    }

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }
    public String getIszf() {
        return iszf;
    }
    public void setIszf(String iszf) {
        this.iszf = iszf == null ? "" : iszf.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
