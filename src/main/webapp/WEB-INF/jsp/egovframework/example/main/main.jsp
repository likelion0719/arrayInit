<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card ">
					<div class="header">
						<h4 class="title">게시글 조회</h4>
					</div>
					<div class="content">
						<form id="selectSeqNoFrm" class="form-horizontal"
							action="welcomeWeb.do">
							<div class="row">
								<div class="form-group">
									<label class="col-sm-2 control-label">글 번호 선택</label>
									<div class="col-sm-8">
										<c:forEach items="${seqNoList}" var="seqNoList">
											<label class="checkbox checkbox-inline"> <input
												type="checkbox" data-toggle="checkbox" name="selectSeqNo"
												value="${seqNoList.seqNo}">${seqNoList.seqNo}
											</label>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-sm-2 control-label">컬럼 선택</label>
									<div class="col-sm-8">
										<label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" id="selectCount1"
											name="selectColumn" value="seqNo">seqNo
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											id="selectCount2" value="userName">userName
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											id="selectCount3" value="age">age
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											id="selectCount4" value="country">country
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											id="selectCount5" value="etc">etc
										</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-sm-2 control-label">출력횟수 선택</label>
									<c:forEach begin="1" end="5" var="i">
										<div class="col-sm-2" id="radioCount">
											<label id="selectCount${i}1" class="radio checked"> <span class="icons"><span
													class="first-icon fa fa-circle-o"></span><span
													class="second-icon fa fa-dot-circle-o"></span></span><input
												type="radio" class="selectCount${i}" data-toggle="radio"
												id="selectCount${i}0" name="selectCount${i}" value="1" checked="checked">1
											</label> 
											<label id="selectCount${i}2" class="radio"> <span class="icons"><span
													class="first-icon fa fa-circle-o"></span><span
													class="second-icon fa fa-dot-circle-o"></span></span><input
												type="radio" class="selectCount${i}" data-toggle="radio"
												name="selectCount${i}" value="2">2
											</label>
										</div>
									</c:forEach>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2 col-md-offset-5">
									<input type="submit" class="btn btn-wd btn-success"
										value="검색하기">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(".radio").addClass("disabled");
$("[type=radio]").removeAttr("checked","checked");

$(document).ready(function() {
	$(".checkbox").change(function() {
		var check=$(this).children('input').attr("id");
		
		if($(this).attr("class") === "checkbox checkbox-inline checked") {
			//label 클래스
			$("#"+check+"1").removeClass("disabled");
			$("#"+check+"2").removeClass("disabled");
			//input 태그
			//$("."+check).attr("checked","checked");
			$("#"+check+"0").prop("checked",true);	
		} else {
			//label 태그	
			$("#"+check+"1").addClass("disabled");
			$("#"+check+"2").addClass("disabled");
			//input 태그
			//$("."+check).removeAttr("checked","checked");
			$("#"+check).prop("checked",false);	
		}
	})
})
</script>
