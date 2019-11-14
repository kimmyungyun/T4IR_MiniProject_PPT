
package com.ppt.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ppt.model.Auction;
import com.ppt.model.User;
import com.ppt.service.auction.IAuctionManageService;

/**
 * Handles requests for the application home page.
 */

@Controller
public class AuctionController {

//	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	@Autowired
	IAuctionManageService auctionManageService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String buy(Locale locale, Model model) {
		System.out.println("buy html");
		List<Auction> auctions = auctionManageService.sortNewAuction('B');
		System.out.println(auctions);
		for(Auction auct: auctions) {
			System.out.println(auct.getAuctionId());
		}
		model.addAttribute("Auctions", auctions);
		return "Buy";
	}
	
	@RequestMapping(value = "/sell", method = RequestMethod.GET)
	public String sell(Locale locale, Model model, HttpServletRequest request) {
		System.out.println("/sell");
		
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user.getName());
		}
		
		List<Auction> auctions = auctionManageService.sortNewAuction('S');
		model.addAttribute("Auctions", auctions);
		return "Sell";
	}

	
	@RequestMapping(value = "/Swritepost", method = RequestMethod.GET)
	public String registerSell(Locale locale, Model model, HttpServletRequest request) {
		System.out.println("/Swritepost");
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user.getName());
			
			model.addAttribute("writerName", user.getName());
		}
		
		
		//List<Auction> auctions = null; //AuctionManageService.sortNewAuction('S');
		//model.addAttribute("Auctions", auctions);
		return "Swritepost";
	}
	
	@RequestMapping(value = "/Bwritepost", method = RequestMethod.GET)
	public String registerBuy(Locale locale, Model model, HttpServletRequest request) {
		System.out.println("/Bwritepost");
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user.getName());
			
			model.addAttribute("writerName", user.getName());
		}
		//List<Auction> auctions = null;//AuctionManageService.sortNewAuction('B');
		//model.addAttribute("Auctions", auctions);
		return "Bwritepost";
	}
	
	
	@RequestMapping(value = "/sell/${auction.auctionId}", method = RequestMethod.GET)
	public String registerSellItem(@RequestParam("auction") Auction acution, Locale locale, Model model, HttpServletRequest request) {
		System.out.println("/Sreadpost");
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user.getName());
			
			model.addAttribute("writerName", user.getName());
		}
		
		
		//List<Auction> auctions = null; //AuctionManageService.sortNewAuction('S');
		//model.addAttribute("Auctions", auctions);
		return "Sreadpost";
	}
	
	
	@RequestMapping(value = "/buy/${auction.auctionId}", method = RequestMethod.GET)
	public String registerBuyItem(@RequestParam("auction") Auction acution, Locale locale, Model model, HttpServletRequest request) {
		System.out.println("/Breadpost");
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user.getName());
			
			model.addAttribute("writerName", user.getName());
		}
		
		
		//List<Auction> auctions = null; //AuctionManageService.sortNewAuction('S');
		//model.addAttribute("Auctions", auctions);
		return "Breadpost";
	}
}
