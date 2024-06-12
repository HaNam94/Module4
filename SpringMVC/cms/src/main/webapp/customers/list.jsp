<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.List" %>
<%@ page import="org.example.cms.service.CustomerService" %>
<%@ page import="org.example.cms.service.CustomerServiceFactory" %>
<%@ page import="org.example.cms.model.Customer" %>
<%!
    private CustomerService customerService = CustomerServiceFactory.getInstance();
%>
<%--<%--%>
<%--    long count = customerService.count();--%>
<%--    List<Customer> customers = customerService.findAll();--%>
<%--%>--%>
<%
    List<Customer> customers = (List<Customer>) request.getAttribute("customers");
%>
<style>
    table {
        border: 1px solid #000;
    }

    th, td {
        border: 1px dotted #555;
    }
</style>

There are ${requestScope.customers.size()} customer(s) in list.
<%--There are <%= count %> customer(s) in list.--%>
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c" items="${requestScope.customers}">
        <tr>
            <td>
                <c:out value="${c.id}"/>
            </td>
            <td>
                <a href="/info?id=${c.id}">${c.name}</a>
            </td>
            <td>
                <c:out value="${c.email}"/>
            </td>
            <td>
                <c:out value="${c.address}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>