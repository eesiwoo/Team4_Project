# 마켓컬리 따라잡기
> 마켓컬리의 주요 기능을 클론한 프로젝트 입니다.


12일간 백엔드 2명, 프론트 2명으로 마켓 컬리 클론 프로젝트를 진행했습니다.


유저 파트 ( 회원가입, 마이 페이지, 로그인 )

상품 파트 ( 상품 검색, 카테고리 )

주문 파트 ( 장바구니, 결제창 )

어드민 파트 ( 상품 등록, 비밀글 관리 )

게시판 파트 ( 게시판 CRUD )


로 나누어 개발을 진행했습니다.

![](../header.png)

## 구성

├─src
│  ├─main
│  │  ├─java
│  │  │  └─pack
│  │  │      ├─aspect
│  │  │      ├─controller
│  │  │      ├─model
│  │  │      └─mybatis
│  │  ├─resources
│  │  └─webapp
│  │      ├─META-INF
│  │      │  └─maven
│  │      │      └─aa.bb
│  │      │          └─cc
│  │      ├─resources
│  │      │  ├─css
│  │      │  │  └─fonts
│  │      │  ├─images
│  │      │  │  └─goods
│  │      │  ├─js
│  │      │  └─review_img
│  │      └─WEB-INF
│  │          ├─check
│  │          ├─spring
│  │          │  └─appServlet
│  │          └─views
│  └─test
│      └─resources
├─target
│  ├─classes
│  │  └─pack
│  │      ├─aspect
│  │      ├─controller
│  │      ├─model
│  │      └─mybatis
│  ├─m2e-wtp
│  │  └─web-resources
│  │      └─META-INF
│  │          └─maven
│  │              └─aa.bb
│  │                  └─cc
│  └─test-classes
└─work
    └─spring_source
        └─team4_project
            └─target
                └─m2e-wtp
                    └─web-resources
                        └─META-INF
                            └─maven
                                └─aa.bb
                                    └─cc
