<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="gnb" style="padding-top:20px; text-align:center;">
	<div class="container">
		<div class="write_wrap">
			<h2 class="sr-only">${jj}</h2>
			<form name="n1" method="post" action="jlptEdit.do?jj=${jj}" enctype="multipart/form-data" onsubmit="return check()">
			<input type="hidden" name="bno" value="${vo.bno}">
			<input type="hidden" name="jj" value="${jj}">
			<!-- action을 처리하기전에 check()사용자 함수를 실행하고 되돌아 와라-->
				<table class="bord_table">
					<colgroup>
						<col width="20%">
						<col width="*">
					</colgroup>
					<tbody>
						<tr class="first">
							<th>作成者</th>
							<td><input type="text" name="writer" value="${vo.writer}"></td>
						</tr>
						<tr>
							<th>タイトル</th>
							<td><input type="text" name="title" value="${vo.title}"></td>
						</tr>
						<tr>
							<th>レベル</th>
							<td><input type="text" name="jlpt" value="${vo.jlpt}"></td>
						</tr>
						<tr>
							<th>語彙</th>
							<td class="filebox">
								<input type="file" name="file1" id="ex_file" value="${vo.wordname}">
							</td>
						</tr>
						<tr>
							<th>文法</th>
							<td class="filebox">
								<input type="file" name="file2" id="ex_file" value="${vo.grammarname}">
							</td>
						</tr>
						<tr>
							<th>読解</th>
							<td class="filebox">
								<input type="file" name="file3" id="ex_file" value="${vo.readingname}">
							</td>
						</tr>
						<tr>
							<th>聴解</th>
							<td class="filebox">
								<input type="file" name="file4" id="ex_file" value="${vo.listeningname}">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn_wrap">
					<input type="submit" value="投稿" class="btn_ok">&nbsp;&nbsp;
					<input type="reset" value="書き直し" class="btn_reset">&nbsp;&nbsp;
					<input type="button" value="リスト" class="btn_list" onClick="location.href='jlpt.do?jj=${jj}'">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- end contents -->


<script>
$(function() {
	$("#btn_ok").on("click", function() {
		if(!$("#writer").val()){
			alert("作成者をご入力ください");
			$("#writer").focus();
			return false;
		}
		if(!$("#title").val()){
			alert("タイトルをご入力ください");
			$("#title").focus();
			return false;
		}
		if(!$("#jlpt").val()){
			alert("レベルをご入力ください");
			$("#jlpt").focus();
			return false;
		}
	$("#n1").submit();
	
	})
});// end
</script>
<script>
	function check() {
		if(n1.writer.value=="") {
			alert("作成者をご入力ください");
			n1.writer.focus();
			return false;
		}
		if(n1.title.value=="") {
			alert("タイトルをご入力ください");
			n1.title.focus();
			return false;
		}
		if(n1.jlpt.value=="") {
			alert("レベルをご入力ください");
			n1.jlpt.focus();
			return false;
		}
		return true;
	}
</script>
	
<%@ include file="../footer.jsp"%>