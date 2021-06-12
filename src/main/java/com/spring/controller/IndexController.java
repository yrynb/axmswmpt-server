package com.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import util.*;
import java.util.*;
import dao.CommDAO;
import net.jntoo.db.Query;
import com.alibaba.fastjson.*;

/**
 * 首页控制器
 */
@Controller
public class IndexController extends BaseController{

    // 首页
    @RequestMapping(value = {"/" , "index"})
    public String Index()
    {
                    
            ArrayList<HashMap> bhtList = Query.make("lunbotu").order("id desc").limit(5).select();
            assign("bhtList" , bhtList);
            
            
            ArrayList<HashMap> shangpinxinxilist1 = Query.make("shangpinxinxi").where("fenlei","6").limit(4).order("id desc").select();
            assign("shangpinxinxilist1" , shangpinxinxilist1);
            
            
            ArrayList<HashMap> shangpinxinxilist2 = Query.make("shangpinxinxi").limit(4).order("id desc").select();
            assign("shangpinxinxilist2" , shangpinxinxilist2);
            
            
            ArrayList<HashMap> shangpinxinxilist3 = Query.make("shangpinxinxi").where("fenlei","5").limit(4).order("id desc").select();
            assign("shangpinxinxilist3" , shangpinxinxilist3);
            
            
            ArrayList<HashMap> shangpinxinxilist4 = Query.make("shangpinxinxi").where("fenlei","1").limit(4).order("id desc").select();
            assign("shangpinxinxilist4" , shangpinxinxilist4);
            
            
            ArrayList<HashMap> shangpinxinxilist5 = Query.make("shangpinxinxi").where("fenlei","2").limit(4).order("id desc").select();
            assign("shangpinxinxilist5" , shangpinxinxilist5);
            
            
            ArrayList<HashMap> shangpinxinxilist6 = Query.make("shangpinxinxi").where("fenlei","3").limit(4).order("id desc").select();
            assign("shangpinxinxilist6" , shangpinxinxilist6);
            
            
            ArrayList<HashMap> shangpinxinxilist7 = Query.make("shangpinxinxi").where("fenlei","4").limit(4).order("id desc").select();
            assign("shangpinxinxilist7" , shangpinxinxilist7);
            
            
            ArrayList<HashMap> xinwenxinxilist8 = Query.make("xinwenxinxi").limit(4).order("id desc").select();
            assign("xinwenxinxilist8" , xinwenxinxilist8);
                            if(isAjax())
        {
            return json();
        }
        return "index";
        
    }



}
