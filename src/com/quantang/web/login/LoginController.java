package com.quantang.web.login;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quantang.common.PasswordHash;
import com.quantang.cons.CommonConstant;
import com.quantang.domain.User;
import com.quantang.service.UserService;
import com.quantang.web.base.BaseController;

/**
 * 
 * <br>
 * <b>类描述:</b>
 * @see
 * @since
 */
@Controller
public class LoginController extends BaseController {
	
	private static Logger logger = Logger.getLogger(LoginController.class);
	/**
	 * 自动注入
	 */
	@Autowired
	private UserService userService;
	
	@RequestMapping("/admin.htm")
	public String admin() {
		return "forward:/login.jsp";
	}
	
	@RequestMapping("/dashboard.htm")
	public String dashboard() {
		return "/dashboard";
	}
	
    /**
     * 用户登陆
     * @param request
     * @param user
     * @return
     */
	@RequestMapping("/login.htm")
	public ModelAndView login(HttpServletRequest request, User user) {
		List<Map<String, Object>> dbUserList = userService.getUserByUserName(user.getUserName());
		User dbUser = null;
		for (Map<String, Object> map : dbUserList) {
			dbUser = new User();
			dbUser.setUserName(String.valueOf(map.get("user_name")));
			dbUser.setPassword(String.valueOf(map.get("password")));
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("forward:/login.jsp");
		if (dbUser == null) {
			mav.addObject("user_error", "用户名不存在");
		} else {
			try {
				if (!PasswordHash.validatePassword(user.getPassword(), dbUser.getPassword())) {
					mav.addObject("pwd_error", "用户密码不正确");
				} else {
					setSessionUser(request,dbUser);
					String toUrl = (String)request.getSession().getAttribute(CommonConstant.LOGIN_TO_URL);
					request.getSession().removeAttribute(CommonConstant.LOGIN_TO_URL);
					//如果当前会话中没有保存登录之前的请求URL，则直接跳转到主页
					if(StringUtils.isEmpty(toUrl)){
						toUrl = "/dashboard.htm";
					}
					mav.setViewName("redirect:"+toUrl);
				}
			} catch (NoSuchAlgorithmException e) {
				logger.error("用户登陆异常：" + e.getMessage() + ",详细：" + e.getStackTrace());
			} catch (InvalidKeySpecException e) {
				logger.error("用户登陆异常：" + e.getMessage() + ",详细：" + e.getStackTrace());
			}
		}
		return mav;
	}

	/**
	 * 登录注销
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout.htm")
	public String logout(HttpSession session) {
		session.removeAttribute(CommonConstant.USER_CONTEXT);
		return "forward:/login.jsp";
	}

}
