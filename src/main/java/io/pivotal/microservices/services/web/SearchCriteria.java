package io.pivotal.microservices.services.web;

import java.sql.Timestamp;

import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

public class SearchCriteria {
	private String accountTime;

	private String searchText;

	public String getAccountTime() {
		return accountTime;
	}

	public void setAccountTime(String accountTime) {
		this.accountTime = accountTime;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public boolean isValid() {
		//StringUtils.hasText(str)方法，如果str==nul则返回false，否则返回true
		if (StringUtils.hasText(accountTime))
			return !(StringUtils.hasText(searchText));
		else
			return (StringUtils.hasText(searchText));
	}

	public boolean validate(Errors errors) {
		if (StringUtils.hasText(accountTime)) 
		{
				try {
					Timestamp.valueOf(accountTime);
					//Integer.parseInt(accountTime);
				} catch (Exception e) {
					errors.rejectValue("accountTime", "badFormat",
							"Account time should be in right format");
				}

			if (StringUtils.hasText(searchText)) {
				errors.rejectValue("searchText", "nonEmpty",
						"Cannot specify account number and search text");
			}
		} else if (StringUtils.hasText(searchText)) {
			; // Nothing to do
		} else {
			errors.rejectValue("accountNumber", "nonEmpty",
					"Must specify either an account number or search text");

		}

		return errors.hasErrors();
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return (StringUtils.hasText(accountTime) ? "time: " + accountTime
				: "")
				+ (StringUtils.hasText(searchText) ? " text: " + searchText
						: "");
	}
}
