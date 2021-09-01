<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<!-- 폰트적용 Montserrat -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap">
	<!-- 폰트적용 Hahmlet -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap">
	<!-- style.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>
	  
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	  
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>

/*  */
body {
  margin: 0;
  padding: 0;
}

.close {
  
  transform-origin: 0 50%;
  -webkit-transform: translateX(-50%) scale(0);
  -moz-transform: translateX(-50%) scale(0);
  -o-transform: translateX(-50%) scale(0);
  -ms-transform: translateX(-50%) scale(0);
  transform: translateX(-50%) scale(0);
  width: 60px;
  height: 60px;
  border: none;
  background: #000;
  border-radius: 100%;
  margin: 0;
  padding: 0;
  cursor: pointer;
  z-index: 10;
}

.close:focus {
  outline: none;
}

.close.open {
  -webkit-animation: scale 0.4s ease-in;
  -moz-animation: scale 0.4s ease-in;
  -o-animation: scale 0.4s ease-in;
  animation: scale 0.4s ease-in;
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  -o-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  -webkit-animation-delay: 1.5s;
  -moz-webkit-animation-delay: 1.5s;
  -o-webkit-animation-delay: 1.5s;
  -webkit-animation-delay: 1.5s;
  /*-webkit-transform: scale(1) translateX(-50%);*/
}

@-webkit-keyframes scale {
  0% { transform: scale(0) translateX(-50%); }
  80% { transform: scale(1.1) translateX(-50%) }
  100% { transform: scale(1) translateX(-50%) }
}

@keyframes scale {
  0% { transform: scale(0) translateX(-50%); }
  80% { transform: scale(1.1) translateX(-50%) }
  100% { transform: scale(1) translateX(-50%) }
}

.line {
  position: absolute;
  width: 35%;
  height: 1px;
  background: #fff;
  left: 50%;
  -webkit-transform: translateX(-50%) rotate(45deg);
  -moz-transform: translateX(-50%) rotate(45deg);
  -o-transform: translateX(-50%) rotate(45deg);
  -ms-transform: translateX(-50%) rotate(45deg);
  transform: translateX(-50%) rotate(45deg);
}

.line:nth-child(2) {
  -webkit-transform: translateX(-50%) rotate(-45deg);
  -moz-transform: translateX(-50%) rotate(-45deg);
  -o-transform: translateX(-50%) rotate(-45deg);
  -ms-transform: translateX(-50%) rotate(-45deg);
  transform: translateX(-50%) rotate(-45deg);
}

.button {

  -webkit-transform: translate(-50%, -50%);
  cursor: pointer;
  -webkit-transition: top 0.5s ease;
 
} 

span {
  font-family: 'Fjalla One';
  font-size: 25px;
  letter-spacing: 3px;
 color: black;
  text-transform: uppercase;
  
  transition: 0.5s ease;
}

.button.active span {
  display: none;
}

.button.active {
  width: 30%;
  height: 2px;
  top: -100%;
  -webkit-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  -moz-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  -o-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
}

.button:before {
  content: "";
  position: absolute;
  left: 0;
  width: 0;
  height: 100%;
  
  -webkit-transition: 0.5s ease;
  -moz-transition: 0.5s ease;
  -o-transition: 0.5s ease;
  transition: 0.5s ease;
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  -o-transition-delay: 0.5s;
  transition-delay: 0.5s;
}

.button.active:before {
  width: 100%;
}

.content {
  position: fixed;
  top: 100%;
  width: 100%;
  height: 100%;
  -webkit-transition: 1s ease;
  -moz-transition: 1s ease;
  -o-transition: 1s ease;
  transition: 1s ease;
}

.content.show {
  top: 0;
  -webkit-transition: 1s ease 1s;
  -moz-transition: 1s ease 1s;
  -o-transition: 1s ease 1s;
  transition: 1s ease 1s;
}


/*  */
input[type="date"]::-webkit-calendar-picker-indicator,
input[type="date"]::-webkit-inner-spin-button {
    display: none;
    appearance: none;
}

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 25px;
  
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 18px;
  width: 18px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

</style>

<script type="text/javascript">

$(function(){

});

</script>
</head>
<body>
	

<section>
	<div class="blank-section"></div>
</section>


<!-- input section -->
<section>
<div class="container-fluid setting-font">
<div class="row mb-5">
<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
<div class="row">
				
	<!-- 상품등록 -->
	<div class="col-xl-6 col-12 mb-xl-0">
		<div class="input-form" style="
    border: solid 1px black;
">
		<h4 class="mb-3 setting-font">게시물 작성</h4>
		<form class="validation-form" method="post" action="${pageContext.request.contextPath}/ballot" enctype="multipart/form-data" >
			<!-- 카테고리 -->
			<div style="
				    width: 500px;
				">
						<button style="
					    background: white;
					    border: solid 1px white;
					    position: relative;
					    left: 50px;
					">글</button>
					<button style="
					    background: white;
					    border: solid 1px white;
					    position: relative;
					    left: 100px;
					">업무</button>
					<button style="
					    background: white;
					    border: solid 1px white;
					    position: relative;
					    left: 150px;
					">일정</button>
					<button style="
					    background: white;
					    border: solid 1px white;
					    position: relative;
					    left: 200px;
					">할일</button>
					<button style="
					    background: white;
					    border: solid 1px white;
					    position: relative;
					    left: 250px;
					">투표</button>
					</div>
			<div class="category">
				<div class="row">
					<div class="col-md-6 mb-3">
						<input name="title" type="text" class="form-control" required placeholder="| 투표 제목을 입력하세요" 
						style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width: 520px;margin-top: 10px;font-size: 30px;" >
						<hr style="width:550px;">
						<input name="content" type="text"  class="form-control" required placeholder="| 투표에 대한 설명을 입력하세요" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width: 520px;margin-top: 10px;"  >
						<hr style="width:550px;">
							
					</div>
			
				</div>
			</div>
			<!-- 입력란 -->
			<div class="row">
				<div class="col-md-6 mb-3">
					<div id="goodlist" style="
					    position: relative;
					    bottom: 20px;
					">

					</div>
					<input id="goodadd" type="button" class="form-control" id="" placeholder="" value="+ 항목추가" style="
					    width: 80px;
					    font-size: 10px;
					    position: relative;
					">
					
				</div>
			</div>
			
			<div class="option">
				<div class="row" 
									style="
					    position: relative;
					    top: -15px;
					">		
							<div class="col-md-6 mb-3">
					
					<hr style="
    		width: 550px;
">

<div id="allwrap">
					<p style="
    position: relative;
    top: 5px;
">
종료일시 추가
</p>

 <div id="enddatezone" style="
    position: relative;
    left: 130px;
    bottom: 35px;
    width: 300px;
"> 
<div id="enddatezone2"></div>
	<div id="wrap" style="
								    position: relative;
								    left: 370px;
								    /* bottom: 35px; */
								    height: 20px;
								    width: 50px;
								">

	<label class="switch">
 	 <input type="checkbox" id="enddate">
 	 <span class="slider round"></span>
	</label>
	
	</div></div>  

			
					
</div>				
복수 선택<p> 
<div id="wrap" style="
								    position: relative;
								    left: 500px;
								    bottom: 35px;
								    height: 20px;
								    width: 50px;
								">
				<label class="switch">
 	 <input type="checkbox">
 	 <span class="slider round"></span>
	</label>
	</div>
익명 투표<p>

<div id="wrap" style="
								    position: relative;
								    left: 500px;
								    bottom: 35px;
								    height: 20px;
								    width: 50px;
								">
			<label class="switch">
 	 <input type="checkbox">
 	 <span class="slider round"></span>
	</label>
	</div>
	
	<div> <p>항목 추가 허용</p>
	<a href="javascript:shownow()"  style="
    position: relative;
    left: 480px;
    bottom: 50px;
">작성자만> </a>
	
<div id="seczone" style="
    position: relative;
    left: 550px;
    bottom: 80px;
"></div></div>
	
	
	<div> <p>옵션 추가 설정</p>
	<div class="button" style="
    position: relative;
    left: 550px;
    bottom: 40px;
    width: 20px;
    height: 20px;
">
  <span>></span>
</div>
	
<div id="optionadd" style="
    position: relative;
    left: 550px;
    bottom: 80px;
"></div>
</div>
	
	

		</div>
		</div>
		</div>
			
			<div class="row" style="
				    position: relative;
				    bottom: 50px;
				">
					<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-primary btn-lg btn-block" type="submit" style="
				    position: relative;
				    width: 100px;
				    
				    left: 340px;
				    font-size: 10px;
				    background: white;
				    border: solid 1px gray;
				    color: gray;
				
				">전체공개</button>
				
				<div class="input-form-button col-md-6 mb-3">
					<input class="btn btn-primary btn-lg btn-block" type="submit" style="
				    position: relative;
				    left: 450px;
				    bottom: 42px;
				    width: 100px;
				    font-size: 10px;
				    background: mediumpurple;
				    color: black;
				    border: solid 1px mediumpurple;
				" value="올리기">
				</div>

				</div>
			</div>
		</form>
		</div>
	</div>
	

</div>
<button class="close" style="
    background: black;
    position: relative;
    right: 950px;
    bottom: 900px;
">
  <div class="line"></div>
  <div class="line"></div>
</button>

<div class="content">
  <div style="
    background: blanchedalmond;
    width: 500px;
    height: 500px;
    position: relative;
    top: 300px;
    left: 70px;
" id="optionlist">  

<p style="
    text-align: center;
" >옵션 추가 설정</p>

	<div> 
	<p >참여자 선택</p>
	<a href="javascript:showinhumen()"  id="inhumen" style="
    position: relative;
    left: 340px;
    bottom: 37px;
">프로젝트 참여자 전체 ></a>
	
<div id="inhumenlist" style="
    position: relative;
    width: 200px;
    left: 500px;
    bottom: 70px;
"></div>
</div>

	

	<div> 
	<p >결과공개 설정</p>
	<a href="javascript:showresultopen()"  id="resultopen" style="
    position: relative;
    left: 340px;
    bottom: 37px;
">투표 종료시(최종 결과 공개)></a>
	
<div id="resultopenlist" style="
    position: relative;
    width: 200px;
    left: 500px;
    bottom: 70px;
"></div>
</div>

	<div> 
	<p >실시간 알람받기</p>
	
	 <div id="enddatezone" style="
    position: relative;
    left: 130px;
    bottom: 35px;
    width: 300px;
"> 
<div id="enddatezone2"></div>
	<div id="wrap" style="
								    position: relative;
								    left: 300px;				    
								    height: 20px;
								    width: 50px;
								">

	<label class="switch">
 	 <input type="checkbox" id="enddate">
 	 <span class="slider round"></span>
	</label>
	
	</div></div> 
	

</div>

<div> 
	<p >최종 결과 공개 범위 설정</p>
	<a href="javascript:showendresult()"  id="endresult" style="
    position: relative;
    left: 340px;
    bottom: 37px;
">프로젝트 참여자 전체 ></a>
	
<div id="endresultlist" style="
    position: relative;
    width: 200px;
    left: 500px;
    bottom: 70px;
"></div>
</div>


</div>
</div>

</div>
</div>
</div>
</section>
	
   


	
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
	
	<script type="text/javascript">
	
	function showinhumen(){
		
		var inhumenlist= $("#inhumenlist");
		
		
		
		let html =`
			<div id="inhumenbox" style="
			    background: beige;
		    
		">
				<input type="radio" name="one" value="1" checked>프로젝트 참여자 전체<br>
				<input type="radio" name="one" value="2">참여자 지정<br>
				
			</div>

	`; 
		inhumenlist.append(html);
	}
	
	$("#goodadd").click(function(){
		var goodslist = $("#goodlist");
		alert("아이쳄 항목 추가되었습니다.");
		let html =`
		<div id="wrap" style="
		    height: 40px;
		">
			<input name="itemname[]" type="text" class="form-control" required placeholder="| 항목명을 입력하세요. 이미지를 첨부 할 수 있습니다."  style="width: 485px;"  >
			
			<input type="file" name="file1[]" style="
			    position: relative;
		    left: 470px;
		    bottom: 35px;
		">

		`;
		goodslist.append(html);
	});
	
	$("#enddate").click(function(){
		
		var enddatezone2 = $("#enddatezone2")
		var enddate =$("#enddate").prop("checked");
		if(enddate == true){
			
			let html=`
			<div id="datawrap" style="
			    position: relative;
		   
		    right: 30px;
		">
				<input type="date" namd="choicedate" id="datepicker">
				<input type="time" namd="choicetime" id="datepicker">
				<input type="radio" id="alarm" name="alarm" value="alarm" >
				<div id="alerminfozone"></div>

			</div>
				`;
			enddatezone2.append(html);
			
		}else{
			enddatezone2.empty();
		}
	});
	
	$(document).on('click','#alarm',function(){
		
		var alerminfozone = $("#alerminfozone");
		alerminfozone.empty();
		let html =`
			<select id = "alerminfo" size="1"  style="
		    position: relative;
	    left: 255px;
	    bottom: 25px;
	">

		<option value ="30분전">30분 전 미리 알림</option>

		</select>
		`;
		alerminfozone.append(html);
	});
	
	function shownow(){
		
			var seczone = $("#seczone");
			seczone.empty();
			let html =`
			<div id="secbox" style="
			    background: beige;
			">
				<input type="radio" name="one" value="1" checked>작성자만<br>
				<input type="radio" name="one" value="2">작성자 + 프로젝트 관리자<br>
				<input type="radio" name="one" value="3">전체
			</div>
				
		
	`; 
			seczone.append(html);

			
		
		
	}
	
	
	$(document).ready(function() {
		  $('.button').on('click', function() {
			  
			 let optionlist = $("#optionlist");
			 
	 
			 let html=
				`
				
				`;
			 
			 optionlist.append(html);
		    $(this).toggleClass('active');
		    $('.content').toggleClass('show');
		    $('.close').toggleClass('open');
		  });
		  
		  $('.close').on('click', function() {
		    $(this).toggleClass('open');
		 	$('.button').removeClass('active');
		    $('.content').removeClass('show');
		  });
		});
	

	</script>





</body>
</html>