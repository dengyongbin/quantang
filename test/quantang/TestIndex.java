package quantang;

public class TestIndex {
	public static void main(String[] args) {
		StringBuffer sb = new StringBuffer("");
		sb.append("var hq_str_hf_XAG=\"17.184,-0.4749,17.184,17.227,17.248,17.047,10:52:03,17.266,17.266,0,0,0,2014-10-30,伦敦银\";");
		sb.append("var hq_str_hf_XPT=\"1257.58,-1.0200,1257.58,1260.63,1263.84,1253.92,10:52:03,1270.54,1270.41,0,0,0,2014-10-30,伦敦铂金\";");
		sb.append("var hq_str_hf_XPD=\"786.79,-1.2526,786.79,790.58,797.95,784.01,10:52:03,796.77,796.47,0,0,0,2014-10-30,伦敦钯金\";");
		sb.append("var hq_str_hf_NID=\"15494.00,-1.1232,15431.00,15494.00,15640.00,15440.00,10:52:46,15670.00,15551.00,59,0,0,2014-10-30,LME镍\";");
		sb.append("var hq_str_hf_CAD=\"6771.00,-0.6456,6770.00,6771.00,6783.00,6761.25,10:50:37,6815.00,6783.00,244,0,0,2014-10-30,LME铜\";");
		sb.append("var hq_str_hf_AHD=\"2014.00,-0.7882,2012.25,2014.00,2023.75,2011.75,10:50:42,2030.00,2023.00,126,0,0,2014-10-30,LME铝\";");
		
		String datas = sb.toString();
		
		System.out.println(datas);
		
		int start = 0;
		int end = 1;
		for(int i = 0; i < 6; i++) {
			start = datas.indexOf("\"", start);
			end = datas.indexOf("\"", start + 1);
			String datainfo = datas.substring(start + 1, end);
			System.out.println(datainfo);
			start = end + 1;
		}
		
		
	}
}
