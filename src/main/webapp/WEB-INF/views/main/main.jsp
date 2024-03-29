<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoWash</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31e0942185311b94482c641ed5245ff7&libraries=services"></script>
</head>
<style>
    #container {overflow:hidden;height:300px;position:relative;}
    #mapWrapper {width:100%;height:300px;z-index:1;}
    #rvWrapper {width:50%;height:300px;top:0;right:0;position:absolute;z-index:0;}
    #container.view_roadview #mapWrapper {width: 50%;}
    #roadviewControl {position:absolute;top:5px;left:5px;width:42px;height:42px;z-index: 1;cursor: pointer; background: url(https://t1.daumcdn.net/localimg/localimages/07/2018/pc/common/img_search.png) 0 -450px no-repeat;}
    #roadviewControl.active {background-position:0 -350px;}
    #close {position: absolute;padding: 4px;top: 5px;left: 5px;cursor: pointer;background: #fff;border-radius: 4px;border: 1px solid #c8c8c8;box-shadow: 0px 1px #888;}
    #close .img {display: block;background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/rv_close.png) no-repeat;width: 14px;height: 14px;}
</style>
<body>

<div class="container-fluid">
    <div class="row flex-nowrap">
        <jsp:include page="../layout/include_gmb.jsp" />
        <div class="col ps-md-2 pt-2">
<%--            <a href="#" data-bs-target="#sidebar" data-bs-toggle="collapse" class="border rounded-3 p-1 text-decoration-none"><i class="bi bi-list"></i></a>--%>
            <div class="row">
                <div class="col-md-4">
                    <div class="card shadow">
                        <div class="card-body text-start">
                            <h5 class="card-title"><i class="bi bi-wash-total mr-3"></i>총 세차장(${InfoWashCount})<a href="#" class="btn btn-primary" style="float: right;">보러가기</a>
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow">
                        <div class="card-body text-start">
                            <h5 class="card-title">
                                <i class="bi bi-self-wash mr-3"></i>셀프세차(${InfoWashSelfCount})<a href="#" class="btn btn-primary" style="float: right;">보러가기</a>
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow">
                        <div class="card-body text-start">
                            <h5 class="card-title">
                                <i class="bi bi-no-self mr-3"></i>손세차(${InfoWashNoSelfCount})<a href="#" class="btn btn-primary" style="float: right;">보러가기</a>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
                <c:forEach items="${infoList}" var="list" varStatus="status">
                <div class="col">
                    <div class="card shadow-sm">
                        <img onclick="window.open('https://www.youtube.com/watch?v=${list.videoId}')"; src="https://i.ytimg.com/vi/${list.videoId}/mqdefault.jpg" style="width: 100%;height: 225px"/>
                        <div class="card-body">
                            <p class="card-text" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">${list.title}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.open('https://www.youtube.com/watch?v=${list.videoId}')">보기</button>
<%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                </div>
                                <small class="text-muted">${list.channelTitle}</small>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <br>
            <div id="container">
                <div id="rvWrapper">
                    <div id="roadview" style="width:100%;height:100%;"></div> <!-- 로드뷰를 표시할 div 입니다 -->
                    <div id="close" title="로드뷰닫기" onclick="closeRoadview()"><span class="img"></span></div>
                </div>
                <div id="mapWrapper">
                    <div id="map" style="width:100%;height:100%"></div> <!-- 지도를 표시할 div 입니다 -->
                    <div id="roadviewControl" onclick="setRoadviewRoad()"></div>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
            <br>
            <form action="/" name="searchForm" id="searchForm">
                <input type="hidden" name="nowPage" id="nowPage" value="${returnMap.nowPage}"/>
            <div class="row">
                <div class="col">
                    <select class="form-select" name="sido" aria-label="Default select example" onchange="fn_chageGunGu(this)">
                        <option value="">시 또는 도를 선택 해 주세요.</option>
                        <c:forEach items="${selectGroupBySido}" var="list" varStatus="status">
                            <option value="${list.sido}" <c:if test="${list.sido eq resultMap.sido}">selected</c:if>>${list.sido}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col">
                    <select class="form-select" aria-label="Default select example" id="sigungu" name="sigungu">
                        <option value="${resultMap.sigungu}" selected>${resultMap.sigungu}</option>
                    </select>
                </div>
                <div class="col">
                    <select class="form-select" aria-label="Default select example" name="washType" id="washType">
                        <option value="" selected>세차 유형을 선택 해 주세요.</option>
                        <option value="셀프세차" <c:if test="${resultMap.washType eq '셀프세차'}">selected</c:if>>셀프세차</option>
                        <option value="손세차" <c:if test="${resultMap.washType eq '손세차'}">selected</c:if>>손세차</option>
                    </select>
                </div>
                <div class="col">
                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="fn_movePage()">보기</button>
                </div>
            </div>
            </form>
            <div class="mt-5">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">NO</th>
                        <th scope="col">세차장명</th>
                        <th scope="col">주소</th>
                        <th scope="col">전화번호</th>
                        <th scope="col">위치</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${selectInfoWashList}" var="list" varStatus="status">
                    <tr>
                        <th scope="row">${status.index+1}</th>
                        <td>${list.corpName}</td>
                        <td>${list.address}</td>
                        <td>${list.telNo}</td>
                        <td><a href="#" class="btn btn-primary" onclick="searchWash('${list.address}','${list.corpName}')">보러가기</a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <jsp:include page="../layout/include_paging.jsp" />
        </div>
    </div>
</div>
<script>
    window.onload = function(){
        fn_chageGunGu('${resultMap.sido}');
    }
    var overlayOn = false, // 지도 위에 로드뷰 오버레이가 추가된 상태를 가지고 있을 변수
        container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
        mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
        mapContainer = document.getElementById('map'), // 지도를 표시할 div 입니다
        rvContainer = document.getElementById('roadview'); //로드뷰를 표시할 div 입니다

    //카카오맵 api
    var mapCenter = new kakao.maps.LatLng(33.45042 , 126.57091), // 지도의 중심좌표
        mapOption = {
            center: mapCenter, // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 로드뷰 객체를 생성합니다
    var rv = new kakao.maps.Roadview(rvContainer);

    // 좌표로부터 로드뷰 파노라마 ID를 가져올 로드뷰 클라이언트 객체를 생성합니다
    var rvClient = new kakao.maps.RoadviewClient();

    // 로드뷰에 좌표가 바뀌었을 때 발생하는 이벤트를 등록합니다
    kakao.maps.event.addListener(rv, 'position_changed', function() {

        // 현재 로드뷰의 위치 좌표를 얻어옵니다
        var rvPosition = rv.getPosition();

        // 지도의 중심을 현재 로드뷰의 위치로 설정합니다
        map.setCenter(rvPosition);

        // 지도 위에 로드뷰 도로 오버레이가 추가된 상태이면
        if(overlayOn) {
            // 마커의 위치를 현재 로드뷰의 위치로 설정합니다
            marker.setPosition(rvPosition);
        }
    });

    // 마커 이미지를 생성합니다
    var markImage = new kakao.maps.MarkerImage(
        'https://t1.daumcdn.net/localimg/localimages/07/2018/pc/roadview_minimap_wk_2018.png',
        new kakao.maps.Size(26, 46),
        {
            // 스프라이트 이미지를 사용합니다.
            // 스프라이트 이미지 전체의 크기를 지정하고
            spriteSize: new kakao.maps.Size(1666, 168),
            // 사용하고 싶은 영역의 좌상단 좌표를 입력합니다.
            // background-position으로 지정하는 값이며 부호는 반대입니다.
            spriteOrigin: new kakao.maps.Point(705, 114),
            offset: new kakao.maps.Point(13, 46)
        }
    );

    // 드래그가 가능한 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        image : markImage,
        position: mapCenter,
        draggable: true
    });

    // 마커에 dragend 이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'dragend', function(mouseEvent) {

        // 현재 마커가 놓인 자리의 좌표입니다
        var position = marker.getPosition();

        // 마커가 놓인 위치를 기준으로 로드뷰를 설정합니다
        toggleRoadview(position);
    });

    //지도에 클릭 이벤트를 등록합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent){

        // 지도 위에 로드뷰 도로 오버레이가 추가된 상태가 아니면 클릭이벤트를 무시합니다
        if(!overlayOn) {
            return;
        }

        // 클릭한 위치의 좌표입니다
        var position = mouseEvent.latLng;

        // 마커를 클릭한 위치로 옮깁니다
        marker.setPosition(position);

        // 클락한 위치를 기준으로 로드뷰를 설정합니다
        toggleRoadview(position);
    });

    // 전달받은 좌표(position)에 가까운 로드뷰의 파노라마 ID를 추출하여
    // 로드뷰를 설정하는 함수입니다
    function toggleRoadview(position){
        rvClient.getNearestPanoId(position, 50, function(panoId) {
            // 파노라마 ID가 null 이면 로드뷰를 숨깁니다
            if (panoId === null) {
                toggleMapWrapper(true, position);
            } else {
                toggleMapWrapper(false, position);

                // panoId로 로드뷰를 설정합니다
                rv.setPanoId(panoId, position);
            }
        });
    }

    // 지도를 감싸고 있는 div의 크기를 조정하는 함수입니다
    function toggleMapWrapper(active, position) {
        if (active) {

            // 지도를 감싸고 있는 div의 너비가 100%가 되도록 class를 변경합니다
            container.className = '';

            // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
            map.relayout();

            // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
            map.setCenter(position);
        } else {

            // 지도만 보여지고 있는 상태이면 지도의 너비가 50%가 되도록 class를 변경하여
            // 로드뷰가 함께 표시되게 합니다
            if (container.className.indexOf('view_roadview') === -1) {
                container.className = 'view_roadview';

                // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
                map.relayout();

                // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
                map.setCenter(position);
            }
        }
    }

    // 지도 위의 로드뷰 도로 오버레이를 추가,제거하는 함수입니다
    function toggleOverlay(active) {
        if (active) {
            overlayOn = true;

            // 지도 위에 로드뷰 도로 오버레이를 추가합니다
            map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

            // 지도 위에 마커를 표시합니다
            marker.setMap(map);

            // 마커의 위치를 지도 중심으로 설정합니다
            marker.setPosition(map.getCenter());

            // 로드뷰의 위치를 지도 중심으로 설정합니다
            toggleRoadview(map.getCenter());
        } else {
            overlayOn = false;

            // 지도 위의 로드뷰 도로 오버레이를 제거합니다
            map.removeOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

            // 지도 위의 마커를 제거합니다
            marker.setMap(null);
        }
    }

    // 지도 위의 로드뷰 버튼을 눌렀을 때 호출되는 함수입니다
    function setRoadviewRoad() {
        var control = document.getElementById('roadviewControl');

        // 버튼이 눌린 상태가 아니면
        if (control.className.indexOf('active') === -1) {
            control.className = 'active';

            // 로드뷰 도로 오버레이가 보이게 합니다
            toggleOverlay(true);
        } else {
            control.className = '';

            // 로드뷰 도로 오버레이를 제거합니다
            toggleOverlay(false);
        }
    }

    // 로드뷰에서 X버튼을 눌렀을 때 로드뷰를 지도 뒤로 숨기는 함수입니다
    function closeRoadview() {
        var position = marker.getPosition();
        toggleMapWrapper(true, position);
    }

    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

    //주소로 좌표 찍기
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();
    searchWash('서울특별시 마포구 성미산로 20','광일세차장');

    //카카오맵 종료
    function searchWash(addr,washName){
        geocoder.addressSearch(addr, function(result, status) {

            // 정상적으로 검색이 완료됐으면
            if (status === kakao.maps.services.Status.OK) {

                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });

                // 인포윈도우로 장소에 대한 설명을 표시합니다
                var infowindow = new kakao.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">'+washName+'</div>'
                });
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            }
        })
        $('html, body').animate({
            scrollTop: $("#map").offset().top
        }, 50);
    }

    function fn_movePage(){
        let form = $("#searchForm");
        $("#nowPage").val(${returnMap.nowPage});
        $("#sido").val(${returnMap.sido});
        $("#sigungu").val(${returnMap.sigungu});
        form.attr('action', "/");
        form.submit();
    }

    function goPage( nowPage ){
        let form = $("#searchForm");
        $("#nowPage").val(nowPage);
        form.attr('action', "/");
        form.submit();
    }

    function fn_chageGunGu(obj){
        let sido;
        let status;
        if(obj.value == null){
            sido = obj;
        }else{
            sido = obj.value;
        }
        $.ajax({
            url  : "/selectGungu",
            data : {"sido":sido},
            type : "POST",
            dataType : "JSON",
            success : function(res){
                let tbody = null;
                if (res != null) {
                    res.forEach(function (element,index) {
                        tbody += '<option value="' + element.sigungu +'" id="location' + index +'">' + element.sigungu + '</option>';
                        if(element.sigungu == '${resultMap.sigungu}'){
                            status = index;
                        }
                    });
                    console.log(status)
                    // document.getElementById("test").setAttribute("selected", "selected");
                    $("#sigungu").html(tbody);
                    $("#location"+status).attr("selected","selected");
                }
            },
            error : function(e){
                console.log(e.responseText);
                alert("There are some problems in System. <br />Please Try again.");
            }
        })
    }
</script>
</body>

</html>