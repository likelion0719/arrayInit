<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	var hanqArr = ["a","b","c"];
	var hanqClassArr = new Array("a","b","c");
	
	hanqArr.push("d","e"); //배열 뒤에 추가할때 
	

	$(function() {
		var pageName = "<c:out value="${param.pageName}"/>";
		 
		if (pageName != "") {
			$(".menu").removeClass("active");
			$("#" + pageName).addClass("active");
		}
		
		$(".menu").click(function() {
			var menu = $(this).attr("id");
			left.pageSubmitFn(menu);
			
		});
		/* for (var i = 0; i < hanqArr.length; i++) {
			alert(hanqArr[i])
		} */
		//alert(hanqArr[3]);
		//alert(hanqClassArr);
	});
	
	var left = {
			pageSubmitFn : function(menu) {
				$("#frm").attr("action", menu + ".do");
				$("#pageName").val(menu);
				$("#arr").val(hanqArr);
				//alert($("#arr").val());
				//alert(hanqArr);
				//alert(typeof hanqArr)
				
				//alert($("#arr").val());
				//alert(typeof $("#arr").val())
				//return
				$("#frm").submit();
			}		
		};
		
	<c:forEach items="${arr}" var="arr">
		//alert("<c:out value="${arr}"/>");
	</c:forEach>
</script>

<form id="frm">
	<input type="hidden" id="pageName" name="pageName"/>
	<input type="hidden" id="arr" name="arr" />
</form>

<div class="sidebar" data-color="orange" data-image="img/full-screen-image-3.jpg">
     <div class="logo">
        <a href="https://hanqea.co.kr/" class="logo-text">
            한큐에자바
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="https://hanqea.co.kr/" class="logo-text">
			한큐에자바
		</a>
	</div>
   	<div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="img/default-hanq.png" />
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    Hanqea
                    <b class="caret"></b>
                </a>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Edit Profile</a></li>
                        <li><a href="#">Settings</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li id="main" class="menu active">
                <a href="#">
                    <i class="pe-7s-graph"></i>
                    <p>게시글 조회</p>
                </a>
            </li>
            <li id="welcomeWeb2" class="menu active">
                <a href="#">
                    <i class="pe-7s-graph"></i>
                    <p>두번째</p>
                </a>
            </li>
        </ul>
   	</div>
</div>
