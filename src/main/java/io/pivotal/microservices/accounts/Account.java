package io.pivotal.microservices.accounts;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Persistent account entity with JPA markup. Accounts are stored in an H2
 * relational database.
 * 
 * 
 * @author Paul Chapman
 */
@Entity   //指明这是一个实体类
@Table(name = "City_rain")    //指明该类在数据库中映射的表名
public class Account implements Serializable {   //实现Serializable接口，实现Account类的序列化，便于通过ObjectOuputStream和ObjectInputStream完成对象的存取

	private static final long serialVersionUID = 1L;

	public static Long nextId = 0L;

	@Id    //指明数据表的主键
	protected Long id;

	protected Timestamp time;

	@Column(name = "city")    //定义了将成员属性映射到关系表中的哪一列和该列的结构信息,结构信息包括：name（映射的列名），unique（是否为主键），nullable（是否可为空）等
	protected String city;

	@Column(name = "mount", columnDefinition = "double")
	@Basic
	protected float mount;

	/**
	 * This is a very simple, and non-scalable solution to generating unique
	 * ids. Not recommended for a real application. Consider using the
	 * <tt>@GeneratedValue</tt> annotation and a sequence to generate ids.
	 *  <tt>@GeneratedValue</tt> 注释定义了标识字段生成方式
	 * 
	 * @return The next available id.
	 */
	protected static Long getNextId() {
		//使用同步锁机制，在执行synchronized代码块时会锁定当前的对象，只有执行完该代码块才能释放该对象锁，下一个线程才能执行并锁定该对象
		synchronized (nextId) {
			return nextId++;
		}
	}

	/**
	 * Default constructor for JPA only.
	 */
	protected Account() {
		//mount = 0;
	}

	public Account(Timestamp time, String city) {
		id = getNextId();
		this.time = time;
		this.city = city;
		//mount = 0;
	}

	public long getId() {
		return id;
	}

	/**
	 * Set JPA id - for testing and JPA only. Not intended for normal use.
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

	public void withdraw(float amount) {
		mount-=amount;
	}

	public void deposit(float amount) {
		mount+=amount;
	}

	@Override
	public String toString() {
		return time + " [" + city + "]: $" + mount;
	}

}
