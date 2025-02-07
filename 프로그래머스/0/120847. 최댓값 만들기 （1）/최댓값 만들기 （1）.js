function solution(numbers) {
    var answer = 0;
    numbers.sort((a,b) => b-a);
    return numbers[0] * numbers[1];
}

// 1. sort로 큰 수에서 작은 수 정렬 - 내림차순
// 2. 0번째 1번째 곱해주기