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
input[type="checkbox"] {
    position: absolute;
    visibility: hidden;
}

label {
    display: block;
    position: absolute;
    width: 60px;
    height: 34px;
    border-radius: 17px;
    background-color: #ddd;
    transition-duration: 0.2s;
}

label span {
    position: absolute;
    left: 3px;
    top: 3px;
    z-index: 1;
    width: 28px;
    height: 28px;
    border-radius: 50%;
     background-color: #fff; 
    transition-duration: 0.2s;
}

label:before,
label:after{
    position: absolute;
    top: 0;
    width: 34px;
    font-size: 11px;
    line-height: 34px;
    color: #fff;
    text-align: center;
}

label:before {
    left: 0;
    content: '';
}

label:after {
    right: 0;
    content: '';
}

input:checked + label {
  /*   background-color: #00c73c; */
}

input:checked + label span {
    transform: translateX(26px);
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
		<form class="validation-form" novalidate>
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
						<input type="text" class="form-control" required placeholder="| 투표 제목을 입력하세요" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width: 520px;margin-top: 10px;font-size: 30px;" >
						<hr style="width:550px;">
						<input type="text"  class="form-control" required placeholder="| 투표에 대한 설명을 입력하세요" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width: 520px;margin-top: 10px;"  >
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
">종료일시 추가<p>  <input type="checkbox" id="checkbox" checked>
								<label for="checkbox" 
								style="
								    position: relative;
								    left: 500px;
								    bottom: 35px;
								    height: 20px;
								    width: 50px;
								">
								<span style="
									    height: 15px;
									    width: 15px;
									"></span> 
								</label>
					<br><hr style="
				    position: relative;
				    bottom: 60px;
				    width: 550px;
				">
					 <p style="
    position: relative;
    bottom: 60px;
">복수 선택<p> <input type="checkbox" id="checkbox" checked>
								<label for="checkbox" 
								style="
								    position: relative;
								    left: 500px;
								    bottom: 100px;
								    height: 20px;
								    width: 50px;
								">
								<span style="
									    height: 15px;
									    width: 15px;
									"></span> 
								</label>
					<br><hr style="
				    position: relative;
				    bottom: 130px;
				    width: 550px;
				">
					 <p style="
    position: relative;
    bottom: 130px;
">익명 투표<p><input type="checkbox" id="checkbox" checked>
								<label for="checkbox" 
								style="
								    position: relative;
								    left: 500px;
								    bottom: 170px;
								    height: 20px;
								    width: 50px;
								">
								<span style="
									    height: 15px;
									    width: 15px;
									"></span> 
								</label>
					<br><hr style="
				    position: relative;
				    bottom: 200px;
				    width: 550px;
				">
					 <p style="
    position: relative;
    bottom: 200px;
">항목 추가 허용<p> <input type="checkbox" id="checkbox" checked>
								<label for="checkbox" 
								style="
								    position: relative;
								    left: 500px;
								    bottom: 240px;
								    height: 20px;
								    width: 50px;
								">
								<span style="
									    height: 15px;
									    width: 15px;
									"></span> 
								</label>
					<br><hr style="
				    position: relative;
				    bottom: 270px;
				    width: 550px;
				">
					<p style="
    position: relative;
    bottom: 270px;
">옵션 추가 설정<p>  <input type="checkbox" id="checkbox" checked>
								<label for="checkbox" 
								style="
								    position: relative;
								    left: 500px;
								    bottom: 310px;
								    height: 20px;
								    width: 50px;
								">
								<span style="
									    height: 15px;
									    width: 15px;
									"></span> 
								</label>
					<br><hr style="
				    position: relative;
				    bottom: 340px;
				    width: 550px;
				">

				</div>
				</div>
		</div>
			
			<div class="row" style="
				    position: relative;
				    bottom: 130px;
				">
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-primary btn-lg btn-block" type="submit" style="
				    position: relative;
				    bottom: 260px;
				    left: 450px;
				    width: 100px;
				    font-size: 10px;
				    background: mediumpurple;
				    color: black;
				    border: solid 1px mediumpurple;
				">올리기</button>
				</div>
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-primary btn-lg btn-block" type="submit" style="
				    position: relative;
				    bottom: 260px;
				    left: 50px;
				    width: 100px;
				    font-size: 10px;
				    background: white;
				    border: solid 1px gray;
				    color: gray;
				">전체공개</button>
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
	
	<!-- modal -->
    <div class="modal fade" id="cancel">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-header">
    				<h4 class="modal-title">상품 등록</h4>
    				<button type="button" class="close" data-dismiss="modal">&times;</button>
    			</div>
    			<div class="modal-body">
    				작성을 취소 하시겠습니까?
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
    				<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
    			</div>
    		</div>
    	</div>
    </div>
    <!-- end of modal -->


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
	<!-- file 관련 -->
	<script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"></script>
	
	<script type="text/javascript">
	
	$("#goodadd").click(function(){
		var goodslist = $("#goodlist");
		alert("asd");
		let html =`
		<div id="wrap" style="
		    height: 40px;
		">
			<input type="text" class="form-control" required placeholder="| 항목명을 입력하세요. 이미지를 첨부 할 수 있습니다."  style="width: 485px;"  >
			<button type="button" class="btm_image" id="img_btn" style="
		    position: relative;
		    left: 440px;
		    bottom: 35px;
		    background: white;
		    border: solid 1px white;
		"><img src="${pageContext.request.contextPath}/resources/img/flow.png" width="30px;" ></button>
		</div>
		`;
		goodslist.append(html);
	});
	
	window.addEventListener('load', () => {
		const forms = document.getElementsByClassName('validation-form');
		Array.prototype.filter.call(forms, (form) => {
			form.addEventListener('submit',function(evert){
				if(form.checkValidity() === false) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	}, false);
	


	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#input-form-image").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	

	
	</script>





</body>
</html>