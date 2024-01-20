
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    out.println(request.getParameter("pname"));
    out.println(request.getParameter("price"));
    out.println(request.getParameter("description"));
    out.print(request.getParameter("rate"));
    out.println(request.getParameter("file"));
    Part p=request.getPart("file");
    out.println(p.getHeader("content-disposition"));

%>