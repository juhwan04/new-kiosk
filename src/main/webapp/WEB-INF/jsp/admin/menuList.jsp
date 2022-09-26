<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">


<!-- Title Page-->
<title>관리페이지</title>

</head>

<body class="animsition">
	<div class="page-wrapper">
		<%@ include file="/WEB-INF/jsp/admin/include/header.jsp"%>


		<!-- PAGE CONTENT-->
		<div class="page-content--bgf7">
			<!-- BREADCRUMB-->
			<section class="au-breadcrumb2">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="au-breadcrumb-content">
								<div class="au-breadcrumb-left">
									<ul class="list-unstyled list-inline au-breadcrumb__list">
										<li class="list-inline-item active"><a href="#">Admin</a>
										</li>
										<li class="list-inline-item seprate"><span>/</span></li>
										<li class="list-inline-item">메뉴관리</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- END BREADCRUMB-->

			<!-- WELCOME-->
			<section class="welcome p-t-10">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="title-4">메뉴관리</h1>
							<hr class="line-seprate">
						</div>
					</div>
				</div>
			</section>
			<!-- END WELCOME-->
			<!-- DATA TABLE-->
			<section class="p-t-20">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3 class="title-5 m-b-35">메뉴목록</h3>
							<div class="table-data__tool">
								<div class="table-data__tool-left">
									<input id="schMenuNo" type="text" placeholder="메뉴번호" class="au-btn-filter">
									<input id="schMenuNm" type="text" placeholder="메뉴명" class="au-btn-filter">
								</div>
								<div class="table-data__tool-right">
									<button class="au-btn au-btn-icon au-btn--green au-btn--small"
										data-toggle="modal" data-target="#largeModal">
										<i class="zmdi zmdi-plus"></i>메뉴 추가
									</button>
									<button id="btnSearch" class="au-btn au-btn-icon au-btn--green au-btn--small">
										<i class="fa  fa-search"></i>검색
									</button>
								</div>
							</div>
							<div class="table-responsive table-responsive-data2">
								<table id="tblMenu" class="table table-data2">
									<thead>
										<tr>
											<th data-field="menuNo">메뉴번호</th>
											<th data-field="menuNm">메뉴명</th>
											<th data-field="menuPrc">단가</th>
											<th data-field="menuDesc">메뉴설명</th>
											<th data-field="menuStockQty">메뉴재고</th>
											<th data-field="DispYn">전시여부</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tr-shadow" onclick='showPopup(1)'
											data-toggle="modal" data-target="#largeModal">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr class="spacer"></tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- END DATA TABLE-->

			<!-- modal large -->
			<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
				aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">메뉴등록/수정</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="card-body card-block">
								<form id="frmMenu" name="data" class="form-horizontal">
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">메뉴번호</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="number" id="menuNo" name="menuNo" placeholder="메뉴번호"
												class="form-control" readonly>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="menuNm" class=" form-control-label">메뉴 명</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="menuNm" name="menuNm"
												placeholder="메뉴 명" class="form-control"> <small
												class="form-text text-muted"></small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="price" class=" form-control-label">단가</label>
										</div>
										<div class="col-3 col-md-3">
											<input type="number" id="menuPrc" name="menuPrc" placeholder="단가"
												class="form-control"> <small
												class="help-block form-text"></small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="menuDesc" class=" form-control-label">메뉴
												설명</label>
										</div>
										<div class="col-12 col-md-9">
											<textarea name="menuDesc" id="menuDesc" rows="3"
												placeholder="메뉴 설명..." class="form-control"></textarea>
											<small class="help-block form-text"></small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="menuStock" class=" form-control-label">메뉴
												재고</label>
										</div>
										<div class="col-3 col-md-3">
											<input type="number" id="menuStockQty" name="menuStockQty"
												placeholder="재고" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="textarea-input" class=" form-control-label">전시여부</label>
										</div>
										<div class="col-12 col-md-9">
											<label><input type="radio" name="menuDispYn" value='Y' checked>전시</label> 
											<label><input type="radio" name="menuDispYn" value='N'>비전시</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="file-input" class=" form-control-label">메뉴
												이미지</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="file" id="menuImgNm" name="menuImgNm"
												class="form-control-file">
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button onclick="btnSave()" type="button" class="btn btn-primary">저장</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal large -->

			<%@ include file="/WEB-INF/jsp/admin/include/footer.jsp"%>
		</div>
</body>
<script type="text/javascript">

	var menuData=[];
	

	$("#btnSave").click(function(){
		event.preventDefault();
		menuAlert();
	});
	

	function showPopup(prdNo) {
		alert(prdNo);
	}
	
	function btnSave()
	{
		if(!menuAlert()){
			return;
		}
		alert("저장하시겠습니까?");
		var form = $('#frmMenu')[0];
		var data = new FormData(form);
		
		$.ajax({
			url : '/admin/menu/add',
			data : data,
			method : 'post',
			enctype : 'multipart/form-data',
			contentType : false,
			processData : false,
			
			success : function(data){
				alert("성공");
			},
			error : function(data){
				alert("에러");
			},
			complete : function(data){
				console.log(data.responseText);
			}
		});
		
		
	}
	
	function menuAlert(){
		if(!data.menuNm.value){
			alert("메뉴명을 입력해주세요.");
			data.menuNm.focus();
			return false;
		}
		
		if(!data.menuPrc.value){
			alert("단가를을 입력해주세요.");
			data.menuPrc.focus();
			return false;
		}
		
		if(!data.menuStockQty.value){
			alert("재고을 입력해주세요.");
			data.menuStockQty.focus();
			return false;
		}
		
		/* if(!data.menuImgNm.value){
			alert("이미지를 선택해주세요.");
			data.menuImgNm.focus();
			return false;
		} */
		return true;
	}
	
	$(document).ready(function(){
		$('#tblMenu').bootstrapTable({
			data : menuData
		});
		$('#tblMenu').bootstrapTable('load', menuData);
		
		$('#tblMenu').delegate("tr", "click", function(){
			var tr = $(this);
			var td = tr.children();
			var menuNo = td.eq(0).text();
			var pUrl = '/admin/menu/' + menuNo; 
			
			$.ajax({
				url : pUrl,
				method : 'GET',
				dataType : 'json',
				success : function(data){
					console.log(data)
					alert("성공");
					$('#menuNo').val(data.menuNo);
					$('#menuNm').val(data.menuNm);
					$('#menuPrc').val(data.menuPrc);
					$('#menuDesc').val(data.menuDesc);
					$('#menuStockQty').val(data.menuStockQty);
					/* $('#menuDispYn').val(data.menuDispYn); */
					$(":radio[name='menuDispYn'][value=" +data.DispYn+"]").attr('checked', true);
					$('#largeModal').modal('toggle'); //bootstrap 라이브러리 켜져있으면 꺼주고 꺼져있으면 켜줌
					
				},
				error : function(data){
					alert("에러");
				}
				
				
				
			})
		});
	});
	
	$("#btnSearch").click(function(){
		event.preventDefault();
		
		$.ajax({
			url : '/admin/menu',
			method : 'GET',
			data : {
				menuNo : $("#schMenuNo").val(),
				menuNm : $("#schMenuNm").val()
			},
			success : function(data){
				if(data === ""){
					alert("메뉴가 존재하지 않습니다.");
				} else{
					menuData = data;
				}
			},
			complete : function(data){
				$('#tblMenu').bootstrapTable('load', menuData);
				console.log(data);
			}
		})
	});
</script>
</html>