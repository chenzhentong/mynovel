package per.czt.mynovel.pojo;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="novel_chapter")
@EntityListeners(AuditingEntityListener.class)
public class NovelChapter implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="novel_chapter_id")
	private Integer id;
	
	@Column(name="novel_chapter_title",nullable=false,insertable=true,length=128)
	private String title;
	
	@Column(name="novel_chapter_no")
	private Integer no;
	@Lob
	@Column(name="novel_chapter_content",columnDefinition="TEXT")
	private String content;
	
	@Column(name="novel_chapter_uploaded_time")
	@CreatedDate
	private java.util.Date uploaded_time;
	
	
	@LastModifiedDate
	@Column(name = "novel_chapter_updated_time",nullable=false)
	private java.util.Date updated_time;
	
	
	
	@ManyToOne(cascade=CascadeType.PERSIST,fetch=FetchType.EAGER)
	@JoinColumn(name="novel_id")
	private Novel novel;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.util.Date getUploaded_time() {
		return uploaded_time;
	}
	public void setUploaded_time(java.util.Date uploaded_time) {
		this.uploaded_time = uploaded_time;
	}
	public Novel getNovel() {
		return novel;
	}
	public void setNovel(Novel novel) {
		this.novel = novel;
	}
	public NovelChapter() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public java.util.Date getUpdated_time() {
		return updated_time;
	}
	public void setUpdated_time(java.util.Date updated_time) {
		this.updated_time = updated_time;
	}
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	@Override
	public String toString() {
		return "NovelChapter [id=" + id + ", title=" + title + ", no=" + no + ", content=" + content
				+ ", uploaded_time=" + uploaded_time + ", updated_time=" + updated_time + "]";
	}
	
	
	
	

}
