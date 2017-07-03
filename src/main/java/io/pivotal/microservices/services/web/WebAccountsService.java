package io.pivotal.microservices.services.web;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import io.pivotal.microservices.exceptions.AccountNotFoundException;

/**
 * Hide the access to the microservice inside this local service.
 * 
 * @author Paul Chapman
 */
@Service    //服务层组件，用于标注业务层组件,表示定义一个bean，自动根据bean的类名实例化一个首写字母为小写的bean,如果需要自己改名字则:@Service("你自己改的bean名")
public class WebAccountsService {

	@Autowired
	@LoadBalanced    //开启负载均衡的能力
	protected RestTemplate restTemplate;  //spring提供REST接口的一个模板

	protected String serviceUrl;

	protected Logger logger = Logger.getLogger(WebAccountsService.class
			.getName());

	public WebAccountsService(String serviceUrl) {
		this.serviceUrl = serviceUrl.startsWith("http") ? serviceUrl
				: "http://" + serviceUrl;
	}

	/**
	 * The RestTemplate works because it uses a custom request-factory that uses
	 * Ribbon to look-up the service to use. This method simply exists to show
	 * this.
	 */
	@PostConstruct     //被@PostConstruct修饰的方法会在服务器加载Servlet的时候运行，并且只会被服务器执行一次。PostConstruct在构造函数之后执行,init()方法之前执行
	public void demoOnly() {
		// Can't do this in the constructor because the RestTemplate injection
		// happens afterwards.
		logger.warning("The RestTemplate request factory is "
				+ restTemplate.getRequestFactory().getClass());
	}

	public List<Account>  findByTime(String accountTime) {

		logger.info("findByTimer() invoked: for " + accountTime);
		Account[] accounts = restTemplate.getForObject(serviceUrl + "/accounts/{accountTime}",
				Account[].class, accountTime);
		 return Arrays.asList(accounts);
	}

	public List<Account> byCityContains(String name) {
		logger.info("byCityContains() invoked:  for " + name);
		Account[] accounts = null;

		try {
			accounts = restTemplate.getForObject(serviceUrl
					+ "/accounts/city/{name}", Account[].class, name);
		} catch (HttpClientErrorException e) { // 404
			// Nothing found
		}

		if (accounts == null || accounts.length == 0)
			return null;
		else
			return Arrays.asList(accounts);
	}

	public Account getByTimeAndCity(String accountTime , String city) {
		Account[] account = restTemplate.getForObject(serviceUrl
				+ "/accounts/{accountTime}", Account[].class, accountTime);
		//List<Account> lists = Arrays.asList(account);
	    for(Account a : account){
	    	if(a.city.equals(city)){
	    		return a;
	    	}
	    }
		throw new AccountNotFoundException(accountTime);
	}
}
