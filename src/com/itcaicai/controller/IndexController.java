/**
 * 首页跳转
 */
package com.itcaicai.controller;

import java.util.List;

import com.itcaicai.model.MovieInfo;
import com.jfinal.core.Controller;

/**
 * @author icer
 *
 */
public class IndexController extends Controller {

	/**
	 * 首页跳转
	 */
	public void index() {
		System.out.println("index start...");
		render("/jsp/index.jsp");
		System.out.println("index end...");
	}

	/**
	 * 跳往管理页
	 */
	public void toMgr() {
		renderJsp("/admin/index.jsp");
	}

	/**
	 * 查询处理
	 */
	public void toQuery() {
		System.out.println("query start...");
		String sqlStr_id = "select *from itcc_movie_info where movieid  = ? ";
		String sqlStr_name = "select *from itcc_movie_info where name ";
		String sqlStr_actor = "select *from itcc_movie_info where actor ";
		String sqlStr_desc = "select *from itcc_movie_info where description ";
		String param = this.getPara("queryCondition");
		if (null == param) {
			param = this.getSessionAttr("condition");
		}
		System.out.println(param);
		String param_not_id = "like '%" + param + "%'";
		List<MovieInfo> movies = MovieInfo.movieDao.find(sqlStr_id, param);
		if (null == movies || movies.isEmpty()) {
			movies = MovieInfo.movieDao.find(sqlStr_name + param_not_id);
		}
		if (null == movies || movies.isEmpty()) {
			movies = MovieInfo.movieDao.find(sqlStr_actor + param_not_id);
		}
		if (null == movies || movies.isEmpty()) {
			movies = MovieInfo.movieDao.find(sqlStr_desc + param_not_id);
		}
		this.setAttr("movieInfo", movies);
		this.setSessionAttr("condition", param);
		System.out.println(this.getSessionAttr("condition"));
		render("/jsp/searchResult.jsp");
		System.out.println("query end...");
	}

	public void toAdd() {
		renderJsp("/jsp/add.jsp");
	}

	/**
	 * 添加处理
	 */
	public void toAddSubmit() {
		String movieid = this.getPara("movieid");
		String name = this.getPara("name");
		String description = this.getPara("description");
		String actor = this.getPara("actor");
		String path = this.getPara("path");
		boolean flag = new MovieInfo().set("movieid", movieid)
				.set("name", name).set("description", description)
				.set("actor", actor).set("path", path).save();
		this.setAttr("flag", flag);
		if (flag) {
			this.setSessionAttr("condition", movieid);
			toQuery();
		}
	}

	/**
	 * 修改处理
	 */
	public void toUpdate() {
		System.out.println("toUpdate start");
		String id = this.getPara("id");
		String movieid = this.getPara("movieid");
		String name = this.getPara("name");
		String description = this.getPara("description");
		String actor = this.getPara("actor");
		String path = this.getPara("path");

		boolean flag = MovieInfo.movieDao.findById(id).set("name", name)
				.set("movieid", movieid).set("description", description)
				.set("actor", actor).set("path", path).update();
		this.setAttr("flag", flag);
		if (flag) {
			toQuery();
		}
		System.out.println("toUpdate end");
	}

	public void toSearchDetail() {
		System.out.println("---toSearchDetail start---");
		MovieInfo movie = MovieInfo.movieDao.findById(this.getPara("id"));
		this.setAttr("movieInfo", movie);
		renderJsp("/jsp/toSearchDetail.jsp");
		System.out.println("---toSearchDetail end---");
	}

	/**
	 * 删除处理
	 */
	public void toDelete() {
		System.out.println("toDelete start");
		boolean flag = MovieInfo.movieDao.deleteById(this.getPara("id"));
		this.setAttr("flag", flag);
		if (flag) {
			toQuery();
		}
		System.out.println("---toDelete end---");
	}

	/**
	 * 模板文件导入
	 */
	public void toImport() {
		System.out.println("toImport");
	}
}
