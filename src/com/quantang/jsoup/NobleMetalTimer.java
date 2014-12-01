package com.quantang.jsoup;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ScheduledThreadPoolExecutor;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.quantang.common.Checker;
import com.quantang.dao.CaptureDao;

public class NobleMetalTimer extends java.util.TimerTask {

	private static Logger logger = Logger.getLogger(NobleMetalTimer.class);
	@Autowired
	private CaptureDao capturedao;

	static ScheduledThreadPoolExecutor stpe = null;

	@Override
	public void run() {
		String backData = catchPage();
		if (Checker.isEmpty(backData)) {
			logger.error("NobleMetal 抓取数据失败，服务器无数据返回!");
		} else {
			capturedao.saveNobleMetalData(backData);
		}
	}

	/**
	 * @param targetUrl
	 * @return String
	 * @todo 页面捕捉
	 */
	private String catchPage() {
		URL url;
		HttpURLConnection con = null;
		BufferedReader reader = null;
		StringBuffer sb = new StringBuffer("");
		// 向targetUrl发送请求
		try {
			url = new URL("http://hq.sinajs.cn/rn=1401955929138&list=hf_XAG,hf_XPT,hf_XPD,hf_NID,hf_CAD,hf_AHD");
			con = (HttpURLConnection) url.openConnection();
			con.setConnectTimeout(30000);
			con.setReadTimeout(30000);
			if (con.getResponseCode() != HttpURLConnection.HTTP_OK) {
				return null;
			}
			// 读取响应
			reader = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
			String temp;
			while ((temp = reader.readLine()) != null) {
				sb.append(temp);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			con.disconnect();
		}
		return sb.toString();
	}

}
