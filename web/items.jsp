<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Items</title>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">

  <div class="row mt-3">
    <div class="col-12">
      <table class="table table-striped table-hover" >
        <thead style="border-bottom-style: solid;border-bottom-width: 2px;border-bottom-color: green">
        <tr>
          <th>ID</th>
          <th>NAME</th>
          <th>PRICE</th>
          <th>AMOUNT</th>
          <th style="width: 10%">DETAILS</th>
        </tr>

        </thead>

        <tbody>
        <%
          ArrayList<Item> newItem = (ArrayList<Item>) request.getAttribute("goods");
          if (newItem!=null){
            for (Item element : newItem) {
        %>
        <tr>
          <td><%=element.getId()%></td>
          <td><%=element.getName()%></td>
          <td><%=element.getPrice()%></td>
          <td><%=element.getAmount()%></td>
          <td>
            <a class="btn btn-success btn-sm" href="/details?item_id=<%=element.getId()%>">DETAILS</a>
          </td>
        </tr>
        <%
            }
          }
        %>
        </tbody>
      </table>
    </div>
  </div>
</div>
</body>
</html>
