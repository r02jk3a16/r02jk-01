<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>報告一覧</title>
</head>
<body>
	<%	
		String pro_name = (String)request.getAttribute("pro_name");
		String pro_id = (String)request.getAttribute("pro_id");
		List<String[]> resultList = (List<String[]>) request.getSession().getAttribute("resultList");
		List<String> task_name = (List<String>) request.getAttribute("task_name");
		 int flag = 0;
	%>
	<h1><%=pro_name%></h1>
	<%
		if(resultList.size()==0){
	%>
		<h1>当該課題の報告は現在上がっていません</h1>
	<%
		}else{
	%>
		
		
		<form action="./sk10" method="post">
	<%
		int index = 0;
		for(int i=0;i<task_name.size();i++){
	%>
			<p><b><%= task_name.get(i)%></b></p>
	<%
			if(!resultList.get(index)[1].equals(task_name.get(i))){
	%>
				<p>この作業の報告は現在上がっていません</p>
	<%
			}else{
	%>
				<table>
	<%
				while(resultList.get(index)[1].equals(task_name.get(i))){
					String[] repo = resultList.get(index);
					%>
							<tr><td><%=repo[3] %></td><td><%=repo[4] %></td>
							<td><button type="submit" name="repode<%=i %>" value="<%= repo[4]%>">詳細へ</button></td></tr>
					<%
					if(index+1<resultList.size()){
						index+=1;
					}else{
						break;
					}
				}
	%>
				</table>
	<%
			}
			
		}
	%>
		</form>
	<%
		}
	%>
</body>
</html>