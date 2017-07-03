package io.pivotal.microservices.accounts;

import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.pivotal.microservices.exceptions.AccountNotFoundException;

/**
 * A RESTFul controller for accessing account information.
 * 
 * @author Paul Chapman
 */
@RestController   //@RestController = @Controller + @ResponseBody, 不能返回jsp页面，只能返回json、xml等格式的内容
public class AccountsController {

	protected Logger logger = Logger.getLogger(AccountsController.class
			.getName());
	protected AccountRepository accountRepository;

	/**
	 * Create an instance plugging in the respository of Accounts.
	 * 
	 * @param accountRepository
	 *            An account repository implementation.
	 */
	@Autowired   //@Autowired标签会自动寻找相应的备选对象完成对bean的注入工作
	public AccountsController(AccountRepository accountRepository) {
		this.accountRepository = accountRepository;

		logger.info("AccountRepository says system has "
				+ accountRepository.countAccounts() + " accounts");    //执行countAccount方法的注释中的SQL语句
	}

	/**
	 * Fetch an account with the specified account number.
	 * 
	 * @param accountNumber
	 *            A numeric, 9 digit account number.
	 * @return The account if found.
	 * @throws AccountNotFoundException
	 *             If the number is not recognised.
	 */
	@RequestMapping(value = "/accounts/time" , method=RequestMethod.GET)
	public List<Account>  byTime(@RequestParam("time") String accountTime) {

		logger.info("accounts-service byTimer() invoked: " + accountTime);
		
		List<Account>  account = accountRepository.findByTime(Timestamp.valueOf(accountTime));
		logger.info("accounts-service byTime() found: " + account);

		if (account == null)
			throw new AccountNotFoundException(accountTime);
		else {
			return account;
		}
	}

	/**
	 * Fetch accounts with the specified name. A partial case-insensitive match
	 * is supported. So <code>http://.../accounts/owner/a</code> will find any
	 * accounts with upper or lower case 'a' in their name.
	 * 
	 * @param partialName
	 * @return A non-null, non-empty set of accounts.
	 * @throws AccountNotFoundException
	 *             If there are no matches at all.
	 */
	@RequestMapping(value = "/accounts/city" , method=RequestMethod.GET)
	public List<Account> byCity(@RequestParam("city") String partialName) {
		logger.info("accounts-service byOwner() invoked: "
				+ accountRepository.getClass().getName() + " for "
				+ partialName);

		List<Account> accounts = accountRepository
				.findByCityContainingIgnoreCase(partialName);
		logger.info("accounts-service byOwner() found: " + accounts);

		if (accounts == null || accounts.size() == 0)
			throw new AccountNotFoundException(partialName);
		else {
			return accounts;
		}
	}
	
	@RequestMapping(value="/accounts" , method=RequestMethod.GET)
	public Account byTimeAndCity(@RequestParam("time") String accountTime,
																		@RequestParam("city") String cityName){
		List<Account>  account = accountRepository.findByTime(Timestamp.valueOf(accountTime));
		//logger.info("accounts-service byTime() found: " + account);
		for(Account a:account){
			if(a.city.equals(cityName)){
				return a;
			}
		}
		throw new AccountNotFoundException(Timestamp.valueOf(accountTime),cityName);
	}
	
	
}
