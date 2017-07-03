package io.pivotal.microservices.accounts;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

/**
 * Repository for Account data implemented using Spring Data JPA.
 * Repository 是一个标记型接口，它不包含任何方法，当然如果有需要，Spring Data 也提供了若干 Repository 子接口，其中定义了一些常用的增删改查，以及分页相关的方法
 * 
 * @author Paul Chapman
 */
public interface AccountRepository extends Repository<Account, Long> {
	
	/**
	 * Find an account with the specified account number.
	 *
	 * @param accountNumber
	 * @return The account if found, null otherwise.
	 */
	public List<Account>  findByTime(Timestamp accountTime);

	/**
	 * Find accounts whose owner name contains the specified string
	 * 
	 * @param partialName
	 *            Any alphabetic string.
	 * @return The list of matching accounts - always non-null, but may be
	 *         empty.
	 */
	public List<Account> findByCityContainingIgnoreCase(String partialName);

	/**
	 * Fetch the number of accounts known to the system.
	 * 
	 * @return The number of accounts.
	 */
	@Query("SELECT count(*) from Account")
	public int countAccounts();
}
