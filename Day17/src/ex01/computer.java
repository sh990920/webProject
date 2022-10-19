package ex01;

public class computer {
	speaker s;
	public computer(speaker s) {
		this.s = s;
	}
	
	void turnOn(){
		System.out.println("컴퓨터가 켜졌습니다.");
		s.turnOn();
	}
}
