<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/ztree.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/plugin/ztree/plugin/tree.js"></script>
<script type="text/javascript">

	var setting = {
			
	};

	var zNodes = [
	    {
	    	id: 0,
	    	name: '山东省'
	    },          
		{
			id: 1,
			name: '济南石油分公司',
			open: false,
			isParent: true
		},
		{
			id: 2,
			name: '青岛石油分公司',
			open: true,
			isParent: true,
			children: [
				{
					id: 20001,
					name: '莱西',
					isParent: false
				}
			]
		},
		{
			id: 3,
			name: '烟台市',
			open: false
		},
		{
			id: 4,
			name: '潍坊市',
			isParent: true
		},
		{
			id: 4,
			name: '聊城',
			isParent: true,
			open: false,
			children:[
				{
					id: 4001,
					name: '茌平'
					
				},
				{
					id: 4002,
					name: '东阿'
				}
			]
		}
	]
	
	$(function(){
		//$.fn.zTree.init($("#tree"), setting, zNodes);
		myTreeOper.init();
	});


</script>
</head>
<body>
	<!--搜索框-->
	<div class="padd" style="padding-bottom: 0px;">
        <div class="input-append row-fluid" style="margin-bottom: 0px;">
			<input id="search_condition" type="text" placeholder="请输入搜索条件" class="span8" style="font-size:12px"/>
			<button type="button" class="btn btn-info" onclick="search_ztree('dep_tree', 'search_condition')">搜索</button>
        </div>
    </div>
	<div>
		<ul id="tree" class="ztree"></ul>
	</div>
	<div id="rMenu">
		<ul>
			<li>
			    <ul id="r_addFolder"><li>增加文件夹</li></ul>
			    <ul id="r_addNode"><li>增加节点</li></ul>
			    <ul id="r_updateNode"><li>修改名称</li></ul>
			    <ul id="r_deleteNode"><li>删除节点</li></ul>
			</li>
		</ul>
	</div>
</body>
</html>