package gxlg.model;

/**
 * 实体类
 * @author ASUS
 *
 */
public class Notice {
	int noticeId;
	String title;
	String detail;
	String postTime;
	String isTop;
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Notice(String title, String detail, String postTime, String isTop) {
		super();
		this.title = title;
		this.detail = detail;
		this.postTime = postTime;
		this.isTop = isTop;
	}
	
	

	public Notice(int noticeId, String title, String detail, String postTime, String isTop) {
		super();
		this.noticeId = noticeId;
		this.title = title;
		this.detail = detail;
		this.postTime = postTime;
		this.isTop = isTop;
	}
	
	

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPostTime() {
		return postTime;
	}

	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}

	public String getIsTop() {
		return isTop;
	}

	public void setIsTop(String isTop) {
		this.isTop = isTop;
	}
	
	

	@Override
	public String toString() {
		return "Notice [noticeId=" + noticeId + ", title=" + title + ", detail=" + detail + ", postTime=" + postTime
				+ ", isTop=" + isTop + "]";
	}

	
	
	
}
