A sample command-line application providing basic argument parsing with an entrypoint in `bin/`.


필수: TIL에 기록하기
     변수명 등 코드를 직관적이고 이해하기 쉽게 작성
     주석을 활용해 코드를 설명
필수: ReadMe를 작성해 과제를 소개해보기
도전: 디렉토리 및 파일을 분리하기
도전: 특수 상황에 대한 예외 처리를 2가지 이상 구현
     커밋 컨벤션을 지킨 커밋을 10회 이상 시행해보기
트러블 슈팅
배경: 어떤 현상을 발견해서
발단: 이런 장애가 생길 수 있다는 것을 인지했고
전개: 장애를 대응, 해결하던 와중애
위기: 또 다른 장애 발견 또는 간단하게 해결할 수 없다는 것을 알게 되어서
절정: 근본적인 해결을 위해 이런 방법으로 접근하였다
결말: 따라서 이런이런 방법을 통해 근본적으로 해결 및 앞으로 유지, 
     보수에 용이하게 개선하게 되었다


// 1번 문제: 이 학생의 점수는 84점이며, 등급은 B등급 입니다! 
/*   
  어려웠던 점
  1차 풀이시도
  - 학생과 점수. 이렇게 학생 개개인별 부여 안해도 됨
  - 학생이름과 점수를 키와 값으로 부여한 뒤 if문으로 등급을 정했고, 이제 학생과 점수에 대한 정보를 불러와서 등급을 출력하고자 했지만 Student에 대한 정보를 불러오는 구조를 짜는 것이 어려웠다.
  - 다시 예문과 같이 간단한 출력으로 시도를 해보았다.
*/  
/*
void main() {
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

// 1번문제를 다시 풀이해보았다. 튜터님께 많은 힌트를 얻음

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

// 학생의 점수가 얼마인지 score를 부여한 뒤 if문을 사용해 점수를 기준으로 몇 점 이상이면 몇 등급인지 출력이 되게끔 했다.

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
