package io.pivotal.microservices.services.web;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonRootName;

/**
 * Account DTO - used to interact with the {@link WebAccountsService}.
 * 
 * @author Paul Chapman
 */
@JsonRootName("Account")   //定义json数据中根元素的名称，即以json格式传递的对象的类名。
public class Account {

	protected Long id;
	protected Timestamp time;
	protected String city;
	protected float mount;

	/**
	 * Default constructor for JPA only.
	 */
	protected Account() {
		mount=0;
	}

	public long getId() {
		return id;
	}

	/**
	 * Set JPA id - for testing a
	 * nd JPA only. Not intended for normal use.
	 * 
	 * @param id
	 *            The new id.
	 */
	protected void setId(long id) {
		this.id = id;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public float getMount() {
		return mount;
	}

	public void setMount(float mount) {
		this.mount = mount;
	}

	@Override
	public String toString() {
		return time + " [" + city + "]: $" + mount;
	}

}
