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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="novel")
@EntityListeners(AuditingEntityListener.class)
public class Novel implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "novel_id",insertable=false,updatable=false)
	private Integer id;
	
	@Column(name = "novel_title",nullable=false)
	private String title;
	
	@Column(name = "novel_author",nullable=false)
	private String author;
	
	@Column(name = "novel_covers",length=255,columnDefinition="varchar(255) default 'default.jpg'")
	private String covers;
	
	@CreatedDate
	@Column(name = "novel_uploaded_time",nullable=false)
	private java.util.Date uploaded_time;
	
	@LastModifiedDate
	@Column(name = "novel_updated_time",nullable=false)
	private java.util.Date updated_time;
	@Column(name = "novel_description",nullable=false,columnDefinition="text")
	
	private String description;
	@Column(name = "novel_state")
	private String state;
	
	@Column(name="novel_words")
	private Integer words;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "novel_sort_id")
	private NovelSort novelsort;

	@OneToMany(mappedBy = "novel", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<NovelChapter> novelChapters = new HashSet<NovelChapter>();
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER, mappedBy = "novels")
	private Set<User> users = new HashSet<User>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCovers() {
		return covers;
	}

	public void setCovers(String covers) {
		this.covers = covers;
	}

	public java.util.Date getUploaded_time() {
		return uploaded_time;
	}

	public void setUploaded_time(java.util.Date uploaded_time) {
		this.uploaded_time = uploaded_time;
	}

	public java.util.Date getUpdated_time() {
		return updated_time;
	}

	public void setUpdated_time(java.util.Date updated_time) {
		this.updated_time = updated_time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public NovelSort getNovelsort() {
		return novelsort;
	}

	public void setNovelsort(NovelSort novelsort) {
		this.novelsort = novelsort;
	}

	public Integer getWords() {
		return words;
	}

	public void setWords(Integer words) {
		this.words = words;
	}

	public Novel() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	@Override
	public String toString() {
		return "Novel [id=" + id + ", title=" + title + ", author=" + author + ", covers=" + covers + ", uploaded_time="
				+ uploaded_time + ", updated_time=" + updated_time + ", description=" + description + ", state=" + state
				+ ", words=" + words + "]";
	}

	public Set<NovelChapter> getNovelChapters() {
		return novelChapters;
	}

	public void setNovelChapters(Set<NovelChapter> novelChapters) {
		this.novelChapters = novelChapters;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

}
