function solution(angle) {
    var answer = 0;
    if (angle > 0 && angle < 90){
        answer = 1;
    } else if (angle == 90) {
        answer = 2;
    } else if (angle > 90 && angle < 180) {
        answer = 3;
    } else {
        answer = 4;
    }
    return answer;
}

/*
 - 다른 사람 풀이
 function solution(angle) {
    var answer = 0;
    return [0, 90, 91, 180].filter(x => angle >= x).length;
 }
 
 * filter : 특정 요소를 만족하는 요소를 걸러주고 배열로 반환하는 함수
 
 * 설명 : 배열에 있는 수를 차례대로 비교하면서 angle >= x가 만족하는지 보면 return 값이 나옴
 
*/
