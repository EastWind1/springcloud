package com.example.auth.controller;

import com.example.auth.entity.User;
import com.example.auth.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 用户API控制器
 */

@RestController
@RequestMapping("api/user")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    /**
     * 前端检测是否登录
     *
     * @return
     */
    @GetMapping("")
    @ResponseBody
    public Boolean isLogin() {
        // 已启用spring security，仅return
        return true;
    }

    /**
     * 注册
     * @return
     * @throws Exception
     */
    @PostMapping("")
    @ResponseBody
    public User signup(@RequestBody User user) throws Exception {
        if (user.getUsername() == null || user.getPassword() == null) {
            throw new Exception("用户名或密码为空");
        }
        return userService.add(user);
    }
}
