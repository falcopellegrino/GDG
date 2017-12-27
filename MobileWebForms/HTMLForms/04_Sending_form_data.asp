<%
Dim vsay
vsay = Request.Form("say")
Dim vto
vto = Request.Form("to")

Response.Write(vsay & " " & vto)
%>