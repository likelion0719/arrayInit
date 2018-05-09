package egovframework.example.main.web;

import java.util.Arrays;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.main.service.MainService;

@Controller
public class MainController {

	@Resource(name = "mainService")
	MainService mainService;
	
	@RequestMapping("main.do")
	public String initMain(HttpServletRequest request, ModelMap model) throws Exception{
		System.out.println(request.getParameter("arr"));
		
		String str = request.getParameter("arr");
		if (str != null) {
			String[] arr = str.split(",");
			System.out.println(Arrays.toString(arr));
			
			model.addAttribute("arr",arr);
		}
		model.addAttribute("seqNoList", mainService.selectSeqNoList());
		
		/*for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
		*/
		// 인덱스를 활용 못함
		/*for (String arr1 : arr) {
			System.out.println(arr1);
		}*/
		return "main/main.tiles";
	}
	
}
