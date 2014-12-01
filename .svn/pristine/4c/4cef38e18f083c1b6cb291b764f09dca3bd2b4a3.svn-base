package com.quantang.common;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.XMLConfiguration;
import org.apache.commons.configuration.tree.xpath.XPathExpressionEngine;

public final class ConfigFactory {

	private static XMLConfiguration config = null;

	public static void init(String configFilePath) {
		if (configFilePath == null) {
			configFilePath = "config.xml";
		}
		try {
			config = new XMLConfiguration(configFilePath);
			config.setExpressionEngine(new XPathExpressionEngine());
		} catch (ConfigurationException e) {
			System.out.println("Fatal:Create Config Object Error!!!");
			e.printStackTrace();
			System.exit(1);
		}
	}

	public static String getString(int index, String code) {

		if (index == 0) {
			return config.getString("msg0/msg[@key='" + code + "']/value");
		}
		return config.getString("msg1/msg[@key='" + code + "']/value");
	}

}
