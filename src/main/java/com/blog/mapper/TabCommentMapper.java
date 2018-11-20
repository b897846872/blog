package com.blog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.blog.model.po.TabCommentPo;
import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface TabCommentMapper extends BaseMapper<TabCommentPo>{
	List<TabCommentPo> findTabCommentAll(String articleId);
	void saveTabComment(TabCommentPo tabCommentPo);
	void deleteTabComment(String id);
}
