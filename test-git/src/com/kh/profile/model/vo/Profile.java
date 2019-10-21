package com.kh.profile.model.vo;

public class Profile {
	private String profileId;
	private String intro;
	private int height;
	private String blood;
	private String job;
	private String hobby;
	private int heart;
	private String religion;
	private String smoke;
	private String profileCity;
	public Profile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Profile(String profileId, String intro, int height, String blood, String job, String hobby, int heart,String religion,
			String smoke, String profileCity) {
		super();
		this.profileId = profileId;
		this.intro = intro;
		this.height = height;
		this.blood = blood;
		this.job = job;
		this.hobby = hobby;
		this.heart = heart;
		this.religion = religion;
		this.smoke = smoke;
		this.profileCity = profileCity;
	}
	public String getProfileId() {
		return profileId;
	}
	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public String getProfileCity() {
		return profileCity;
	}
	public void setProfileCity(String profileCity) {
		this.profileCity = profileCity;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	
	
	
}
