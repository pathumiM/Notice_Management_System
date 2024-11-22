 package com.notice;

public class Notice {
    private String noticeID;
    private String title;
    private String postDate;
    private String expiryDate;
    private String notice;
    private String author;

    public Notice(String noticeID, String title, String postDate, String expiryDate, String notice, String author) {
        this.noticeID = noticeID;
        this.title = title;
        this.postDate = postDate;
        this.expiryDate = expiryDate;
        this.notice = notice;
        this.author = author;
    }

    public String getNoticeID() {
        return noticeID;
    }

    public String getTitle() {
        return title;
    }

    public String getPostDate() {
        return postDate;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public String getNotice() {
        return notice;
    }

    public String getAuthor() {
        return author;
    }
}
