<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
</script>
<div class="content">
	<div class="container-fluid">
		<div class="row">
	        <div class="col-md-12">
	           	<div class="card">
	               	<div class="header">
	                   	<h4 class="title">게시판</h4>
	                   	<p class="category">선택한 게시글 번호 조회 결과</p>
	               	</div>
	               	<div class="content table-responsive table-full-width">
	                   	<table class="table table-hover table-striped">
	                       	<thead>
	                       		<th>No</th>
	                       		<th>Name</th>
	                       		<th>Age</th>
	                       		<th>Country</th>
	                       		<th>Etc</th>
	                       	</thead>
	                       	<tbody>
	                       		<c:forEach items="${welcomeWebList}" var="welcomeWebList">
	                       			<tr>
                       					<td><c:out value="${welcomeWebList.seqNo}" /></td>
                       					<td><c:out value="${welcomeWebList.userName}" /></td>
                       					<td><c:out value="${welcomeWebList.age}" /></td>
                       					<td><c:out value="${welcomeWebList.country}" /></td>
                       					<td><c:out value="${welcomeWebList.etc}" /></td>
	                       			</tr>
	                       		</c:forEach>
	                       	</tbody>
	                   	</table>
	               	</div>
	               	<div class="content">
	                   	<div class="row">
	                   		<div class="col-md-2 col-md-offset-5">
			                   	<button class="btn btn-wd btn-info" onclick="location.href='main.do?pageName=main'">다시 선택하기</button>
	                   		</div>
	                   	</div>
                   	</div>
	           	</div>
	       	</div>
	   	</div>
	</div>
</div>