// 연산 프로퍼티 (Computed Property : 컴퓨티드 프로퍼티)

// 연산 프로퍼티는 "var" 즉, 변수선언만 가능하며, "let" 상수 선언은 하지 않습니다. (이유는 매번 계산을 해야하기 때문에 값을 저장하지 않기 때문이죠..)

// 의문점 : 연산 프로퍼티가 상수선언 즉, 재할당이 불가능한 상수를 선언하는것이 더 옳지 않을까? 그러면 값이 더 가독성이 좋게 나오는것이 아닌가?

// 의문점 해답 : 재할당이 불가능한 상수인 "let"(상수)은 연산 프로퍼티를 선언하는 것이 논리적으로 더 일관성 있고 안전한 방법이 될 수 있지만, 이렇게 하면 값이 변하지 않는다는 의도가 더 명확하게 전달되고 코드의 안정성을 높일 수 도 있습니다. 하지만 현재의 스위프트 문법에서는 "let"을 사용하여 연산 프로퍼티를 정의하는 것은 허용되지 않습니다. 자바스크립트의 경우는 가능하지만, 스위프트에서는 연산 프로퍼티를 선언할 때 "let" 키워드 대신 "var" 키워드를 사용해야 합니다.

// 의문점 해답 대한 확신 : 기존에 웹 개발로 배운 "자바스크립트" 내용에서는 const 라는 키워드와 let, var 등 연산에 저 모든것들이 사용 되었지만, 앱 개발 즉, 스위프트에서는 문법적으로 var, let 단 두개의 변수,상수 선언 방식으로 인해 연산은 반드시 var 키워드를 사용 해야한다가 전제 되어 있으니 앞으로는 연산을 수행할 때에는 반드시 var을 사용하도록 하겠습니다.

// 예시1
var x = 10
var y = 20
var z = 0

// sum(합)이 연산 프로퍼티
var sum: Int { // sum에 타입을 입혀줍시다. Int(정수)로
    // get와 set의 키워드들은 각각 독립적으로 동작합니다. 
    // get값이 set으로 할당된 것이 아닙니다.
    get {
        return x+y; // get 키워드는 sum의 값을 불러오는 것입니다.
    }
    set {
        z = x+y; // set 키워드는 할당인자로 변수의 값을 불러와서 그 값을 할당하는 역할을 해줍니다.
    }
}
print(sum);
// 출력값 = 30

// 앞서 이해한 연산 프로퍼티의 축약버전
var sum1: Int {
    return x + y // get 버전
}

var sum2: Int {
    x+y // set 버전
}
// 완벽하게 이해 되었을 것이라 봅니다.
