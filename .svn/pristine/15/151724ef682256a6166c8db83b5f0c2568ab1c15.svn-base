package com.quantang.web.account;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.service.AccountService;

@Controller
public class AccountController {

	@Autowired
	private AccountService accountService;

	@RequestMapping("/accountidx.htm")
	public String accountlist(ModelMap mm) {
		List<Map<String, Object>> accountList = accountService.findAccount();
		mm.addAttribute("accountList", accountList);
		return "account/accountlist";
	}

}
