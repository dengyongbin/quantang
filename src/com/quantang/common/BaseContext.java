package com.quantang.common;

import org.springframework.context.ApplicationContext;

/**
 * 基本环境类，主要保存Spring �?ApplicationContext
 * 使用工厂模式，由程序启动类创建，创建后为单例模式来使用�?
 *
 */
public class BaseContext {

	private static BaseContext BASECTX;//自身单例变量�?
	
	private ApplicationContext springCtx;
	
	private BaseContext(){
		
	}
	
	/**
	 * 工厂方法，产生BaseContext实例,由程序启动类调用
	 * @param springCtx
	 */
	public static void createInstance(ApplicationContext springCtx){
		BASECTX = new BaseContext();
		BASECTX.springCtx = springCtx;
	}
	
	/**
	 * 得到此类的单例实�?
	 * @return
	 */
	public static BaseContext getInstance(){
		if(BASECTX==null){
			//throw new BaseRuntimeException("BaseContext 没有被初始化�?);
		}
		return BASECTX;
	}
	
	/**
	 * 得到Spring的ctx
	 * @return
	 */
	public  ApplicationContext getSpringCtx() {
		if(this.springCtx==null){
			//throw new BaseRuntimeException("Spring ApplicationContext 没有被初始化�?);
		}
		return this.springCtx;
	}
	
	public <T> T getBean(Class<T> requiredType) {
		return this.getSpringCtx().getBean(requiredType);
	}
	
	public <T>T getBean(String beanId, Class<T> requiredType){
		return this.getSpringCtx().getBean(beanId, requiredType);
	}

	/*public IBaseDao getBaseDao(){
		return this.getBean("baseDao", IBaseDao.class);
	}*/
}
