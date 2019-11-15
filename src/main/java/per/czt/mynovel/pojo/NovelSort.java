package per.czt.mynovel.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="novel_sort")
@EntityListeners(AuditingEntityListener.class)
public class  NovelSort implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="novel_sort_id")
	private Integer id;
	
	@Column(name="novel_sort_name",nullable=false,insertable=true,length=128,unique=true)
	private String name;
	
	@Column(name="novel_sort_created_time",nullable=false,insertable=true)
	@CreatedDate
	private java.util.Date created_time;
	
	@Column(name="novel_sort_updated_time",nullable=false,insertable=true)
	@LastModifiedDate
	private java.util.Date updated_time;
	
	
	@OneToMany(mappedBy="novelsort",cascade=CascadeType.PERSIST,fetch=FetchType.EAGER)
	private Set<Novel> novels=new HashSet<Novel>();
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public java.util.Date getCreated_time() {
		return created_time;
	}

	public void setCreated_time(java.util.Date created_time) {
		this.created_time = created_time;
	}

	public java.util.Date getUpdated_time() {
		return updated_time;
	}

	public void setUpdated_time(java.util.Date updated_time) {
		this.updated_time = updated_time;
	}

	public Set<Novel> getNovels() {
		return novels;
	}

	public void setNovels(Set<Novel> novels) {
		this.novels = novels;
	}

	public NovelSort() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "NovelSort [id=" + id + ", name=" + name + ", created_time=" + created_time + ", updated_time="
				+ updated_time + "]";
	}
	
	
	
	

}
