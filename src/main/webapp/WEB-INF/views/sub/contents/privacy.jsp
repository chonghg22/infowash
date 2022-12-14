<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ufn"    uri="/WEB-INF/tlds/egovfn.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="orderby" uri="/WEB-INF/tlds/orderby.tld" %>
<!DOCTYPE html>
<link rel="shortcut icon" href="favicon/favicon.ico">
<link rel="stylesheet" href="/lib/slick/slick.css">
<link rel="stylesheet" href="/lib/scroll/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="/lib/jquery/jquery-ui.css">
<link rel="stylesheet" href="/lib/user/css/common.css">
<link rel="stylesheet" href="/lib/user/css/style.css">
<link rel="stylesheet" href="/lib/user/css/board.css">
<link rel="stylesheet" href="/lib/user/css/main.css">
<script src="/lib/jquery/jquery-1.11.0.min.js"></script>
<script src="/lib/jquery/jquery-ui.js"></script>
<script src="/lib/slick/slick.js"></script>
<script src="/lib/scroll/jquery.mCustomScrollbar.min.js"></script>
<script src="/lib/user/js/common.js"></script>
<html lang="ko">
<head>
	<title>공연장안전정보시스템 소개 - 공연장안전지원센터</title>
</head>
<body>
        		<div class="content-title">
					<h3>개인정보처리방침</h3>
      			</div><!--// content-title-->
       			<div class="content">
       				<div class="privacy-wrap">
       					<div class="privacy-txt">
       						<p>한국산업기술시험원(이하 “본 기관”이라 함)이 취급하는 모든 개인정보는 개인정보보호법 등 관련 법령 및 시험원의 개인정보 보호지침을 준수하여 수집ㆍ보유ㆍ처리되고 있습니다. 시험원은 개인정보 보호법 제30조에따라 고객의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
       						</p>
       						
       						<h4>제1조 (개인정보의 처리 목적)</h4>
       						<p>한국산업기술시험원(이하 본 기관) 공연장안전지원센터 공연장안전정보시스템에서는 공연장 등록 정보 변경 요청 등 보다 더 향상된 양질의 서비스를 제공하기 위하여 본인확인서비스를 통해 이용자 개인의 정보를 수집하고 있습니다. 또한, 무책임한 음해성 문구나 비방의 감소 및 이용자에게 보다 빠른 답변을 제공하고자 글쓰기 시 본인확인서비스를 요구하고 있습니다.
       						</p>
       						
       						<h4>제2조 (개인정보의 처리 및 보유 기간)</h4>
       						<p>본 기관에서 보유한 개인정보 및 보유기간은 다음과 같습니다.</p>
       						<div class="table-set">
                                <table class="table">
                                    <caption>개인정보의 처리 및 보유 기간</caption>
                                    <colgroup>
                                        <col style="width:50%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">개인정보명</th>
                                            <th scope="col">보유기간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">성명</th>
                                            <td>5년</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">생년월일</th>
                                            <td>5년</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">휴대폰번호</th>
                                            <td>5년</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">E-mail</th>
                                            <td>5년</td>
                                        </tr>
                                        
                                    </tbody>
                                </table><!--table-->
                            </div><!--table-set-->
                            
                            <h4>제3조 (개인정보의 제3자 제공에 관한 사항)</h4>
       						<p>본 기관은 수집한 고객의 개인정보를 제3자에게 제공하지 않습니다. 다만, 「개인정보 보호법」 및 다른 법률 등에서 특별한 규정이 있는 경우에는 개인정보를 제3자에게 제공할 수 있습니다.</p>
       						
       						<h4>제4조 (개인정보의 위탁에 관한 사항)</h4>
       						<p>본 기관은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁할 수 있습니다. 위탁업무의 내용이나 수탁자(위탁받는 자)가 변경될 때는 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.</p>
       						<div class="table-set">
                                <table class="table">
                                    <caption>개인정보의 위탁에 관한 사항</caption>
                                    <colgroup>
                                        <col width="30%" span="2">
                                        <col width="40%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">개인정보명</th>
                                            <th scope="col">위탁받는 자</th>
                                            <th scope="col">위탁 업무의 내용</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">성명</th>
                                            <td>한국모바일인증<br>랜드소프트(주)</td>
                                            <td>시스템 개발 및 유지보수</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">생년월일</th>
                                            <td>한국모바일인증<br>랜드소프트(주)</td>
                                            <td>시스템 개발 및 유지보수</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">휴대폰번호</th>
                                            <td>한국모바일인증<br>랜드소프트(주)</td>
                                            <td>시스템 개발 및 유지보수</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">E-mail</th>
                                            <td>한국모바일인증<br>랜드소프트(주)</td>
                                            <td>시스템 개발 및 유지보수</td>
                                        </tr>
                                    </tbody>
                                </table><!--table-->
                            </div><!--table-set-->
                            <p>본 기관은 개인정보의 처리업무를 위탁하는 경우 개인정보 보호법 제25조에 따라 다음의 내용에 관한 사항을 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                            </p>
                            <ul>
                                <li>위탁업무 수행 목적 외 개인정보의 처리 금지에 관한 사항</li>
                                <li>개인정보의 관리적·기술적 보호조치에 관한 사항</li>
                                <li>개인정보의 안전관리에 관한 사항 위탁업무의 목적 및 범위</li>
                                <li>재위탁 제한</li>
                                <li>개인정보 안전성 확보 조치</li>
                                <li>손해배상 등 책임에 관한 사항</li>
                            </ul>
                            
                            <h4>제5조 (정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)</h4>
       						<p>정보주체(혹은 해당 주체의 법정대리인)는 본 기관에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.</p>
       						
       						<h4>▶ 개인정보 열람 요구</h4>
       						<p>본 기관에서 보유하고 있는 개인정보는 「개인정보 보호법」 제35조(개인정보의 열람)에 따라 자신의 개인정보에 대한 열람을 요구할 수 있습니다. 다만, 개인정보 열람 요구는 법 제35조 4항에 의하여 아래와 같이 제한될 수 있습니다.</p>
       						<ul>
                                <li>법률에 따라 열람이 금지되거나 제한되는 경우</li>
                                <li>다른 사람의 생명·신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우</li>
                                <li>공공기관이 아래 각 목의 어느 하나에 해당하는 업무를 수행할 때 중대한 지장을 초래하는 경우
                                    <ol>
                                        <li><span>가.</span> 조세의 부과·징수 또는 환급에 관한 업무</li>
                                        <li><span>나.</span> 학력·기능 및 채용에 관한 시험, 자격 심사에 관한 업무</li>
                                        <li><span>다.</span> 보상금·급부금 산정 등에 대하여 진행 중인 평가 또는 판단에 관한 업무</li>
                                        <li><span>라.</span> 다른 법률에 따라 진행 중인 감사 및 조사에 관한 업무</li>
                                    </ol>
                                </li>
                            </ul>
                            
                            <h4>▶ 개인정보 정정·삭제 요구</h4>
       						<p>본 기관에서 보유하고 있는 개인정보는 「개인정보 보호법」 제36조(개인정보의 정정·삭제)에 따라 정정·삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.</p>
       						
       						<h4>▶ 개인정보 처리정지 요구</h4>
       						<p>본 기관에서 보유하고 있는 개인정보는 「개인정보 보호법」 제37조(개인정보의 처리정지 등)에 따라 처리정지를 요구할 수 있습니다. 다만, 개인정보 처리정지 요구는 법 제37조 2항에 의하여 거절될 수 있습니다.</p>
       						<ul>
                                <li>법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우</li>
                                <li>다른 사람의 생명·신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우</li>
                                <li>공공기관이 개인정보를 처리하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우</li>
                                <li>개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우</li>
                            </ul>
                            <p>위 사항에 따른 권리 행사는 「개인정보 보호법」 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 요청하실 수 있으며, 본 기관은 이에 대해 지체없이 조치하겠습니다. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다. 또한 정보주체의 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                            </p>
                            
                            <div class="privacy_download">
                                <a href="<c:url value="/comm/download.do?f=${ufn:getDownloadLink('','file','2.hwp','개인정보 열람 정정 삭제 등 요구서.hwp') }" />" title="첨부파일다운로드">[ 개인정보 보호법 시행규칙 별지 제8호 ] 개인정보 열람, 정정, 삭제 등 요구서 다운로드</a>
                            </div>
                            
                            <p>위 사항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 「개인정보 보호법」 시행규칙 별지 제11호 서식에 따른 위임장을 제출하여야 합니다.
                            </p>
                            
                            <div class="privacy_download">
                                <a href="<c:url value="/comm/download.do?f=${ufn:getDownloadLink('','file','1.hwp','개인정보관련 위임장.hwp') }" />" title="첨부파일다운로드">[ 개인정보 보호법 시행규칙 별지 제11호 ] 위임장 다운로드</a>
                            </div>
                            
                            <h4>제6조 (처리하는 개인정보의 항목)</h4>
       						<p>본 기관 공연장안전정보시스템 홈페이지의 본인확인서비스를 통해 이용자의 동의를 얻어 수집하는 개인정보 항목은 다음과 같습니다.<br> 개인정보 항목 : 성명, 생년월일, 휴대폰번호, E-mail</p>
       						
       						<h4>제7조 (개인정보 파기에 관한 사항)</h4>
       						<p>본 기관은 원칙적으로 개인정보 보존기간이 경과되거나, 개인정보 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. 개인정보 파기의 절차, 기한 및 방법은 아래와 같습니다.</p>
       						
       						<h4>▶ 파기 절차</h4>
       						<p>개인정보는 목적 달성 후 즉시 또는 별도의 공간에 옮겨져 내부 방침 및 기타 관련 법령에 따라 파기됩니다. 별도의 공간으로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.</p>
       						
       						<h4>▶ 파기 기한 및 파기 방법</h4>
       						<p>보유기간이 만료되었거나 개인정보의 처리목적달성, 해당 업무의 폐지 등 그 개인정보가 불필요하게 될 시에는 지체 없이 해당 개인정보를 파기합니다. 전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
       						
       						<h4>제8조 (개인정보보호책임자에 관한 사항)</h4>
       						<p>본 기관은 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보보호책임자 및 담당자를 지정하고 있습니다.</p>
       						<div class="table-set">
                                <table class="table">
                                    <caption>개인정보보호책임자에 관한 사항</caption>
                                    <colgroup>
                                        <col width="25%" span="4">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col" colspan="2">개인정보보호책임자</th>
                                            <th scope="col" colspan="2">개인정보보호담당자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">부서</th>
                                            <td>안전보안실</td>
                                            <th scope="row">부서</th>
                                            <td>안전보안실 사이버보안팀</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">성명</th>
                                            <td>박상우 실장</td>
                                            <th scope="row">성명</th>
                                            <td>최현문 주임</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">전화</th>
                                            <td>055-791-3310</td>
                                            <th scope="row">전화</th>
                                            <td>055-791-3316</td>
                                        </tr>
                                    </tbody>
                                </table><!--table-->
                            </div><!--table-set-->
                            
                            <h4>제9조 (개인정보 처리방침의 변경에 관한 사항)</h4>
       						<p>현 개인정보 처리방침은 2020년 10월 1일부터 적용됩니다. 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전(중요한 사항이 변경되는 경우는 최소 30일전)부터 웹사이트의 공지사항을 통하여 고지됩니다. 만일, 개인정보의 수집 및 활용, 제3자 제공 등이 변경되어 동의가 필요한 경우에는 별도 동의 절차를 마련하여 진행됩니다.</p>
                            <p>개인정보 처리방침 제정공고일자 : 2020년 10월 23일<br>개인정보 처리방침 제정일자 : 2020년 11월 1일</p>
                                                        
                            <h4>제10조 (개인정보의 안전성 확보조치에 관한 사항)</h4>
       						<p>본 기관은 「개인정보 보호법」 제29조에 따라 개인정보의 안전성 확보를 위해 다음과 같은 기술적, 관리적, 물리적조치를 취하고 있습니다.</p>
       						
       						<h4>▶ 개인정보 취급직원의 최소화 및 교육</h4>
       						<p>개인정보를 취급하는 직원은 반드시 필요한 인원에 한하여 지정 · 관리하고 있으며 취급직원을 대상으로 안전한 관리를 위한 교육을 실시하고 있습니다. 
                         개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여·변경·말소를 통하여 개인정보에 대한 접근통제를 위한 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                          
                            
                            <h4>▶ 개인정보에 대한 접근 제한</h4>
       						<p>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여·변경·말소를 통하여 개인정보에 대한 접근통제를 위한 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
       						
       						<h4>▶ 접속기록의 보관</h4>
       						<p>개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 1년 이상 보관·관리하고 있으며, 개인정보의 유출·변조·훼손 등에 대응하기 위해 개인정보처리시스템의 접속기록 등을 월별로 점검하고 있습니다.</p>
       						
       						<h4>▶ 개인식별정보의 암호화</h4>
       						<p>개인식별정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 전송 시 암호화 등의 보안기능을 사용하고 있습니다.· 보안프로그램 설치 및 주기적 점검·갱신</p>
       						
       						<h4>▶ 보안프로그램 설치 및 주기적 점검·갱신</h4>
       						<p>해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신·점검하고 있습니다.</p>
       						
       						<h4>▶ 비인가자에 대한 출입 통제</h4>
       						<p>개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고있습니다.</p>
       						
       						<h4>▶ 정기적인 자체 점검 실시</h4>
       						<p>개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다.</p>
       						
       						<h4>▶ 내부관리계획의 수립 및 시행</h4>
       						<p>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</p>
       						
       						<h4>제11조 (개인정보 자동 수집 장치의 설치·운영 및 그 거부에 관한 사항)</h4>
       						<p>인터넷 서비스 이용과정에서 다음과 같은 항목이 수집될 수 있습니다. <br> 웹사이트 운영 시 이용되는 서버가 이용자의 브라우저에게 보내는 소량의 정보인 ‘쿠키(cookie)’ 관련 정보가 인터넷 서비스과정에서 수집될 수 있으며, 이 쿠키는 사용자 컴퓨터 내의 하드디스크에 저장되어 컴퓨터는 식별하지만 이용자를 개인적으로 식별하지 않습니다.</p>
       						
       						<h4>제12조 (개인정보의 열람청구를 접수·처리하는 부서)</h4>
       						<p>정보주체는 「개인정보 보호법」 제35조에 따른 개인정보의 열람 청구를 제 8조에 명시된 개인정보보호책임자 및 담당자에게 할 수 있습니다. 본 기관은 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.</p>
       						<p>정보주체는 열람청구 접수·처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.
개인정보보호 종합지원 포털(www.privacy.go.kr) → 민원마당 → 개인정보 열람등 요구 → 개인정보파일 목록 검색 → 기관명에 “한국산업기술시험원” 입력 후 조회 (공공아이핀 및 휴대폰 인증을 통한 실명인증 필요)</p>
                          
                           <h4>제13조 (정보주체의 권익침해에 대한 구제방법)</h4>
                           <p>정보주체는 개인정보침해로 인한 피해를 구제받기 위하여 개인정보 분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다.</p>
                           <p>개인정보 분쟁조정위원회 : (국번없이) 1833-6972, 홈페이지(www.kopico.go.kr)<br>개인정보 침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)<br>대검찰청 사이버범죄수사단 : 02-3480-3570 (www.spo.go.kr)<br>경찰청 사이버테러대응센터 : (국번없이) 182 (www.police.go.kr)</p>
                           
                           <p>또한, 개인정보의 열람, 정정·삭제, 처리정지 등에 대한 정보주체자의 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익을 침해 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다. 행정심판에 대한 자세한 사항은 국민권익위원회(www.acrc.go.kr) 홈페이지를 참고하시기 바랍니다.</p>
       					</div><!--// privacy-txt-->
       				</div><!--// privacy-wrap-->
                 </div><!--// content-->
</body>
</html>