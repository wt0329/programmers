function solution(n) {
    var answer = 0;
    return Number.isInteger(Math.sqrt(n)) ? 1 : 2;
}

// 1. 정수인지 확인
// 2. 제곱수 확인