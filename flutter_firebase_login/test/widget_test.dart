import 'dart:io';

void main() {
	showData();
}

void showData() async{
	startTask();
	String? account = await accessData();
	fetchData(account);
}

void startTask() {
	String info1 = '요청수행 시작';
	print(info1);
}

Future<String?> accessData() async{
	String? account;
	Duration time = Duration(seconds: 3);
	await Future.delayed(time, (){
			account = '8,500만원';
			print(account);
		});
	return account;
}

void fetchData(String? account) {
	String info3 = '잔액은 $account 입니다';
	print(info3);
}