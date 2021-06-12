package com.spring.controller;

import com.spring.dao.DingdanquxiaoMapper;
import com.spring.entity.Dingdanquxiao;
import com.spring.service.DingdanquxiaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;
import dao.CommDAO;

import com.spring.entity.Dingdanpeisong;
import com.spring.service.DingdanpeisongService;

/**
 * 订单取消 */
@Controller
public class DingdanquxiaoController extends BaseController
{
    @Autowired
    private DingdanquxiaoMapper dao;
    @Autowired
    private DingdanquxiaoService service;

    @Autowired
    private DingdanpeisongService serviceRead;
    /**
     *  后台列表页
     *
     */
    @RequestMapping("/dingdanquxiao_list")
    public String list()
    {

        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int    pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据
        Example example = new Example(Dingdanquxiao.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if(sort.equals("desc")){        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        }else{
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1 , page);  // 取两个数的最大值，防止page 小于1
        List<Dingdanquxiao> list = service.selectPageExample(example , page , pagesize);   // 获取当前页的行数


        
        // 将列表写给界面使用
        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        return json();   // 将数据写给前端
    }

    public String getWhere()
    {
        _var = new LinkedHashMap(); // 重置数据
        String where = " ";
        // 判断URL 参数dingdanpeisongid是否大于0
        if( Request.getInt("dingdanpeisongid") > 0 ) {
            // 大于0 则写入条件
            where += " AND dingdanpeisongid='"+Request.getInt("dingdanpeisongid")+"' ";
        }
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
            if(!Request.get("dingdanbianhao").equals("")) {
            where += " AND dingdanbianhao LIKE '%"+Request.get("dingdanbianhao")+"%' ";
        }
                if(!Request.get("gonghao").equals("")) {
            where += " AND gonghao LIKE '%"+Request.get("gonghao")+"%' ";
        }
                if(!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%"+Request.get("xingming")+"%' ";
        }
                if(!Request.get("quxiaoren").equals("")) {
            where += " AND quxiaoren LIKE '%"+Request.get("quxiaoren")+"%' ";
        }

        if (session.getAttribute("login").equals("配送员")) {

            where += " AND gonghao='"+session.getAttribute("gonghao")+"' ";

        }
        return where;
    }

    /**
     * 取消人列表
     */
    @RequestMapping("/dingdanquxiao_list_quxiaoren")
    public String listquxiaoren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int    pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据

        
        Example example = new Example(Dingdanquxiao.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：取消人=当前登录用户
        String where = " quxiaoren='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Dingdanquxiao> list = service.selectPageExample(example , page , pagesize);
                    assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
                assign("orderby" , order);
        assign("sort" , sort);
        return json();   // 将数据写给前端
    }




        @RequestMapping("/dingdanquxiao_add")
    public String add()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");  // 根据id 获取 订单配送模块中的数据
        Dingdanpeisong readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        assign("readMap" , readMap);

                    
            ArrayList<HashMap> dataList = Query.make("dingdanpeisong_dingdanxinxi").where("dingdanpeisongid", request.getParameter("id")).order("id desc").select();
            assign("dataList" , dataList);
            
        return json();   // 将数据写给前端
    }

    @RequestMapping("/dingdanquxiao_updt")
    public String updt()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Dingdanquxiao mmm = service.find(id);
        assign("mmm" , mmm);
        assign("updtself" , 0);

                    
            ArrayList<HashMap> dataList = Query.make("dingdanpeisong_dingdanxinxi").where("dingdanpeisongid", request.getParameter("id")).order("id desc").select();
            assign("dataList" , dataList);
            
        return json();   // 将数据写给前端
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/dingdanquxiaoinsert")
    public String insert()
    {
        _var = new LinkedHashMap(); // 重置数据
        String tmp="";
        Dingdanquxiao post = new Dingdanquxiao();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setDingdanbianhao(Request.get("dingdanbianhao"));

        post.setDingdanxinxi(Request.get("dingdanxinxi"));

        post.setDingdanjine(Request.getDouble("dingdanjine"));

        post.setAnpaipeisong(Request.getInt("anpaipeisong"));

        post.setGonghao(Request.get("gonghao"));

        post.setXingming(Request.get("xingming"));

        post.setPeisongyuantiwen(Request.getDouble("peisongyuantiwen"));

        post.setWaimaitupian(Request.get("waimaitupian"));

        post.setPeisongzhaopian(Request.get("peisongzhaopian"));

        post.setQuxiaoyuanyin(Request.get("quxiaoyuanyin"));

        post.setQuxiaoren(Request.get("quxiaoren"));

        post.setDingdanpeisongid(Request.getInt("dingdanpeisongid"));

        
        post.setAddtime(Info.getDateStr()); // 设置添加时间
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        Query.execute("INSERT INTO dingdanquxiao_dingdanxinxi(dingdanquxiaoid,shangpinxinxiid,shangpinbianhao,fenlei,shangpinmingcheng,tupian,jiage,goumaishuliang,xiaoji) SELECT '"+charuid+"',shangpinxinxiid,shangpinbianhao,fenlei,shangpinmingcheng,tupian,jiage,goumaishuliang,xiaoji FROM dingdanpeisong_dingdanxinxi WHERE dingdanpeisongid='"+request.getParameter("dingdanpeisongid")+"'");


Query.execute("update dingdanxinxi set dingdanzhuangtai='已取消' where dingdanbianhao='"+request.getParameter("dingdanbianhao")+"'");



        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/dingdanquxiaoupdate")
    public String update()
    {
        _var = new LinkedHashMap(); // 重置数据
        // 创建实体类
        Dingdanquxiao post = new Dingdanquxiao();
        // 将前台表单数据填充到实体类
        if(!Request.get("dingdanbianhao").equals(""))
        post.setDingdanbianhao(Request.get("dingdanbianhao"));
                if(!Request.get("dingdanxinxi").equals(""))
        post.setDingdanxinxi(Request.get("dingdanxinxi"));
                if(!Request.get("dingdanjine").equals(""))
        post.setDingdanjine(Request.getDouble("dingdanjine"));
            if(!Request.get("anpaipeisong").equals(""))
        post.setAnpaipeisong(Request.getInt("anpaipeisong"));
            if(!Request.get("gonghao").equals(""))
        post.setGonghao(Request.get("gonghao"));
                if(!Request.get("xingming").equals(""))
        post.setXingming(Request.get("xingming"));
                if(!Request.get("peisongyuantiwen").equals(""))
        post.setPeisongyuantiwen(Request.getDouble("peisongyuantiwen"));
            if(!Request.get("waimaitupian").equals(""))
        post.setWaimaitupian(Request.get("waimaitupian"));
                if(!Request.get("peisongzhaopian").equals(""))
        post.setPeisongzhaopian(Request.get("peisongzhaopian"));
                if(!Request.get("quxiaoyuanyin").equals(""))
        post.setQuxiaoyuanyin(Request.get("quxiaoyuanyin"));
                if(!Request.get("quxiaoren").equals(""))
        post.setQuxiaoren(Request.get("quxiaoren"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/dingdanquxiao_detail")
    public String detail()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        Dingdanquxiao map = service.find(id);  // 根据前台url 参数中的id获取行数据
        assign("map" , map);  // 把数据写到前台
                
            ArrayList<HashMap> dataList = Query.make("dingdanquxiao_dingdanxinxi").where("dingdanquxiaoid", request.getParameter("id")).order("id desc").select();
            assign("dataList" , dataList);
                    return json();   // 将数据写给前端
    }
        /**
    *  删除
    */
    @RequestMapping("/dingdanquxiao_delete")
    public String delete()
    {
        _var = new LinkedHashMap(); // 重置数据
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("dingdanquxiao").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
