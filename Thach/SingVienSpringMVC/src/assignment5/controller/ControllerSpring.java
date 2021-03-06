package assignment5.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import assignment5.bean.SinhVien;
import assignment5.dao.SinhVienDao;

@Controller
public class ControllerSpring {
	@Autowired
	SinhVienDao sinhVienDao;

	public static int pageIndex;
	public static double totalPage;
	public static double totalRecord;
	public static double recordPerPage;
	
	// đường dẫn upload file
	private static final String UPLOAD_DIRECTORY ="/upload";  

	List<SinhVien> listSinhVien = new ArrayList<>();

	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("redirect:/1");
	}
	
	@RequestMapping(value = "/{pageid}")
	public ModelAndView listSinhVien(@PathVariable int pageid) {
		totalRecord = sinhVienDao.totalRecord();
		recordPerPage = 2.0;
		totalPage = Math.ceil(totalRecord / recordPerPage);

		pageIndex = pageid;

		int start = (pageid - 1) * (int) recordPerPage;
		if(start < 0) {
			start = 0;
		}

		listSinhVien = sinhVienDao.listSinhVien(start, (int) recordPerPage);
		ModelAndView model = new ModelAndView("index");
		model.addObject("listSinhVien", listSinhVien);
		model.addObject("totalPage", (int) totalPage);
		model.addObject("pageIndex", pageid);
		return model;
	}

	@RequestMapping(value = { "/addSv" }, method = RequestMethod.GET)
	public ModelAndView addSv() {
		return new ModelAndView("addSv", "command", new SinhVien()); // "command" mặc định của spring frame work
	}

	@RequestMapping(value = "/addSave", method = RequestMethod.POST)
	public ModelAndView addSave(@ModelAttribute("command") @Valid SinhVien sv, BindingResult result, 
			@RequestParam("file") CommonsMultipartFile file, HttpSession session)  throws IOException {
		if (result.hasErrors()) {
			return new ModelAndView("addSv");
		}

		int check = sinhVienDao.checkExistMaSv(sv.getMaSv());

		if (check > 0) {
			String message = "Mã sinh viên đã tồn tại";
			return new ModelAndView("addSv", "mess", message);
		} else {
			ServletContext context = session.getServletContext();
			String path = context.getRealPath(UPLOAD_DIRECTORY);
			String filename = file.getOriginalFilename();
			System.out.println(path + " " + filename);
			byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));
		    sv.setHinhAnh(filename);
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();
			sinhVienDao.insert(sv);
			totalRecord = sinhVienDao.totalRecord();
			recordPerPage = 2.0;
			totalPage = Math.ceil(totalRecord / recordPerPage);
			if (pageIndex < (int) totalPage) {
				pageIndex = (int) totalPage;
			}
			return new ModelAndView("redirect:/"); // mặc định trở về trang index. đã đc định nghĩa ở web.xml
		}
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView editSave(@ModelAttribute("command") SinhVien sv) {
		
		sinhVienDao.update(sv);
		return new ModelAndView("redirect:/"); // mặc định trở về trang index. đã đc định nghĩa ở web.xml
	}

	@RequestMapping("/editSv/{maSv}")
	public ModelAndView getSv(@PathVariable String maSv) {
		SinhVien sv = sinhVienDao.getEdit(maSv);
		return new ModelAndView("editSv", "command", sv); // "command" mặc định của spring frame work
	}

	@RequestMapping("deleteSv/{maSv}")
	public ModelAndView delete(@PathVariable String maSv) {
		sinhVienDao.delete(maSv);
		totalRecord = sinhVienDao.totalRecord();
		totalPage = Math.ceil(totalRecord / recordPerPage);
		if (pageIndex > (int) totalPage) {
			pageIndex = (int) totalPage;
		}
		return new ModelAndView("redirect:/" + pageIndex); // mặc định trở về trang index. đã đc định nghĩa ở web.xml
	}
}
