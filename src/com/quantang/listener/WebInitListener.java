package com.quantang.listener;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.quantang.common.ConfigFactory;

/**
 * web初始化变量
 * 
 * @author dengyb
 * 
 */
public class WebInitListener implements ServletContextListener {

	private static Logger logger = Logger.getLogger(WebInitListener.class);

	@Override
	public void contextDestroyed(ServletContextEvent context) {

	}

	ScheduledExecutorService service = Executors.newScheduledThreadPool(1);

	@Override
	public void contextInitialized(ServletContextEvent context) {
		context.getServletContext().setAttribute("base", context.getServletContext().getContextPath());
		// 加载配置文件
		ConfigFactory.init(null);
	}

}
