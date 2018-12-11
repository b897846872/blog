package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blog.common.FileUtils;
import com.blog.common.ResponseResultUtil;
import com.blog.model.ResponseResult;
import com.blog.model.po.TabArticlePo;
import com.blog.model.vo.TabArticleVo;
import com.blog.service.TabArticleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("tabArticle")
@RestController
public class TabArticleController {
	private static Logger log = LoggerFactory.getLogger(TabArticleController.class);
	@Autowired
	private TabArticleService tabArticleService;
	@Value("${cbs.imagesPath}")
	private String mImagesPath;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize,
									@RequestParam(required = false, defaultValue="") String typeId,
									@RequestParam(required = false, defaultValue="") String categoryId,
									@RequestParam(required = false, defaultValue="") String searchValue) {
		Map<String, String> param = new HashMap<>();
		param.put("typeId", typeId);
		param.put("categoryId", categoryId);
		param.put("searchValue", searchValue);
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<TabArticleVo> sysConfigPageInfo = new PageInfo<>(tabArticleService.findTabArticle(param));
        log.info("查询文章", sysConfigPageInfo);
		return ResponseResultUtil.success(sysConfigPageInfo);
	}
	
	@PostMapping("uploadImage")
	public ResponseResult uploadImage(@RequestBody MultipartFile file) {
		Map<String, String> map = new HashMap<>();
		System.out.println(file);
        // 要上传的目标文件存放路径
        String localPath = "D:/newfile/";
        // 上传成功或者失败的提示
        String msg = "";

        if (FileUtils.upload(file, localPath, file.getOriginalFilename())){
            // 上传成功，给出页面提示
            msg = "上传成功！";
        }else {
            msg = "上传失败！";

        }

        // 显示图片
        map.put("msg", msg);
        map.put("fileName", file.getOriginalFilename());
		return ResponseResultUtil.success("http://127.0.0.1:8099/images/"+file.getOriginalFilename());
	}
	
	@PutMapping("save")
	@SuppressWarnings("rawtypes")
	public ResponseResult save(@RequestBody TabArticlePo tabArticlePo){
		tabArticleService.saveTabArticle(tabArticlePo);
		return ResponseResultUtil.success();
	}
	
	@DeleteMapping("delete")
	@SuppressWarnings("rawtypes")
	public ResponseResult delete(@RequestParam String id){
		tabArticleService.deleteTabArticle(id);
		return ResponseResultUtil.success();
	}
	
	@PutMapping("update")
	@SuppressWarnings("rawtypes")
	public ResponseResult update(@RequestBody TabArticlePo tabArticlePo){
		tabArticleService.updateTabArticle(tabArticlePo);
		return ResponseResultUtil.success();
	}
}
