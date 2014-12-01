package com.quantang.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;

import com.quantang.domain.Weather;

public class WeatherUtil {
	
	private static String weatherUrl = "http://api.map.baidu.com/telematics/v3/weather?location=%E5%8C%97%E4%BA%AC&output=json&ak=2ii4QzWWkK7fbG9fIq15hlmF";
	
	public static Weather getWeather() {
		Weather weather = new Weather();
		StringBuffer sb = new StringBuffer();
        try {
        	URL url = new URL(weatherUrl);    
            URLConnection conn = url.openConnection();    
            conn.setUseCaches(false);    
            conn.setDoInput(true);    
            conn.setDoOutput(true);    

            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream()));
            String line = null;
            while ((line = reader.readLine()) != null) {
                sb.append(line + "");
            }
            reader.close();
            String json = sb.toString();
            ObjectMapper objectMapper = new ObjectMapper();
            
			JsonNode jsonNode = objectMapper.readTree(json);
			weather.setCurrentCity(jsonNode.get("results").findValue("currentCity").getValueAsText());
			if (jsonNode.get("results").isArray()) {
				List<JsonNode> nodeList = jsonNode.get("results").findValues("weather_data");
				 for (JsonNode weather_Node : nodeList) {
					JsonNode weather_data = weather_Node.get(0);
					weather.setDate(weather_data.get("date").getValueAsText());
					weather.setDayPictureUrl(weather_data.get("dayPictureUrl").getValueAsText());
					weather.setNightPictureUrl(weather_data.get("nightPictureUrl").getValueAsText());
					weather.setWeather(weather_data.get("weather").getValueAsText());
					weather.setWind(weather_data.get("wind").getValueAsText());
					weather.setTemperature(weather_data.get("temperature").getValueAsText());
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
        return weather;
	}
	
	public static String getCityId() {
		String id = null;
		try {
			StringBuffer sb = new StringBuffer();
			URL url = new URL("http://61.4.185.48:81/g/");    
        	URLConnection conn = url.openConnection();
        	BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream()));
            String line = null;
            while ((line = reader.readLine()) != null) {
                sb.append(line + "");
            }
            reader.close();
            String[] sbs = sb.toString().split(";");
            id = sbs[1].substring(sbs[1].indexOf("=") + 1);
		} catch (IOException e) {
			//e.printStackTrace();
			id = "101010100";
		} catch (Exception e) {
			//e.printStackTrace();
			id = "101010100";
		}
		return id;
	}
	
	public static Weather getWeatherHtml() {
		Weather weather = new Weather();
		StringBuffer sb = new StringBuffer();
        try {
        	URL url = new URL("http://www.weather.com.cn/data/cityinfo/" + getCityId() + ".html");    
            URLConnection conn = url.openConnection();    
            conn.setUseCaches(false);    
            conn.setDoInput(true);    
            conn.setDoOutput(true);    

            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream(), "UTF-8"));
            String line = null;
            while ((line = reader.readLine()) != null) {
                sb.append(line + "");
            }
            reader.close();
            String json = sb.toString();
            System.out.println(json);
            ObjectMapper objectMapper = new ObjectMapper();
            
			JsonNode jsonNode = objectMapper.readTree(json);
			JsonNode weatherinfo = jsonNode.findValue("weatherinfo");
			String city = weatherinfo.findValue("city").getValueAsText();
			String temp1 = weatherinfo.findValue("temp1").getValueAsText();
			String temp2 = weatherinfo.findValue("temp2").getValueAsText();
			String img1 = weatherinfo.findValue("img1").getValueAsText();
			String weather1 = weatherinfo.findValue("weather").getValueAsText();
			weather.setCurrentCity(city);
			weather.setTemperature(temp2 + "~" + temp1);
			weather.setDayPictureUrl(img1);
			weather.setWeather(weather1);
		} catch (IOException e) {
			e.printStackTrace();
		}
        return weather;
	}
	
	public static void main(String[] args) {
		getWeatherHtml();
		/*try {
			StringBuffer sb = new StringBuffer();
			URL url = new URL("http://61.4.185.48:81/g/");    
        	URLConnection conn = url.openConnection();
        	BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream()));
            String line = null;
            while ((line = reader.readLine()) != null) {
                sb.append(line + "");
            }
            reader.close();
            System.out.println(sb);
            String[] sbs = sb.toString().split(";");
            String id = sbs[1].substring(sbs[1].indexOf("=") + 1);
            System.out.println(id);
		}
		catch (Exception e) {
			e.printStackTrace();
		}*/
		
		/*StringBuffer sb = new StringBuffer();
        try {
        	URL url = new URL(weatherUrl);    
            URLConnection conn = url.openConnection();    
            conn.setUseCaches(false);    
            conn.setDoInput(true);    
            conn.setDoOutput(true);    

            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream()));
            String line = null;
            while ((line = reader.readLine()) != null) {
                sb.append(line + "");
            }
            reader.close();
            String json = sb.toString();
            ObjectMapper objectMapper = new ObjectMapper();
            
            JsonNode jsonNode = objectMapper.readTree(json);
            System.out.println(jsonNode.getTextValue());
            System.out.println(jsonNode.get("error"));
            System.out.println(jsonNode.get("status"));
            System.out.println(jsonNode.get("date"));
            System.out.println(jsonNode.get("results"));
            System.out.println(jsonNode.get("weather_data"));
            System.out.println(jsonNode.get("results").isArray());
            List<JsonNode> nodeList = jsonNode.get("results").findValues("weather_data");
            for (JsonNode jsonNode2 : nodeList) {
				System.out.println(jsonNode2.get("date"));
				System.out.println(jsonNode2.get(0));
				System.out.println(jsonNode2.get(0).get("date"));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}    */
	}
}
