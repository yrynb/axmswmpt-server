package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "dingdanpeisong")
public class Dingdanpeisong implements Serializable {
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
    @Column(name = "shoucanren")
    private String shoucanren;
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "shoucandizhi")
    private String shoucandizhi;
    @Column(name = "cuncanweizhi")
    private String cuncanweizhi;
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

    public Long getDingdanquxiaoCount()
    {
        return Query.make("dingdanquxiao").where("dingdanpeisongid" , id).count();
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
