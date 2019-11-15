package per.czt.mynovel.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private Integer id;
	@Column(name="user_name",unique=true)
	private String username;
	@Column(name="user_password")
	private String password;
	@Column(name="user_email")
	private String email;
	
	@Column(name="user_phone")
	private String phone;
	@ManyToMany(cascade=CascadeType.PERSIST,fetch=FetchType.EAGER)
	@JoinTable(name="bookshelf",joinColumns=@JoinColumn(name="user_id"),inverseJoinColumns=@JoinColumn(name="novel_id"))
	private Set<Novel> novels=new HashSet<Novel>();
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Novel> getNovels() {
		return novels;
	}
	public void setNovels(Set<Novel> novels) {
		this.novels = novels;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email + "]";
	}
	

}
