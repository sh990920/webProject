package ex01;

public class person {
	computer c;
	public person(computer c) {
		this.c = c;
		//this 는 객체 자기 자신
	}
	
	void turnOn() {
		c.turnOn();
	}
	
}
