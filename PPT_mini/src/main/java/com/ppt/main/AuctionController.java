
package com.ppt.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppt.model.Auction;
import com.ppt.service.auction.IAuctionManageService;

/**
 * Handles requests for the application home page.
 */

@Controller
public class AuctionController {

//	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	@Autowired
	IAuctionManageService AuctionManageService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String buy(Locale locale, Model model) {
		
		List<Auction> auctions = null;//AuctionManageService.sortNewAuction('B');
		model.addAttribute("Auctions", auctions);
		return "Buy";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		System.out.println("/signup");
		List<Auction> auctions = null;//AuctionManageService.sortNewAuction('B');
		model.addAttribute("Auctions", auctions);
		return "signup";
	}
	
	
	@RequestMapping(value = "/sell", method = RequestMethod.GET)
	public String sell(Locale locale, Model model) {
		
		List<Auction> auctions = null;//AuctionManageService.sortNewAuction('S');
		model.addAttribute("Auctions", auctions);
		return "Sell";
	}

	
	@RequestMapping(value = "/registerSell", method = RequestMethod.POST)
	public String registerSell(Locale locale, Model model) {
		
		List<Auction> auctions = null; //AuctionManageService.sortNewAuction('S');
		model.addAttribute("Auctions", auctions);
		return "registerSell";
	}
	
	@RequestMapping(value = "/registerBuy", method = RequestMethod.POST)
	public String registerBuy(Locale locale, Model model) {
		
		List<Auction> auctions = null;//AuctionManageService.sortNewAuction('B');
		model.addAttribute("Auctions", auctions);
		return "registerBuy";
	}
}
