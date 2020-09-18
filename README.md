# 등록된 자전거 검색 홈페이지

## 구조

### index.jsp
사용자가 도메인으로 들어서면 가장 먼저 보이는 홈페이지. 검색 창과 로그인 링크가 있다. 입력란에 자전거 인증번호를 입력하고 검색 버튼을 누르면 해당 자전거를 가지고 있는 사용자 페이지로 넘어간다. 로그인을 하면 홈페이지의 로그인 링크가 사용자 내비게이션 바로 바뀌며 자신의 사용자 페이지로 넘어가거나 로그아웃할 수 있다.

### login.jsp
로그인 페이지. 아이디, 비밀번호를 입력하고 데이터를 전송하면, 해당 페이지에서 입력받은 아이디와 패스워드를 조합하고 그 문자열을 sha2로 해싱해 가지고 있는 데이터베이스의 해시와 대조한다. 맞는 해시가 있을 경우, 사용자(User) 구조체를 만들어 해당 사용자의 닉네임, 해시를 설정, 세션에 저장하고 홈페이지로 돌아간다. 사용자의 해시를 찾지 못 할 경우, 계정을 찾을 수 없다는 메시지를 출력한다.

### logout.jsp
로그아웃으로 사용자의 세션을 해제한다.

### user.jsp
url에서 사용자의 해시 쿼리를 얻는다(예시: ...?**hash=11302359**...). 데이터베이스에서 해당 해시의 검색을 시도한다. 찾을 경우 해당 사용자의 닉네임, 자전거 목록을 출력한다.

### search.jsp
index.jsp에서 받은 자전거 등록번호로 데이터베이스 상에 해당 자전거를 가지고 있는 사용자의 해시를 찾는다. 찾으면 해당 사용자의 페이지로 넘어가고, 아니면 첫 페이지로 간다.

## 사용자 데이터베이스 모음
@ - 기본 키, @@ - 보조 키

### 사용자
* 해시@ - 64char
* 소금값@@ - 64char
* 전화번호@@ - 11char
* 이메일@@ - 100varchar
* 닉네임 - 100varchar

### 자전거
* 자전거 번호@ - 12char
* 주인 해시<-사용자
* 등록 날짜 - timestamp

### 채팅(고려 중)

## 개발 중
* 채팅 시스템