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
	
<style>
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
					<p style="
    position: relative;
    top: 5px;
">



종료일시 추가<p>  

			
<div id="wrap" style="
								    position: relative;
								    left: 500px;
								    bottom: 35px;
								    height: 20px;
								    width: 50px;
								">

	<label class="switch">
 	 <input type="checkbox" id="enddate">
 	 <span class="slider round"></span>
	</label>
	
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
	
	항목 추가 허용<p> 
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
	
	옵션 추가 설정<p>  
	
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
</div>
</div>
</div>
</section>
	
   


	
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
	
	<script type="text/javascript">
	
	
	
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
	
	
	
	</script>





</body>
</html>