<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Bicycle_Code = String.format("%06d", (int) Math.floor(Math.random()*1000000));
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자전거 등록번호 생성</title>
		<style>
			select:invalid {
				color: gray;
			}
			
			select:invalid * {
				color: black;
			}
		</style>
	</head>
	<body>
		<form name="form1" method="post" action="update_precode.jsp" id="update_precode" >
			<p>거주지역 :
				<select name="rlg" id="rlg" required="required">
					<option value="" selected="selected" hidden="hidden" disabled="disabled">광역자치단체를 선택해주세요.</option>
					<optgroup label="특별시, 광역시, 특별자치시">
						<option value="01">서울특별시</option>
						<option value="02">부산광역시</option>
						<option value="03">대구광역시</option>
						<option value="04">인천광역시</option>
						<option value="05">광주광역시</option>
						<option value="06">대전광역시</option>
						<option value="07">울산광역시</option>
						<option value="08">세종특별자치시</option>
					</optgroup>
					<optgroup label="도, 특별자치도">
						<option value="09">경기도</option>
						<option value="10">강원도</option>
						<option value="11">충청북도</option>
						<option value="12">충청남도</option>
						<option value="13">전라북도</option>
						<option value="14">전라남도</option>
						<option value="15">경상북도</option>
						<option value="16">경상남도</option>
						<option value="17">제주특별자치도</option>
					</optgroup>
				</select>
				<select name="blg" id="blg" required="required">
					<option value="" selected="selected" hidden="hidden" disabled="disabled">기초자치단체를 선택해주세요.</option>
					<optgroup label="기초구역" id="blg_group">
					</optgroup>
				</select>
			</p>
			<p>난수: <%= Bicycle_Code %></p>
			<input type="hidden" name="random_number" value="<%= Bicycle_Code %>" />
			<p><input type="submit" value="번호 생성"></p>
		</form>
		<script>
			const main = async () => {
				const regions = await (await fetch("./regions.json")).json();
				const regionKeys = Object.keys(regions);
				
				const inputBLGs = blgs => {
					const blg_group = document.querySelector("#blg_group");
					while (blg_group.firstChild) {
						blg_group.removeChild(blg_group.firstChild);
					}
					
					let index = 0;
					for (let blg of blgs) {
						let blgString = "<option value=\"" + String(++index).padStart(2, '0') + "\">" + blg + "</option>";
						blg_group.innerHTML += blgString;
					}
				};
				
				const changeBLG = event => {
					let index = Number(event.target.value) - 1;
					let regionSelected = regionKeys[index];
					inputBLGs(regions[regionSelected]);
				};
				
				const rlg = document.querySelector("#rlg");
				rlg.addEventListener("change", changeBLG);
			};
			
			main();
		</script>
	</body>
</html>