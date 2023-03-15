package com.example.thweibo;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

public class MyBlog implements Parcelable {

    // Id of microBlog for every
    private static final String TAG = "MyBlog";
    private int mBlogID;
    private String mUsername;
    private String mDatetime;
    private String mContent;
    private String mImgPath;
    private String mVideoPath;
    private String mLike;

    public String getImgPath() {
        return mImgPath;
    }

    public String getmVideoPath()
    {
        return  mVideoPath;
    }

    public String toString() {
        String s = "";
        s += "BlogId: " + String.valueOf(mUsername);
        s += "\nName: " + mBlogID;
        s += "\nImg: " + String.valueOf(mImgPath.length());
        return s + "\n";
    }

    public void setImgPath(String imgPath) {
        if(imgPath == null) {
            this.mImgPath = "";
            return ;
        }
        this.mImgPath = imgPath;
    }

    public void setmVideoPath(String videoPath) {
        if(videoPath == null) {
            this.mVideoPath = "";
            return ;
        }
        this.mVideoPath = videoPath;
    }

    public MyBlog() { }

    public int getWeiboId() {
        return mBlogID;
    }

    public void setWeiboId(int weiboId) {
        this.mBlogID = weiboId;
    }

    public String getUsername() {
        return mUsername;
    }

    public void setUsername(String MblogID) {
        this.mUsername = MblogID;
    }

    public String getDatetime() {
        return mDatetime;
    }

    public void setDatetime(String datetime) {
        this.mDatetime = datetime;
    }

    public String getContent() {
        return mContent;
    }

    public void setContent(String content) {
        this.mContent = content;
    }

    public void setmLike(String like) { this.mLike = like; }

    public String getmLike() { return mLike; }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mBlogID);
        parcel.writeString(this.mUsername);
        parcel.writeString(this.mDatetime);
        parcel.writeString(this.mContent);
        parcel.writeString(this.mImgPath);
        parcel.writeString(this.mVideoPath);
        parcel.writeString(this.mLike);
    }

    protected MyBlog(Parcel parcel) {
        this.mBlogID = parcel.readInt();
        this.mUsername = parcel.readString();
        this.mDatetime = parcel.readString();
        this.mContent = parcel.readString();
        this.mImgPath = parcel.readString();
        this.mVideoPath = parcel.readString();
        this.mLike = parcel.readString();
    }

    public static final Parcelable.Creator<MyBlog> CREATOR = new Parcelable.Creator<MyBlog>() {

        @Override
        public MyBlog createFromParcel(Parcel parcel) {
            return new MyBlog(parcel);
        }

        @Override
        public MyBlog[] newArray(int size) {
            return new MyBlog[size];
        }
    };
}
