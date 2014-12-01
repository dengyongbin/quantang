package com.quantang.web.index.reservation;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.namespace.QName;

import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.quantang.common.ConfigFactory;
import com.quantang.dao.AccountOpenDao;
import com.quantang.dao.FirmAccountDao;
import com.quantang.service.AccountService;
import com.quantang.service.NoticeService;

@Controller
public class ReservationController {

	String protocolidtmp = "";

	@Autowired
	private FirmAccountDao firmaccountDao;

	@Autowired
	private AccountService accountService;

	@Autowired
	private NoticeService noticeService;

	@Autowired
	private AccountOpenDao openDao;

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	private static Logger logger = Logger.getLogger("开户日志");

	@RequestMapping("/reservation.htm")
	public String reservation(ModelMap mm) {
		List<Map<String, Object>> noticelt = noticeService.getNoticeLast();
		mm.addAttribute("noticelt", noticelt);
		mm.addAttribute("reservation", "active");
		return "index/reservation";
	}

	@RequestMapping("/savereser.htm")
	public String saveReservation(String name, String phone, String email, String sex, String age, ModelMap mm) {
		accountService.addAccount(name, phone, email, sex, age);
		mm.addAttribute("message", "提交成功!");
		mm.addAttribute("question", "reservation");
		return "index/reservation";
	}

	@RequestMapping(value = "/rightSubmit.htm", method = RequestMethod.POST)
	public void rightSubmit(PrintWriter printWriter, String name, String phone, String email, String sex, String age) {
		accountService.addAccount(name, phone, email, sex, age);
		printWriter.flush();
		printWriter.close();
	}

	@RequestMapping("/step2.htm")
	public String step2(String v) {
		if ("".equals(v) || v == null || "".equals(v)) {
			return "redirect:/reservation.htm";
		}
		return "index/step2";
	}

	@RequestMapping("/step2Submit.htm")
	public String step2Submit(String v, HttpServletRequest request) {
		if ("".equals(v) || v == null || "".equals(v)) {
			return "redirect:/reservation.htm";
		}
		String protocolid = firmaccountDao.SaveProtocol(new String[] { request.getParameter("name"),
				request.getParameter("address"), request.getParameter("phone"), request.getParameter("fax") });
		protocolidtmp = protocolid;
		logger.info("第二步：客户协议书>>>协议ID：" + protocolid + "   签约时间：" + sdf.format(new Date()) + "   姓名："
				+ request.getParameter("name") + "   地址：" + request.getParameter("address") + "   电话："
				+ request.getParameter("phone") + "   传真：" + request.getParameter("fax"));
		return "redirect:/step3.htm?v=1&protocolid=" + protocolid;
	}

	@RequestMapping("/step3.htm")
	public String step3(String v, String protocolid, ModelMap mm) {
		if (check(v, protocolid)) {
			return "redirect:/reservation.htm";
		}
		mm.addAttribute("protocolid", protocolid);
		logger.info("第三步：权责告知函>>>协议ID：" + protocolid + "   时间：" + sdf.format(new Date()));
		return "index/step3";
	}

	@RequestMapping("/step4.htm")
	public String step4(String v, String protocolid, ModelMap mm) {
		if (check(v, protocolid)) {
			return "redirect:/reservation.htm";
		}
		logger.info("第四步：开户信息>>>协议ID：" + protocolid + "   时间：" + sdf.format(new Date()));
		mm.addAttribute("protocolName", openDao.getAccountName(protocolid));
		mm.addAttribute("protocolid", protocolid);
		return "index/step4";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/step5.htm")
	public String step5(String v, String protocolid, HttpServletRequest request, ModelMap mm) {
		logger.info("第四步：开户信息>>>协议ID：" + protocolid + "   提交时间：" + sdf.format(new Date()));
		if (check(v, protocolid)) {
			return "redirect:/reservation.htm";
		}
		// 接口调节
		RPCServiceClient client = null;
		try {
			client = new RPCServiceClient();
		} catch (AxisFault e) {
			e.printStackTrace();
		}
		Options options = client.getOptions();
		EndpointReference targetEPR = new EndpointReference(
		// "http://www.cms-tjpme.com/services/openAccountForUnitService?wsdl");
				"http://123.150.41.139:18080/services/openAccountForUnitService?wsdl");
		options.setTo(targetEPR);
		options.setTimeOutInMilliSeconds(30000);
		String accountsId = openDao.getAccountOpenCode();

		// 指定openAndCheck方法的参数值
		Object[] entrysArgs = new Object[] { "1234f08037u87b134718c9d15a545wed", "203", accountsId,
				request.getParameter("name"), request.getParameter("idType"), request.getParameter("id"),
				request.getParameter("gender"), request.getParameter("cmbProvince"), request.getParameter("cmbCity"),
				request.getParameter("cmbArea"), request.getParameter("tradePwd"), request.getParameter("phonePwd"),
				request.getParameter("phone"), request.getParameter("fax"), "", request.getParameter("mail"),
				request.getParameter("address"), "", "", request.getParameter("idType"),
				request.getParameter("bankno"), request.getParameter("bank") };
		// 指定openAndCheck方法返回值的数据类型的Class对象
		Class[] classes = new Class[] { String.class, String.class };
		// 指定要调用的openAndCheck方法及WSDL文件的命名空间
		QName opAddEntry = new QName("http://impl.service.ta.ctis.com", "openAndCheck");
		// 调用getMobileCodeInfo方法并输出该方法的返回值
		Object[] str = null;
		try {
			str = client.invokeBlocking(opAddEntry, entrysArgs, classes);
		} catch (AxisFault e) {
			e.printStackTrace();
		}

		logger.info("第四步：开户信息>>>姓名：" + request.getParameter("name") + "   证件类型（02/身份证）："
				+ request.getParameter("idType") + "   证件号码：" + request.getParameter("id") + "   性别(0/男,1/女)："
				+ request.getParameter("gender") + "   省：" + request.getParameter("cmbProvince") + "   市:"
				+ request.getParameter("cmbCity") + "   区：" + request.getParameter("cmbArea") + "   電話："
				+ request.getParameter("phone") + "   传真：" + request.getParameter("fax") + "   邮件："
				+ request.getParameter("mail") + "   通讯地址：" + request.getParameter("address")
				+ "   银行类型（001/工商，013/建行）：" + request.getParameter("bank") + "   银行账号："
				+ request.getParameter("bankno"));
		logger.info("第四步：开户信息:接口返回>>>协议ID：" + protocolid + "   时间:" + sdf.format(new Date()) + "   code1:" + str[0]
				+ "   code2:" + str[1]);
		logger.info("第四步：开户信息:接口返回>>>协议ID：" + protocolid + "   code1->Massage1:"
				+ ConfigFactory.getString(0, String.valueOf(str[0])));
		if (!"".equals(str[1]) && str[1] != null && !"null".equals(str[1])) {
			mm.addAttribute("message2", ConfigFactory.getString(1, String.valueOf(str[1])));
			logger.info("第四步：开户信息:接口返回>>>协议ID：" + protocolid + "   code2->Massage2:"
					+ ConfigFactory.getString(1, String.valueOf(str[1])));
		}

		if (str != null) {
			if ("1".equals(str[0]) && "1".equals(str[1])) {
				@SuppressWarnings("rawtypes")
				List list = new ArrayList();
				list.add(0, accountsId);
				list.add(1, protocolid);
				list.add(2, request.getParameter("name"));
				list.add(3, request.getParameter("idType"));
				list.add(4, request.getParameter("id"));
				list.add(5, request.getParameter("gender"));
				list.add(6, request.getParameter("cmbProvince"));
				list.add(7, request.getParameter("cmbCity"));
				list.add(8, request.getParameter("cmbArea"));
				list.add(9, request.getParameter("phone"));
				list.add(10, request.getParameter("tradePwd"));
				list.add(11, request.getParameter("phonePwd"));
				list.add(12, request.getParameter("bank"));
				list.add(13, request.getParameter("bankno"));
				list.add(14, request.getParameter("fixedLine"));
				list.add(15, request.getParameter("fax"));
				list.add(16, request.getParameter("mail"));
				list.add(17, request.getParameter("address"));
				firmaccountDao.saveAccountInfo(list);
				firmaccountDao.updateProtocol(protocolid, accountsId);
				openDao.updateAcccountOpenCode(accountsId);
				mm.addAttribute("accountsId", accountsId);
				mm.addAttribute("protocolid", protocolid);
			} else {
				mm.addAttribute("name", request.getParameter("name"));
				mm.addAttribute("idType", request.getParameter("idType"));
				mm.addAttribute("id", request.getParameter("id"));
				mm.addAttribute("gender", request.getParameter("gender"));
				mm.addAttribute("province", request.getParameter("cmbProvince"));
				mm.addAttribute("city", request.getParameter("cmbCity"));
				mm.addAttribute("area", request.getParameter("cmbArea"));
				mm.addAttribute("phone", request.getParameter("phone"));
				mm.addAttribute("tradePwd", request.getParameter("tradePwd"));
				mm.addAttribute("phonePwd", request.getParameter("phonePwd"));
				mm.addAttribute("bank", request.getParameter("bank"));
				mm.addAttribute("bankno", request.getParameter("bankno"));
				mm.addAttribute("fixedLine", request.getParameter("fixedLine"));
				mm.addAttribute("fax", request.getParameter("fax"));
				mm.addAttribute("mail", request.getParameter("mail"));
				mm.addAttribute("address", request.getParameter("address"));
				mm.addAttribute("message1", ConfigFactory.getString(0, String.valueOf(str[0])));
				if (!"".equals(str[1]) && str[1] != null && !"null".equals(str[1])) {
					mm.addAttribute("message2", ConfigFactory.getString(1, String.valueOf(str[1])));
				}
				mm.addAttribute("protocolid", protocolid);
				return "index/step4";
			}
		}
		logger.info("第五步：开户成功>>>协议ID：" + protocolid + "   时间：" + sdf.format(new Date()));
		return "index/step5";
	}

	@RequestMapping("/step6.htm")
	public String step6(String v, String protocolid) {
		if (check(v, protocolid)) {
			return "redirect:/reservation.htm";
		}
		logger.info("第六步：网银签约>>>协议ID：" + protocolid + "   时间：" + sdf.format(new Date()));
		return "index/step6";
	}

	private boolean check(String v, String protocolid) {
		String firmAccount = openDao.getFirmAccount(protocolid);

		if ("".equals(v) || v == null || "".equals(v)) {
			return true;
		}
		if (!"null".equals(firmAccount) && firmAccount != null) {
			return true;
		}
		return false;
	}
}
