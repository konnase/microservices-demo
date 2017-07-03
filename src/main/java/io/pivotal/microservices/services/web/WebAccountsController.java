package io.pivotal.microservices.services.web;

import io.pivotal.microservices.services.web.Account;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Client controller, fetches Account info from the microservice via
 * {@link WebAccountsService}.
 * 
 * @author Paul Chapman
 */
@Controller
public class WebAccountsController {

	@Autowired
	protected WebAccountsService accountsService;

	protected Logger logger = Logger.getLogger(WebAccountsController.class
			.getName());

	public WebAccountsController(WebAccountsService accountsService) {
		this.accountsService = accountsService;
	}

	@InitBinder   //表单中的日期字符串和JavaBean的Date类型的转换，而SpringMVC默认不支持这个格式的转换，所以需要手动配置，自定义数据的绑定才能解决这个问题
	public void initBinder(WebDataBinder binder) {
		binder.setAllowedFields("accountNumber", "searchText");
	}

	@RequestMapping("/accounts")
	public String goHome() {
		return "index";
	}

	@RequestMapping("/accounts/{accountTime}&{city}")
	public String byTimeAndCity(Model model,
			@PathVariable("accountTime") String accountTime ,
			@PathVariable("city") String city) {

		logger.info("web-service byNumber() invoked: " + accountTime);

		Account account = accountsService.getByTimeAndCity(accountTime,city);
		logger.info("web-service byTimeAndCity() found: " + account);
		model.addAttribute("account", account);
		return "account";
	}

	@RequestMapping("/accounts/{accountTime}")
	public String byTime(Model model,
			@PathVariable("accountTime") String accountTime) {

		logger.info("web-service byNumber() invoked: " + accountTime);

		List<Account>  account = accountsService.findByTime(accountTime);
		logger.info("web-service byNumber() found: " + account);
		model.addAttribute("account", account);
		return "account";
	}
	
	@RequestMapping("/accounts/city/{text}")
	public String citySearch(Model model, @PathVariable("text") String name) {
		logger.info("web-service byCity() invoked: " + name);

		List<Account> accounts = accountsService.byCityContains(name);
		logger.info("web-service byCityr() found: " + accounts);
		model.addAttribute("search", name);
		if (accounts != null)
			model.addAttribute("accounts", accounts);
		return "accounts";
	}

	@RequestMapping(value = "/accounts/search", method = RequestMethod.GET)
	public String searchForm(Model model) {
		model.addAttribute("searchCriteria", new SearchCriteria());
		return "accountSearch";
	}

	@RequestMapping(value = "/accounts/dosearch")
	public String doSearch(Model model, SearchCriteria criteria,
			BindingResult result) {
		logger.info("web-service search() invoked: " + criteria);

		criteria.validate(result);

		if (result.hasErrors())
			return "accountSearch";

		String accountTime = criteria.getAccountTime();
		String city = criteria.getSearchText();
		if(StringUtils.hasText(accountTime)&&StringUtils.hasText(city)){
			return byTimeAndCity(model, accountTime,city);
		}
		else if (StringUtils.hasText(accountTime)) {
			return byTime(model, accountTime);
		} else {
			return citySearch(model, city);
		}
	}
}
