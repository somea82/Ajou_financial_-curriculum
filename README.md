# 빠른 시작을 위한 REST API 스타터

주니어 백엔드 개발자 [장효택](https://github.com/HyoTaek-Jang) 에 의해 제작되었습니다.

## 사용된 Gradle Dependency
1. Lombok
2. Spring Web
3. Spring JPA Data
4. MySQL-Connector

## 프로젝트 구조
```text
├─main
│  ├─generated
│  ├─java
│  │  └─com
│  │      └─spring
│  │          └─starter
│  │              ├─api
│  │              │  ├─controller
│  │              │  ├─request
│  │              │  │  └─index
│  │              │  ├─response
│  │              │  │  └─index
│  │              │  └─service
│  │              ├─common
│  │              │  ├─auth
│  │              │  ├─exception
│  │              │  ├─interceptor
│  │              │  ├─model
│  │              │  └─util
│  │              ├─config
│  │              └─db
│  │                  ├─entity
│  │                  ├─enumurable
│  │                  └─repository
│  └─resources
│      ├─static
│      └─templates
└─test
    └─java
        └─com
            └─spring
                └─starter
                    └─api
                        └─controller

```

## 클린 코드를 위해 지킬 것
1. Data를 지양하면서 꼭 필요한 어노테이션만 달자!
2. 유효성 검사를 통해 코드의 안정성을 높이자!
3. 한 개의 함수에는 꼭 한 가지 일만 시키자!!
4. indent 3이 넘지 않도록 하자!
5. else와 삼항연산자를 사용하지 말자!
6. 자바 코드 컨벤션을 지키면서 프로그래밍한다.
   - https://naver.github.io/hackday-conventions-java
7. 테스트의 커버리지를 올리자! 좋은 테스트 코드란 무엇일까..
8. 자바8 적극 활용하여 가독성과 성능을 향상 시키자!

## 프로젝트 사용법

### Response 관리
1. 기본적으로 common/mode/BaseResponse를 사용하며 이외 만들어지는 res는 상속하여 사용한다.

### Logging

### Global Exception Handler

### Interceptor

### 테스트코드
1. @ActiveProfile을 통해 적당한 프로필을 선택한다.
2. 해당 프로필에 테스트 데이터베이스를 연결하여 메인 DB와 충돌이 안나게 한다.
3. 기본적으로 모든 테스트코드는 BaseTest를 상속받는다.

### 데이터베이스 연결 (MySQL)
1. application.yml 파일에서 적당한 서버주소, 포트, 비밀번호, 아이디를 설정한다.
2. ddl에 관련한 정보는 [링크](https://dev-coco.tistory.com/85) 를 참조
3. application.yml의 database의 기본명은 'test'이다.

## 깃 프로젝트와 이슈 관리


## 올바른 커밋 가이드
[AngularJS Commit Message Conventions](https://gist.github.com/stephenparish/9941e89d80e2bc58a153) 참고해 commit log를 남긴다.
