<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8" />
<body>
	<div id="map" style="width: 375px; height: 400px;"></div>
</body>
</html>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49c98c2cbaef25affa039abe8446a78a">
	var container = document.getElementById('map');
	var options = {
		center : new daum.maps.LatLng(33.450701, 126.570667),
		level : 3
	};

	var map = new daum.maps.Map(container, options);
</script>
