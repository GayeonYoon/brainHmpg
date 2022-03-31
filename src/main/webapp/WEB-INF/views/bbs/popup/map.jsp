<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>


	<div id="map" style="width:600px;height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c0c32c9cb35eb65b93ac9e9a7f426bb5"></script>
	
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(37.485472620638, 126.898223123534), // ��ǥ
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options); // ���� ����
			
			
			// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
			var markerPosition  = new kakao.maps.LatLng(37.485472620638, 126.898223123534); 

			// ��Ŀ�� �����մϴ�
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
			marker.setMap(map);

			var iwContent = '<div style="padding:5px;"><a href="https://map.kakao.com/link/to/�극�������� ����,37.485472620638,126.898223123534" style="color:blue" target="_blank">�극�������� ����</a></div>', 
			    iwPosition = new kakao.maps.LatLng(37.485472620638, 126.898223123534); //���������� ǥ�� ��ġ�Դϴ�

			// ���������츦 �����մϴ�
			var infowindow = new kakao.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
			infowindow.open(map, marker); 

			
		</script>
	
</body>
</html>