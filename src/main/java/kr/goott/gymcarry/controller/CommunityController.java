package kr.goott.gymcarry.controller;
import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.model.dao.CommunityDAO;
import kr.goott.gymcarry.model.dao.CommunityReplyDAO;
import kr.goott.gymcarry.model.dto.CommunityDTO;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Inject
	CommunityDAO communityDAO;
	@Inject 
	CommunityReplyDAO communityReplyDao;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "community.do", method = RequestMethod.GET)
	public String community(Model model) {
		logger.info("getting");
		List<CommunityDTO> list = communityDAO.comList();
		logger.info(list.get(0).getComImage()+"==========");
		model.addAttribute("uploadPath", "");
		model.addAttribute("list", list);  //占쏙옙占� 커占승댐옙티 占쏙옙占쏙옙트
		logger.info("get it");
		return "community/list";
	}
	



	  @RequestMapping(value="community/upload.do" , method=RequestMethod.POST)
	  public String insertCommunity(@RequestParam("comDes") String comDes , @RequestParam("userid") String userid ,  MultipartFile comImage)throws Exception {
		  System.out.println("========================");
		  logger.info(comDes);
		  logger.info(userid);
		  
		  logger.info("file name="+comImage.getOriginalFilename());
			logger.info("file size="+comImage.getSize());
			logger.info("content type="+comImage.getContentType()); 
		  
			String savedName = comImage.getOriginalFilename(); //
			savedName = uploadFile(savedName,comImage.getBytes());   //upload file at this time			
			CommunityDTO dto = new CommunityDTO();
			dto.setUserid(userid);
			dto.setComDes(comDes);
			dto.setComImage(savedName);
			
			communityDAO.insertCommunity(dto); 
//			mav.setViewName("community/list");
//			mav.addObject("savedName",savedName); 
			
			
		 // 
		  return "redirect:/community.do"; 
	  }
	  
		public String uploadFile(String oriFilename, byte[] fileData)throws Exception{
			UUID uid = UUID.randomUUID();
			String savedName = uid.toString() +"_" + oriFilename;
			File target = new File(uploadPath,savedName);
			System.out.println("upload path==========="+uploadPath);
			FileCopyUtils.copy(fileData, target);
			
			return savedName;
		}
		
		public boolean deleteFile(String deleteFilename) {
			File file = new File(uploadPath,deleteFilename);
			return file.delete();
			
		}
	
		
		//@RequestMapping(value= "community/view/{comNo}", method=RequestMethod.POST)
		public ModelAndView viewCommunity(@PathVariable int comNo ,ModelAndView mav) {

			CommunityDTO dto = communityDAO.viewCommunity(comNo);
			
			mav.addObject("dto",dto);
			mav.setViewName("community/view");
		
			return mav;
		}
		
		@RequestMapping(value= "community/view/{comNo}", method=RequestMethod.GET)
		public ModelAndView viewCommunity2(@PathVariable int comNo ,ModelAndView mav) {
//			logger.info("==========comNo="+comNo);
			
			CommunityDTO dto = communityDAO.viewCommunity(comNo); 
//			logger.info("userid= "+ dto.getUserid());
			mav.addObject("dto",dto);
			//reply
			mav.addObject("replyList",communityReplyDao.viewReply(comNo));
			
			
			
			mav.setViewName("community/view");
		
			return mav;
		}

		@RequestMapping(value= "community/edit/{comNo}", method=RequestMethod.POST)
		public String editCommunity(@PathVariable int comNo ,@RequestParam("comDes") String comDes,@RequestParam("priorImage") String priorImage,MultipartFile comImage) throws Exception {
//			logger.info("edit=======comNo="+comNo);
//			logger.info("edit=======comDes="+comDes);
			logger.info("file name="+comImage.getOriginalFilename());
			CommunityDTO dto = new CommunityDTO();
			
			dto.setComDes(comDes);
			dto.setComNo(comNo);
			if(comImage.getOriginalFilename()=="") {
				//when image doesnt changed
				dto.setComImage(priorImage);  //set prior image name 
			}else {
				//when image and text changed
				String savedName = comImage.getOriginalFilename(); //
				savedName = uploadFile(savedName,comImage.getBytes());   //upload file at this time
				dto.setComImage(savedName);				
			}			
			communityDAO.editCommunity(dto); 			
			return "redirect:/community/view/"+comNo;
			
		}
		
		@RequestMapping(value="community/delete/{comNo}" ,method=RequestMethod.POST)
		public String deleteCommunity(@PathVariable int comNo,@RequestParam("comImage") String comImage) {
			logger.info("delete community called");
			
			communityDAO.deleteCommunity(comNo);
			boolean bool= deleteFile(comImage);
			logger.info("delete? = "+ bool);
			return "redirect:/community.do";
			
		}

	
	

}

