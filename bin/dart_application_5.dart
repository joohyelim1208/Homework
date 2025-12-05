import 'package:args/args.dart';

void main() {
  // 1번 문제: 이 학생의 점수는 84점이며, 등급은 B등급 입니다!
  print('필수문제 1번');
  int score = 84;
  if (score >= 90) {
    print('이 학생의 점수는 $score점 이며, 등급은 A등급 입니다!');
  } else if (score >= 80) {
    print('이 학생의 점수는 $score점 이며, 등급은 B등급 입니다!');
  } else {
    print('이 학생의 점수는 $score점 이며, 등급은 C등급 입니다!');
  }
  print('-' * 50); // 문자열 반복하기
  print('필수문제 2번');

  /* 
2번 문제: 장바구니에 40000원 어치를 담으셨네요!
할인금액 : 4000원
최종적으로 결제하실 금액은 36000원 입니다!
*/
  Map<String, int> clothes = {'티셔츠': 10000, '바지': 8000, '모자': 4000};
  //List<String> cartlist = ['티셔츠'];
  List<String> cartlist = ['티셔츠', '바지', '모자', '티셔츠', '바지'];

  // 카트리스트의 상품을 하나씩 가져와서 반복문
  // clothes에서 가격 가지고 오기
  // 가격 합산하기
  int sum = 0;
  for (var i = 0; i < cartlist.length; i++) {
    String product = cartlist[i];
    int price = clothes[product]!; // 없는 값이 들어오면 안되니까 무조건 있다고 표시 !
    sum += price;
  }

  print('장바구니에 $sum원 어치를 담으셨네요!');

  // 총 가격이 2만원이 넘은 경우에 할인금액 출력. 1번에서 구한 가격의 10%를 출력
  // 만약에 sum이 20000보다 크다면, 할인금액 출력하기
  if (sum > 20000) {
    print('할인금액: ${(sum * 0.1).toInt()}원');
    print('최종적으로 결제하실 금액은 ${(sum * 0.9).toInt()}');
  } else {
    print('최종적으로 결제하실 금액은 $sum원 입니다!');
  }
}
