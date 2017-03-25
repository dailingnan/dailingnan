package com.dailingnan.pojo;

public class Order_informationBean {
        private String lid;
        private String counts;
        private float subtotal;
        private String oid;
        private String fid;
        private FoodBean foodbean;
        private Restaurant  res;
		public Restaurant getRes() {
			return res;
		}
		public void setRes(Restaurant res) {
			this.res = res;
		}
		public String getLid() {
			return lid;
		}
		public void setLid(String lid) {
			this.lid = lid;
		}
		public FoodBean getFoodbean() {
			return foodbean;
		}
		public void setFoodbean(FoodBean foodbean) {
			this.foodbean = foodbean;
		}
		public String getCounts() {
			return counts;
		}
		public void setCounts(String counts) {
			this.counts = counts;
		}
		public float getSubtotal() {
			return subtotal;
		}
		public void setSubtotal(float subtotal) {
			this.subtotal = subtotal;
		}
		public String getOid() {
			return oid;
		}
		public void setOid(String oid) {
			this.oid = oid;
		}
		public String getFid() {
			return fid;
		}
		public void setFid(String fid) {
			this.fid = fid;
		}
		@Override
		public String toString() {
			return "Order_informationBean [lid=" + lid + ", counts=" + counts
					+ ", subtotal=" + subtotal + ", oid=" + oid + ", fid="
					+ fid + ", foodbean=" + foodbean + ", res=" + res + "]";
		}


 
    
        
        
}
