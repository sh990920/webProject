package ex1;

abstract class Phone {
	abstract void turnOn();
}

class SamsongPhone extends Phone{

	@Override
	void turnOn() {
		System.out.println("삼성폰이 켜졌습니다");
	}
	
}

class LZPhone extends Phone{

	@Override
	void turnOn() {
		System.out.println("LG폰이 켜졌습니다");
	}
	
}

class Person{
	Phone p;
	void buyPhone(Phone p) {
		this.p = p;
		p.turnOn(); 
	}
}

public class phoneDemo2 {
	public static void main(String[] args) {
		Person p = new Person();
		Phone p1 = new LZPhone(); 
		
		
	}
}
