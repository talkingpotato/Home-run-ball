<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--제품 진열--%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Open+Sans">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<c:set var="loginOutLink" value="${sessionScope.c_id==null ? '/login' : '/logout'}"/>
<c:set var="loginOut" value="${sessionScope.c_id==null ? '로그인' : '로그아웃'}"/>

<link rel="icon" type="image/x-icon" href="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw0de929af/products/ROMLBHOF-2.jpg?sw=800&sfrm=png&bgcolor=ebebeb">
<style>

    li {
        list-style: none;
    }

    body {
        background: #e2eaef;
        font-family: "Open Sans", sans-serif;
    }
    h2 {
        color: #000;
        font-size: 26px;
        font-weight: 300;
        text-align: center;
        text-transform: uppercase;
        position: relative;
        margin: 30px 0 60px;
    }
    .carousel {
        margin: 50px auto;
        padding: 0 70px;
    }
    .carousel .item {
        color: #747d89;
        min-height: 325px;
        text-align: center;
        overflow: hidden;
    }
    .carousel .thumb-wrapper {
        padding: 25px 15px;
        background: #fff;
        border-radius: 6px;
        text-align: center;
        position: relative;
        box-shadow: 0 2px 3px rgba(0,0,0,0.2);
    }
    .carousel .item .img-box {
        height: 120px;
        margin-bottom: 20px;
        width: 100%;
        position: relative;
    }
    .carousel .item img {
        max-width: 100%;
        max-height: 100%;
        display: inline-block;
        position: absolute;
        bottom: 0;
        margin: 0 auto;
        left: 0;
        right: 0;
    }
    .carousel .item h4 {
        font-size: 18px;
    }
    .carousel .item h4, .carousel .item p, .carousel .item ul {
        margin-bottom: 5px;
    }
    .carousel .thumb-content .btn {
        color: #7ac400;
        font-size: 11px;
        text-transform: uppercase;
        font-weight: bold;
        background: none;
        border: 1px solid #7ac400;
        padding: 6px 14px;
        margin-top: 5px;
        line-height: 16px;
        border-radius: 20px;
    }
    .carousel .thumb-content .btn:hover, .carousel .thumb-content .btn:focus {
        color: #fff;
        background: #7ac400;
        box-shadow: none;
    }
    .carousel .thumb-content .btn i {
        font-size: 14px;
        font-weight: bold;
        margin-left: 5px;
    }
    .carousel .carousel-control {
        height: 44px;
        width: 40px;
        background: #7ac400;
        margin: auto 0;
        border-radius: 4px;
        opacity: 0.8;
    }
    .carousel .carousel-control:hover {
        background: #78bf00;
        opacity: 1;
    }
    .carousel .carousel-control i {
        font-size: 36px;
        position: absolute;
        top: 50%;
        display: inline-block;
        margin: -19px 0 0 0;
        z-index: 5;
        left: 0;
        right: 0;
        color: #fff;
        text-shadow: none;
        font-weight: bold;
    }
    .carousel .item-price {
        font-size: 13px;
        padding: 2px 0;
    }
    .carousel .item-price strike {
        opacity: 0.7;
        margin-right: 5px;
    }
    .carousel .carousel-control.left i {
        margin-left: -2px;
    }

    .carousel-control .left {
        left: -20px;
    }

    .carousel .carousel-control.right i {
        margin-right: -4px;
    }

    .carousel-control .right {
        right: 20px;
    }
    .carousel .carousel-indicators {
        bottom: -50px;
    }
    .carousel-indicators li, .carousel-indicators li.active {
        width: 10px;
        height: 10px;
        margin: 4px;
        border-radius: 50%;
        border: none;
    }
    .carousel-indicators li {
        background: rgba(0, 0, 0, 0.2);
    }
    .carousel-indicators li.active {
        background: rgba(0, 0, 0, 0.6);
    }
    .carousel .wish-icon {
        position: absolute;
        right: 10px;
        top: 10px;
        z-index: 99;
        cursor: pointer;
        font-size: 16px;
        color: #abb0b8;
    }
    .carousel .wish-icon .fa-heart {
        color: #ff6161;
    }
    .star-rating li {
        padding: 0;
    }
    .star-rating i {
        font-size: 14px;
        color: #ffc000;
    }
</style>


<div class="index">
<h2>Hello! Home run()</h2>
<h2> D - <span id="dDay">남은시간!</span></h2>
<hr/>


    <nav id="loginbtn">
        <ul>
        <li><a id="logoutLink" href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>
        </ul>
    </nav>

<div><a href="/mypage/list">마이페이지 이동</a></div>
<div><a href="/cart/list">장바구니 이동</a></div>
<div><a href="/order">주문 이동</a></div>
<div><a href="/admin/main">제품 이동</a></div>
    <div><a href="/product/detail?pd_id=GLV000001-99">제품상세 이동</a></div>
<div><a href="/payment">결제 이동</a></div>
<div><a href="/product/detail">제품 상세 이동</a></div>
    <div><a href="/delivery/deliveryList">배송지 이동</a></div>



</div>

<%--상품 진열 시작--%>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2><b>신제품</b></h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                <!-- Carousel indicators -->
                <ol class="carousel-indicators">
                    <%--4로 나눴을 때 몫 + 1만큼 반복--%>
                    <%--첫 번째 클래스만 class가 active고 나머지는 클래스를 적용하지 않는다.--%>
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>

                        <%-- 4로 나눴을 때 몫 + 1만큼 반복 --%>
<%--                        <%--%>
<%--                            int itemCount = (int)pageContext.getAttribute("mainProductNumber"); // 아이템 개수--%>
<%--                            int slideCount = itemCount / 4 + 1; // 슬라이드 개수--%>

<%--                            for (int i = 0; i < slideCount; i++) {--%>
<%--                        %>--%>
<%--                        <li data-target="#myCarousel" data-slide-to="<%= i %>" <% if (i == 0) { %>class="active"<% } %>></li>--%>
<%--                        <%--%>
<%--                            }--%>
<%--                        %>--%>
                </ol>
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">
                    <c:forEach var="product" items="${mainProductList}" varStatus="status">
                        <%--mainProductList의 인덱스를 4로 나눴을 때 0이라면 <div class="item">을 추가한다.--%>
                        <c:if test="${status.index % 4 == 0}">
                            <%--만약 status.index가 0인 경우에만 div class = "item active"이고--%>
                            <c:choose>
                                <c:when test="${status.index == 0}">
                    <div class="item active">
                                </c:when>
                                <c:otherwise>
                    <div class="item">
                                </c:otherwise>
                            </c:choose>
                            <%--그 이외에는 div class="item"이다.--%>
                        <div class="row">
                        </c:if>
                            <div class="col-sm-3">
                                <div class="thumb-wrapper">
                                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                    <div class="img-box">
                                        <a href="/product/detail/${product.pd_id}">
                                            <img src="img/product/app/main/${product.mn_img_fn}" class="img-responsive" alt="">
                                        </a>
                                    </div>
                                    <div class="thumb-content">
                                        <h4><a href="/product/detail/${product.pd_id}">${product.pd_name}</a></h4>
                                        <div class="star-rating">
                                            <ul class="list-inline">
                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                <li class="list-inline-item"><i class="fa fa-star-half"></i></li>
                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                        <c:choose>
                                            <%--만약 소비자가격(max_rtl_prc)이 판매가격(max_sls_prc)보다 크다면 소비자가격은 가로 선을 긋고 판매가격을 보여준다.--%>
                                            <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                        <p class="item-price"><strike>${product.max_rtl_prc}원</strike> <span>${product.max_sls_prc}원</span></p>
                                            </c:when>
                                            <%--그렇지 않다면 판매가격만 보여준다.--%>
                                            <c:otherwise>
                                        <p class="item-price"><span>${product.max_sls_prc}원</span></p>
                                            </c:otherwise>
                                        </c:choose>
                                        <a href="#" class="btn btn-primary">Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        <%--mainProductList의 인덱스를 4로 나눴을 때 3이라면 div태그를 닫아준다.--%>
                        <c:if test="${status.index % 4 == 3}">
                        </div>
                    </div>
                        </c:if>
                    </c:forEach>
                    </div>
                </div>
                <!-- Carousel controls -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
    </div>
<%--<script src="https://cdn.tailwindcss.com"></script>--%>
<script>
    window.onload = function() {
        if("${sessionScope.c_id}" !== "") {
            document.getElementById('logoutLink').addEventListener('click', function(event) {
                event.preventDefault();
                if (confirm('정말로 로그아웃을 하시겠습니까?')) {
                    window.location.href = event.target.href;
                    alert('로그아웃이 되셨습니다.');
                }
            });
        }
    };

    const dDay = document.querySelector("#dDay");

    function countDay() {
        const now = new Date();
        const dueDate = new Date("2024-05-30T11:59:59").getTime();  /* 디데이 설정 */

        const timeRemaining = dueDate - now;  /* 남은시간 */
        const day = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
        const hour = Math.floor(timeRemaining / (1000 * 60 * 60) % 24);
        const min = Math.floor(timeRemaining / (1000 * 60) % 60);
        const sec = Math.floor(timeRemaining / 1000 % 60);

        dDay.innerText = `${'${day}'} [${'${hour}'}:${'${min}'}:${'${sec}'}]`;
    }

    // countDay();
    setInterval(countDay, 1000);  /* 초마다 디데이 기능 실행 */


    $(document).ready(function(){
        $(".wish-icon i").click(function () {
            $(this).toggleClass("fa-heart fa-heart-o");
        });
    });
</script>



