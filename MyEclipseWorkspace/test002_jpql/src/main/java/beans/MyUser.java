package beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "myuser") 
public class MyUser implements Serializable { 
    private static final long serialVersionUID = 1L; 
	
	
	int userid;
	String username;
	String userage;

	@Id
	//表自增长字段，Oracle不支持这种方式
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="userid")
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@Column(name="username",insertable=true)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name="userage")
	public String getUserage() {
		return userage;
	}

	public void setUserage(String userage) {
		this.userage = userage;
	}

}
