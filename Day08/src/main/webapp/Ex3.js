/**
숫자 2의 input값이 0이면 결과 : 0으로 나눌수 없습니다
연산 버튼 클릭하면 그 버튼 배경 색깔 바뀌게 해주기   
 */


var plus = document.getElementById("plus");
plus.style.background = "blue";
var minus = document.getElementById("minus");
minus.style.background = "blue";
var multiply = document.getElementById("multiply");
multiply.style.background = "blue";
var divide = document.getElementById("divide");
divide.style.background = "blue";

var tx = document.getElementById("tx");s

function result(v){
	var num1 = parseInt(document.getElementById("num1").value);
	var num2 = parseInt(document.getElementById("num2").value);
	switch(v){
		case plus.value :
		tx.value = num1 + num2;
			plus.style.background = "#f00";
			minus.style.background = "#00f";
			multiply.style.background = "#00f";
			divide.style.background = "#00f";
			break;
		case minus.value :
			tx.value = num1 - num2;
			plus.style.background = "#00f";
			minus.style.background = "#f00";
			multiply.style.background = "#00f";
			divide.style.background = "#00f";
			break;
		case multiply.value :
			tx.value = num1 * num2;
			plus.style.background = "#00f";
			minus.style.background = "#00f";
			multiply.style.background = "#f00";
			divide.style.background = "#00f";
			break;
		case divide.value :
			if(parseInt(num2) == 0){
				alert("0으로 나눌 수 없습니다.");
			}else{
				tx.value = num1 / num2;
				plus.style.background = "#00f";
				minus.style.background = "#00f";
				multiply.style.background = "#00f";
				divide.style.background = "#f00";
			}
			break;
	}
	
}