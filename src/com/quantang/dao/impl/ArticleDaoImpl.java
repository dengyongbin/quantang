package com.quantang.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.quantang.dao.ArticleDao;
import com.quantang.domain.Article;
import com.quantang.domain.Page;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private String[] infoStatus = { "0", "1" };

	@Override
	public Integer addArticle(final Article article) {

		final StringBuffer excuteSQL = new StringBuffer("");
		if (article.getInfomationId() != null && !"".equals(article.getInfomationId())) {
			excuteSQL
					.append(" update infomation set title=?,author=?,timing=?,content=?,keyword=?,share_count=?,good_count=?,read_count=?,infomation_type=?,infomation_status=?,summary=?,image=?,home_top=?,updatetime=now() where infomation_id = ?");
		} else {
			StringBuffer maxidSQL = new StringBuffer("");
			maxidSQL.append(" select ifnull(max(infomation_id),0)+1 from infomation");
			article.setInfomationId(jdbcTemplate.queryForObject(maxidSQL.toString(), Integer.class));
			excuteSQL
					.append(" insert into infomation(title,author,timing,content,keyword,share_count,good_count,read_count,infomation_type,infomation_status,summary,image,home_top,infomation_id,updatetime) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())");
		}
		jdbcTemplate.update(excuteSQL.toString(), new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

				ps.setString(1, article.getTitle());
				ps.setString(2, article.getAuthor());
				if (!"".equals(article.getTiming()) && article.getTiming() != null) {
					ps.setTimestamp(3, Timestamp.valueOf(article.getTiming()));
				} else {
					ps.setTimestamp(3, Timestamp.valueOf(new Date().toString()));
				}
				ps.setString(4, article.getContent());
				ps.setString(5, article.getKeyWord());
				if (!"".equals(article.getShareCount()) && article.getShareCount() != null) {
					ps.setInt(6, Integer.valueOf(article.getShareCount()));
				} else {
					ps.setInt(6, 0);
				}
				if (!"".equals(article.getGoodCount()) && article.getGoodCount() != null) {
					ps.setInt(7, Integer.valueOf(article.getGoodCount()));
				} else {
					ps.setInt(7, 0);
				}
				if (!"".equals(article.getReadCount()) && article.getReadCount() != null) {
					ps.setInt(8, Integer.valueOf(article.getReadCount()));
				} else {
					ps.setInt(8, 0);
				}
				if (!"".equals(article.getInfomationType()) && article.getInfomationType() != null) {
					ps.setInt(9, Integer.valueOf(article.getInfomationType()));
				} else {
					ps.setInt(9, 0);
				}
				if (!"".equals(article.getInfomationStatus()) && article.getInfomationStatus() != null) {
					ps.setInt(10, Integer.valueOf(article.getInfomationStatus()));
				} else {
					ps.setInt(10, 0);
				}
				ps.setString(11, article.getSummary());
				ps.setString(12, article.getImage());
				ps.setInt(13, article.getHomeTop());
				ps.setInt(14, article.getInfomationId());
			}
		});
		return article.getInfomationId();
	}

	@Override
	public List<Map<String, Object>> findAllArticle() {
		StringBuffer querySQL = new StringBuffer("select infomation_id,title,author,image,keyword,share_count,good_count,read_count,static_page,infomation_type,infomation_status,home_top,updatetime from infomation order by updatetime desc");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@Override
	public Map<String, Object> findArticleById(String Id) {
		StringBuffer querySQL = new StringBuffer(
				"select infomation_id,title,author,date_format(timing,'%Y-%m-%d %H:%i') timing,content,keyword,infomation_type,summary from infomation where infomation_id = '")
				.append(Id).append("'");
		return jdbcTemplate.queryForMap(querySQL.toString());
	}

	@Override
	public List<Map<String, Object>> findArticle(String infoType, String infoStauts, String pubTime1, String pubTime2) {
		StringBuffer querySQL = new StringBuffer("select * from infomation where 1=1");
		if (infoType != null && !"".equals(infoType)) {
			querySQL.append(" and infomation_type = ").append(infoType);
		}
		if (infoStauts != null && !"".equals(infoStauts)) {
			querySQL.append(" and infomation_status = ").append(infoType);
		}
		if (pubTime1 != null && !"".equals(pubTime1)) {
			querySQL.append(" and timing >= '").append(pubTime1).append("' ");
		}
		if (pubTime2 != null && !"".equals(pubTime2)) {
			querySQL.append(" and timing < '").append(pubTime2).append("' ");
		}
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@Override
	public Integer delArticle(String ids) {
		final String[] idss = ids.split(",");
		StringBuffer deleteSQL = new StringBuffer("");
		deleteSQL.append(" delete from infomation where infomation_id = ?");
		BatchPreparedStatementSetter setter = new BatchPreparedStatementSetter() {
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				ps.setInt(1, Integer.valueOf(idss[i]));
			}

			public int getBatchSize() {
				return idss.length;
			}
		};
		int[] i = this.jdbcTemplate.batchUpdate(deleteSQL.toString(), setter);
		return i.length;
	}

	@Override
	public Integer pubArticle(String id) {
		StringBuffer excuteSQL = new StringBuffer("");
		excuteSQL.append(" update infomation set updatetime=now(),infomation_status=").append(infoStatus[1])
				.append(" where infomation_id = ").append(id);
		return jdbcTemplate.update(excuteSQL.toString());
	}

	public Integer findMaxCount() {
		String maxCountSql = "select count(infomation_id) from infomation where infomation_status=1";
		return (Integer) this.jdbcTemplate.queryForObject(maxCountSql, Integer.class);
	}

	@Override
	public Integer uptArticle(int id, String staticPage) {
		StringBuffer uptSql = new StringBuffer(
				"update infomation set updatetime=now(),infomation_status = 1,static_page = '").append(staticPage)
				.append("'").append(" where infomation_id = ").append(id);
		return jdbcTemplate.update(uptSql.toString());
	}

	@Override
	public Page queryArticleforPage(String infoType, int pageSize, int currentPage) {
		StringBuffer querySQL = new StringBuffer(
				"select infomation_id,title,image,if(char_length(summary)>100,concat(left(summary,100),'...'),summary) summary,date_format(timing,'%Y-%m-%d %H:%i') timing,static_page from infomation where infomation_type =? and infomation_status = 1 order by timing desc limit ?,?");
		StringBuffer querySQL1 = new StringBuffer("select count(1) from infomation where infomation_type =?");
		@SuppressWarnings("deprecation")
		int allrow = jdbcTemplate.queryForInt(querySQL1.toString(), new Object[] { infoType });
		Page page = new Page();

		page.setAllRow(allrow);
		page.setTotalPage(Page.countTotalPage(pageSize, allrow));

		int offset = Page.countOffset(pageSize, currentPage);// 当前页开始记�?
		// page.setPageSize(pageSize);
		page.setCurrentPage(currentPage);
		page.setList(jdbcTemplate.queryForList(querySQL.toString(), new Object[] { infoType, offset, pageSize }));
		page.init();
		return page;
	}

	@Override
	public List<Map<String, Object>> articleTopLine() {
		StringBuffer querySQL = new StringBuffer(
				"(select infomation_type,title,image,summary,static_page,date_format(timing,'%Y-%m-%d') timing from infomation where infomation_type =0 and home_top = 1 and infomation_status = 1 order by timing desc limit 1)");
		querySQL.append("union all");
		querySQL.append("(select infomation_type,title,image,summary,static_page,date_format(timing,'%Y-%m-%d') timing from infomation where infomation_type =1 and home_top = 1 and infomation_status = 1 order by timing desc limit 1)");
		querySQL.append("union all");
		querySQL.append("(select infomation_type,title,image,summary,static_page,date_format(timing,'%Y-%m-%d') timing from infomation where infomation_type =2 and home_top = 1 and infomation_status = 1 order by timing desc limit 1)");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@Override
	public List<Map<String, Object>> artcleNewList(String infoType) {
		StringBuffer querySQL = new StringBuffer("");
		/* if ("0".equals(infoType)) { */
		querySQL.append("select title,timing as timing2,date_format(timing,'%m-%d') timing ,static_page from infomation where infomation_type =? and home_top !=1 and infomation_status=1 order by timing2 desc limit 5");
		/*
		 * } else { querySQL.append(
		 * "select left(title,14) title,date_format(timing,'%m-%d') timing ,static_page from infomation where infomation_type =? and home_top !=1 order by timing desc limit 11"
		 * ); }
		 */
		return jdbcTemplate.queryForList(querySQL.toString(), new Object[] { infoType });
	}

	@Override
	public Map<String, Object> findArticleById2(String Id) {
		StringBuffer querySQL = new StringBuffer("select * from infomation where infomation_id = '").append(Id).append(
				"'");
		return jdbcTemplate.queryForMap(querySQL.toString());
	}
}
