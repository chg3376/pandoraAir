package mypkg.model;

public class AirCheck {

	private String local;
	private String destination;
	private String airplane_name;
	private String departure_time;
	private String arrival_time;
	private String p_date;
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getAirplane_name() {
		return airplane_name;
	}
	public void setAirplane_name(String airplane_name) {
		this.airplane_name = airplane_name;
	}
	public String getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}
	public String getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	@Override
	public String toString() {
		return "AirCheck [local=" + local + ", destination=" + destination
				+ ", airplane_name=" + airplane_name + ", departure_time="
				+ departure_time + ", arrival_time=" + arrival_time
				+ ", p_date=" + p_date + "]";
	}
	
	
}
