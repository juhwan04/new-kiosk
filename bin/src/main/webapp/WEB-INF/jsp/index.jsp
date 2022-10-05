<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="../static/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/css/shop-homepage.css" rel="stylesheet">
  <link href="../static/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <!-- Bootstrap core JavaScript -->
  <script src="../static/vendor/jquery-3.2.1.min.js"></script>
  <script src="../static/vendor/bootstrap-4.1/bootstrap.min.js"></script>
  <script type ="text/javascript">
	$(document).ready(function(){
	    $('.count').prop('disabled', true);
			$(document).on('click','.plus',function(){
				 $(this).siblings('.count').val(parseInt($(this).siblings('.count').val())+1);
		});
    	$(document).on('click','.minus',function(){
    		$(this).siblings('.count').val(parseInt($(this).siblings('.count').val())-1);
				if ($(this).siblings('.count').val() == 0) {
					$(this).siblings('.count').val(1);
				}
	    	});
		});
  </script>

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">수량 선택 후 주문 버튼을 클릭 하세요~</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row" style="margin-top:10px">


      <div class="col-lg-12">

       

        <div id='menuList' class="row">
        <template id="menuCard">
	        <div class="col-lg-4 col-md-6 mb-4">
	           	<div class="card h-100">
	              	<a href="#"><img class="card-img-top" src="../static/media/1.PNG" alt="" style="height:300px;"></a>
	              	<div class="card-body">
		                <h4 class="card-title">
		                  춘천 국물 닭갈비 떡뽁이
		                </h4>
		                <h5 class="card-prc">2,000원</h5>
		                <p class="card-text">닭갈비와 떡볶이의 오묘한 조화</p>
	              	</div>
		            <div class="card-footer" >
		              	<div class="qty" style="display:inline;">
	                        <span class="minus bg-dark">-</span>
	                        <input type="number" class="count" name="qty" value="1">
	                        <span class="plus bg-dark">+</span>
	                    </div>
	                    <div style="display:inline; padding-top:0px">
	                     <button type="button" name="btnOrder" class="btn btn-warning" style="margin-left:15px; padding:3px 15px 3px 15px"><i class="fa fa-cutlery"></i> 주문</button>
	                    </div>
	                    <input type=hidden class="menu-no">
	                    <input type=hidden class="menu-prc">
	                    <input type=hidden class="menu-nm">
                	</div>
              	</div>
         	</div>
         </template>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
</div>
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Foods.com 2020</p>
    </div>
    <!-- /.container -->
  </footer>



</body>
<script type="text/javascript">
	$(document).ready(function(){
		getMenuList();
		
	});
	
	getMenuList = function(){
		$.ajax({
			url : 'admin/menu',
			method : 'GET',
			success : function(data){
				if(data===""){
					alert("주문가능한 상품이 없습니다.");
				}else{
					data.forEach(function(menu){
						let card = $($('#menuCard').html());
						card.find('.card-img-top').attr('src', '../static/media/' + menu.fileNm);
						card.find('.card-title').text(menu.menuNm);
						card.find('.card-prc').text(menu.menuPrc + '원');
						card.find('.card-text').text(menu.menuDesc);
						
						card.find('.menu-no').val(menu.menuNo);
						card.find('.menu-prc').val(menu.menuPrc);
						card.find('.menu-nm').val(menu.menuNm);
						$('#menuList').append(card);
					});
				}
			},
			error : function(data){
				alert('실패');
			}
		});
		
	}

	$(document).on('click','button[name="btnOrder"]', function(){
		var menuNo = $(this).parent().siblings('.menu-no').val();
		var menuNm = $(this).parent().siblings('.menu-nm').val();
		var menuPrc = $(this).parent().siblings('.menu-prc').val();
		var ordQty = $(this).parent().siblings('.qty').children('.count').val();
		
		var msg = menuNm + " " + ordQty + "개를 주문하시겠습니까?\n"
				+ menuPrc + "*" + ordQty + " = " + menuPrc*ordQty + "원 입니다.";
		
		if(confirm(msg)){
			$.ajax({
				url : "/admin/order",
				method : "POST",
				data :{
					menuNo : menuNo,
					menuNm : menuNm,
					menuPrc : menuPrc,
					ordQty : ordQty
				},
				success : function(){
					alert("주문성공!");
				},
				error : function(){
					alert(data);
				}
			})
		}
		
	})
	
</script>

</html>