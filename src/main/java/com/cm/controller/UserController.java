package com.cm.controller;

import com.cm.entity.Fm;
import com.cm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController{
    @Autowired
    private UserService userService;

    /**
     * 查询所有
     */
    @RequestMapping("/findAll")
    public String findAll(HttpServletRequest request, HttpServletResponse response) {
        List<Fm> fms = userService.findAll();
        request.setAttribute("fms",fms);
        return "showFms";
    }

    /**
     * 保存用户
     */
//    @RequestMapping("/save")
//    public String save(Fm user){
//        try {
//            userService.save(user);
//            //跳转到控制器 user/findAll而不是findAll.jsp页面，必须加redirect关键字
//            return "redirect:/user/findAll";
//        }catch (Exception e){
//            e.printStackTrace();
//            return "redirect:error.jsp";
//        }
//    }
    @RequestMapping("/{act}")
    public String home(@PathVariable String act){
        return act;
    }

    @PostMapping("/addFm")
    public String savePic(@RequestParam("fmimg") MultipartFile file,Fm fm){
        if (file.isEmpty()) {
            return "addFms";
        }
        try {
            InputStream is = file.getInputStream();
            byte[] pic = new byte[(int) file.getSize()];
            is.read(file.getBytes());
            fm.setFmimg(pic);
            userService.addFm(fm);

        } catch (IOException e) {
            e.printStackTrace();
            //跳转到WEB-INF/ftl/showFms.ftl页面
            return "error";
        }
        //跳转到WEB-INF/ftl/showFms.ftl页面
        return "showFms";

    }
}
