package com.quantang.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.NoticeDao;
import com.quantang.domain.Notice;
import com.quantang.domain.Page;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@SuppressWarnings("deprecation")
	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		StringBuffer excuteSQL = new StringBuffer("");
		if (notice.getNoticeid() != null && !"".equals(notice.getNoticeid())) {
			excuteSQL.append("update notice set title=? ,content=?,crdate=?,status=0 where noticeid=?");
		} else {
			// MAX id
			StringBuffer maxSQL = new StringBuffer("select ifnull(max(noticeid),0)+1 noticeid from notice ");
			notice.setNoticeid(String.valueOf(jdbcTemplate.queryForInt(maxSQL.toString())));
			excuteSQL.append("insert into notice(title,content,crdate,status,noticeid) values (?,?,?,0,?)");
		}
		jdbcTemplate.update(excuteSQL.toString(),
				new Object[] { notice.getTitle(), notice.getContent(), notice.getCrdate(), notice.getNoticeid() });
	}

	@Override
	public List<Map<String, Object>> findAllnotice() {
		// TODO Auto-generated method stub
		StringBuffer querySQL = new StringBuffer("select * from notice order by status,crdate");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@Override
	public Map<String, Object> getNoticeById(String noticeid) {
		// TODO Auto-generated method stub
		StringBuffer querySQL = new StringBuffer(
				"select noticeid,title,content,date_format(crdate,'%Y-%m-%d %H:%i') crdate,static_page,status from notice where noticeid = ?");
		return jdbcTemplate.queryForMap(querySQL.toString(), new Object[] { noticeid });
	}

	@Override
	public Integer delArticle(String ids) {
		// TODO Auto-generated method stub
		final String[] idss = ids.split(",");
		StringBuffer deleteSQL = new StringBuffer("");
		deleteSQL.append(" delete from notice where noticeid = ?");
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
	public Integer findMaxCount() {
		// TODO Auto-generated method stub
		String maxCountSql = "select count(noticeid) from notice where status=1";
		return (Integer) this.jdbcTemplate.queryForObject(maxCountSql, Integer.class);
	}

	@Override
	public Integer pubNotice(String id, String staticPage) {
		// TODO Auto-generated method stub
		StringBuffer uptSql = new StringBuffer("update notice set status = 1,static_page = '").append(staticPage)
				.append("'").append(" where noticeid = ").append(id);
		return jdbcTemplate.update(uptSql.toString());
	}

	@Override
	public List<Map<String, Object>> getNoticeLast() {
		// TODO Auto-generated method stub
		StringBuffer querySQL = new StringBuffer(
				"select ifnull(title,'') title,ifnull(static_page,'') static_page from notice where status = 1 order by crdate desc limit 4");
		// StringBuffer querySQL2 = new StringBuffer(
		// "select count(1) from notice where status = 1 order by crdate desc limit 1");
		// if (jdbcTemplate.queryForInt(querySQL2.toString()) > 0) {
		return jdbcTemplate.queryForList(querySQL.toString());
		// }
		// return null;

	}

	@Override
	public Page queryNoticeforPage(int pageSize, int currentPage) {
		StringBuffer querySQL = new StringBuffer(
				"select noticeid,title,if(char_length(content)>100,concat(left(content,100),'...'),content) content,date_format(crdate,'%Y-%m-%d') crdate,static_page from notice where status = 1 order by crdate desc limit ?,?");
		StringBuffer querySQL1 = new StringBuffer("select count(1) from notice where status =1");
		@SuppressWarnings("deprecation")
		int allrow = jdbcTemplate.queryForInt(querySQL1.toString());
		Page page = new Page();

		page.setAllRow(allrow);
		page.setTotalPage(Page.countTotalPage(pageSize, allrow));

		int offset = Page.countOffset(pageSize, currentPage);// 当前页开始记�?
		// page.setPageSize(pageSize);
		page.setCurrentPage(currentPage);
		page.setList(jdbcTemplate.queryForList(querySQL.toString(), new Object[] { offset, pageSize }));
		page.init();
		return page;
	}

}
