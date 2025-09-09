package com.Controller;

public class Review {
	    int reviewid;
	    String userid;
	    String trainnumber;
	    String rating;
	    String review;
		@Override
		public String toString() {
			return "Review [reviewid=" + reviewid + ", userid=" + userid + ", trainnumber=" + trainnumber + ", rating="
					+ rating + ", review=" + review + "]";
		}
		
		public Review(String userid, String trainnumber, String rating, String review) {
			super();
			this.userid = userid;
			this.trainnumber = trainnumber;
			this.rating = rating;
			this.review = review;
		}


		public Review() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Review(int reviewid, String userid, String trainnumber, String rating, String review) {
			super();
			this.reviewid = reviewid;
			this.userid = userid;
			this.trainnumber = trainnumber;
			this.rating = rating;
			this.review = review;
		}

		public int getReviewid() {
			return reviewid;
		}

		public void setReviewid(int reviewid) {
			this.reviewid = reviewid;
		}

		public String getUserid() {
			return userid;
		}

		public void setUserid(String userid) {
			this.userid = userid;
		}

		public String getTrainnumber() {
			return trainnumber;
		}

		public void setTrainnumber(String trainnumber) {
			this.trainnumber = trainnumber;
		}

		public String getRating() {
			return rating;
		}

		public void setRating(String rating) {
			this.rating = rating;
		}

		public String getReview() {
			return review;
		}

		public void setReview(String review) {
			this.review = review;
		}
		
		
}
