import 'package:args/args.dart';

// 1번 문제: 이 학생의 점수는 84점이며, 등급은 B등급 입니다!
/*
void main() {
  // 1차 풀이시도
  // 학생과 점수. 이렇게 학생 개개인별 부여 안해도 됨
  Map<String, int> Students = {'Anna': 30, 'Bob': 84, 'Casey': 96};

  // 등급을 정하는 함수
  String grade (int score) {
    if (score >= 90) {
      return 'A';
    } else if (score >= 80) {
      return 'B';
    } else {
      return 'C';
    }
  }

  // 학생의 점수와 등급을 출력
  Students.
  print ('이 $Students 학생의 점수는 $score점 이며, 등급은 $grade등급 입니다!');
}
*/

/* 
2번 문제: 장바구니에 40000원 어치를 담으셨네요!
할인금액 : 4000원
최종적으로 결제하실 금액은 36000원 입니다!
*/

void main() {
  Map<String, List> clothes = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

}