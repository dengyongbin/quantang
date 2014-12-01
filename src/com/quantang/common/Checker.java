package com.quantang.common;

import java.util.List;
import java.util.Map;

/**
 * 字符串�?数组、List帮助�? * @author dengyb
 *
 */
public class Checker {
	
	public static final boolean isEmpty(Object obj) {
		return (obj == null) || (obj.toString().length() == 0);
	}
	
	public static final boolean isEmpty(String str) {
		return (str == null) || (str.length() == 0);
	}

	public static final boolean isEmpty(StringBuffer str) {
		return (str == null) || (str.length() == 0);
	}

	public static boolean isEmpty(String[] array) {
		return (array == null) || (array.length == 0);
	}

	public static boolean isEmpty(String[][] array) {
		return (array == null) || (array.length == 0);
	}

	@SuppressWarnings("rawtypes")
	public static boolean isEmpty(List list) {
		return (list == null) || (list.size() < 1);
	}
	@SuppressWarnings("rawtypes")
	public static boolean isEmpty(Map map) {
		return (map == null) || (map.size() < 1);
	}

	public static boolean isInteger(String str) {
		if (isEmpty(str))
			return false;
		try {
			Integer.parseInt(str);
			return true;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isPositiveInteger(String str) {
		if (isEmpty(str))
			return false;
		try {
			int i = Integer.parseInt(str);
			return i > 0;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isNonnegativeInteger(String str) {
		if (isEmpty(str))
			return false;
		try {
			int i = Integer.parseInt(str);
			return i >= 0;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isLong(String str) {
		if (isEmpty(str))
			return false;
		try {
			Long.parseLong(str);
			return true;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isPositiveLong(String str) {
		if (isEmpty(str))
			return false;
		try {
			long l = Long.parseLong(str);
			return l > 0L;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isNonnegativeLong(String str) {
		if (isEmpty(str))
			return false;
		try {
			long l = Long.parseLong(str);
			return l >= 0L;
		} catch (Exception ex) {
		}
		return false;
	}

	public static boolean isDecimal(String str) {
		if (isEmpty(str))
			return false;
		try {
			Double.parseDouble(str);
			return true;
		} catch (Exception e) {
		}
		return false;
	}

	public static boolean isPositiveDecimal(String str) {
		if (isEmpty(str))
			return false;
		try {
			double d = Double.parseDouble(str);
			return d > 0.0D;
		} catch (Exception e) {
		}
		return false;
	}

	public static boolean isNonnegativeDecimal(String str) {
		if (isEmpty(str))
			return false;
		try {
			double d = Double.parseDouble(str);
			return d >= 0.0D;
		} catch (Exception e) {
		}
		return false;
	}

	/*
	 * public static boolean isDate(String str) { try { Date date =
	 * DateUtil.getDateFormat().parse(str);
	 * 
	 * String formatStr = DateUtil.getDateFormat().format(date); return
	 * formatStr.equals(str); } catch (Exception ex) { } return false; }
	 * 
	 * public static boolean isTime(String str) { try { Date t =
	 * DateUtil.getTimeFormat().parse(str); String formatStr =
	 * DateUtil.getTimeFormat().format(t);
	 * 
	 * return formatStr.equals(str); } catch (Exception e) { } return false; }
	 * 
	 * public static boolean isTimestamp(String str) { if ((str == null) ||
	 * (str.length() < 19)) { return false; }
	 * 
	 * if ((str.length() == 19) && (!str.endsWith("."))) { str = str + "."; }
	 * 
	 * while (str.length() < 23) str = str + "0"; try { Date date =
	 * DateUtil.getTimestampFormat().parse(str);
	 * 
	 * String formatStr = DateUtil.getTimestampFormat().format(date);
	 * 
	 * return formatStr.equals(str); } catch (ParseException ex) { }
	 * 
	 * return false; }
	 */
}
