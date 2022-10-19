package ex01;

public class demo {

	public static void main(String[] args) {
		speaker s = new speaker();
		computer c = new computer(s);
		person p = new person(c);
		p.turnOn();
		//생성자의 역할
		//객체를 생성 "메모리에 올려서" 사용 할 준비를 마치는 것
	}

}
