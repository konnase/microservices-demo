package io.pivotal.microservices.accounts;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Logger;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import io.pivotal.microservices.exceptions.AccountNotFoundException;

public abstract class AbstractAccountControllerTests {

	//protected static final SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy-MM-dd HH:mm:ss " );
	protected static final String ACCOUNT_1 ="2016-07-01 00:00:00";
	protected static final String ACCOUNT_1_NAME = "南京";

	@Autowired
	AccountsController accountController;

//	@Test
//	public void validAccountNumber() {
//		Logger.getGlobal().info("Start validAccountNumber test");
//		List<Account> account = accountController.byTime(ACCOUNT_1);
//
//		Assert.assertNotNull(account);
//		Assert.assertEquals(ACCOUNT_1, account.get(1).getTime());
//		Assert.assertEquals(ACCOUNT_1_NAME, account.get(1).getCity());
//		Logger.getGlobal().info("End validAccount test");
//	}
//	
//	@Test
//	public void validAccountOwner() {
//		Logger.getGlobal().info("Start validAccount test");
//		List<Account> accounts = accountController.byCity(ACCOUNT_1_NAME);
//		Logger.getGlobal().info("In validAccount test");
//
//		Assert.assertNotNull(accounts);
//		Assert.assertEquals(1, accounts.size());
//
//		Account account = accounts.get(0);
//		Assert.assertEquals(ACCOUNT_1, account.getTime());
//		Assert.assertEquals(ACCOUNT_1_NAME, account.getCity());
//		Logger.getGlobal().info("End validAccount test");
//	}
//
//	@Test
//	public void validAccountOwnerMatches1() {
//		Logger.getGlobal().info("Start validAccount test");
//		List<Account> accounts = accountController.byCity("南京");
//		Logger.getGlobal().info("In validAccount test");
//
//		Assert.assertNotNull(accounts);
//		Assert.assertEquals(1, accounts.size());
//
//		Account account = accounts.get(0);
//		Assert.assertEquals(ACCOUNT_1, account.getTime());
//		Assert.assertEquals(ACCOUNT_1_NAME, account.getCity());
//		Logger.getGlobal().info("End validAccount test");
//	}
//	
//	@Test
//	public void validAccountOwnerMatches2() {
//		Logger.getGlobal().info("Start validAccount test");
//		List<Account> accounts = accountController.byCity("南京");
//		Logger.getGlobal().info("In validAccount test");
//
//		Assert.assertNotNull(accounts);
//		Assert.assertEquals(1, accounts.size());
//
//		Account account = accounts.get(0);
//		Assert.assertEquals(ACCOUNT_1, account.getTime());
//		Assert.assertEquals(ACCOUNT_1_NAME, account.getCity());
//		Logger.getGlobal().info("End validAccount test");
//	}
//
//	@Test
//	public void invalidAccountNumber() {
//		try {
//			accountController.byTime("2016-07-01 00:00:00");
//			Assert.fail("Expected an AccountNotFoundException");
//		} catch (AccountNotFoundException e) {
//			// Worked!
//		}
//	}
//
//	@Test
//	public void invalidAccountName() {
//		try {
//			accountController.byCity("Fred Smith");
//			Assert.fail("Expected an AccountNotFoundException");
//		} catch (AccountNotFoundException e) {
//			// Worked!
//		}
//	}
}
