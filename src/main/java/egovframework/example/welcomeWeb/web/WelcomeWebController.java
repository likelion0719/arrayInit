package egovframework.example.welcomeWeb.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class WelcomeWebController {

	@Resource(name = "welcomeWebService")
	private WelcomeWebService welcomeWebService;
	
	@RequestMapping("welcomeWeb.do")
	public String welcomeWeb(HttpServletRequest request,@RequestParam(value="selectSeqNo",
	required=false) List<String> selectSeqNo,@RequestParam(value="selectCount") String selectCount,
			@RequestParam(value="selectColumn",required=false) List<String> selectColumn,
			ModelMap model) throws Exception {
		System.out.println(selectCount);
		System.out.println(selectColumn);
		model.addAttribute("selectCount",selectCount);
		model.addAttribute("selectColumn",selectColumn);
		System.out.println(Arrays.toString(request.getParameterValues("selectSeqNo")));
		System.out.println("-------------------------");
		model.addAttribute("selectSeqNo", selectSeqNo);
		//model.addAttribute("selectSeqNo", request.getParameterValues("selectSeqNo"));
		
		List<EgovMap> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		System.out.println("welcomeWebList:"+welcomeWebList);
		model.addAttribute("welcomeWebList", welcomeWebList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
	@RequestMapping("welcomeWeb2.do")
	public String welcomeWeb2(ModelMap model) throws Exception {
		List<EgovMap> welcomeWeb = welcomeWebService.selectWelcomeWebServiceList();
		List<EgovMap> welcomeWebList = new ArrayList<>();
		
		for (int i =0; i<welcomeWeb.size(); i++) {
			int seqNo =Integer.parseInt((String) welcomeWeb.get(i).get("seqNo"));
			if( seqNo%2 == 0) {
				welcomeWebList.add(welcomeWeb.get(i));
			}
		}
		
		model.addAttribute("welcomeWebList",welcomeWebList);
		return "welcomeWeb/welcomeWeb2.tiles";
	}
}
