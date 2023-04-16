<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-3 mt-5">
        <%
            Item item = (Item) request.getAttribute("tovar");
            if (item!=null) {
        %>
            <div class="row">
                <div class="col-6 mx-auto">
                    <div class="row">
                        <div class="col-12">
                            <label>NAME: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=item.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>PRICE: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="number" class="form-control" readonly value="<%=item.getPrice()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>AMOUNT: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="number" class="form-control" readonly value="<%=item.getAmount()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>DESCRIPTION: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <textarea  class="form-control" readonly rows="5"><%=item.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editItem">
                                Edit item
                            </button>

                            <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteItem">
                                Delete item
                            </button>
                        </div>
                    </div>

                    <!-- Modal Delete Item-->
                    <div class="modal fade" id="deleteItem" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="/delete-item" method="post">
                                    <input type="hidden" name="id" value="<%=item.getId()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5">Confirm Delete</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <h5 class="text-center">Are you sure?</h5>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                        <button type="submit" class="btn btn-danger">YES</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Edit Item-->
                    <div class="modal fade" id="editItem" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit item</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="/save-item" method="post">
                                        <input type="hidden" name="item-id" value="<%=item.getId()%>">
                                        <div class="row">
                                            <div class="col-12">
                                                <label>NAME: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <input type="text" class="form-control" name="item-name" value="<%=item.getName()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>PRICE: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <input type="number" class="form-control" name="item-price" value="<%=item.getPrice()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>AMOUNT: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <input type="number" class="form-control" name="item-amount" value="<%=item.getAmount()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>DESCRIPTION: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <textarea name="item_description" class="form-control" rows="5"><%=item.getDescription()%></textarea>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <button class="btn btn-primary">SAVE ITEM</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%
            } else {
        %>
                <h3 class="text-center">ITEM NOT FOUND</h3>
        <%
            }
        %>
    </div>
</body>
</html>
