<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

</script>

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
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											value="seqNo">seqNo
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											value="userName">userName
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											value="age">age
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											value="country">country
										</label> <label class="checkbox checkbox-inline"> <input
											type="checkbox" data-toggle="checkbox" name="selectColumn"
											value="etc">etc
										</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-sm-2 control-label">출력횟수 선택</label>
									<div class="col-sm-8">
										<label class="radio checked"> <span class="icons"><span
												class="first-icon fa fa-circle-o"></span><span
												class="second-icon fa fa-dot-circle-o"></span></span><input
											type="radio" data-toggle="radio" name="selectCount" value="1"
											checked="checked">1
										</label> <label class="radio"> <span class="icons"><span
												class="first-icon fa fa-circle-o"></span><span
												class="second-icon fa fa-dot-circle-o"></span></span><input
											type="radio" data-toggle="radio" name="selectCount" value="2">2
										</label>
									</div>
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