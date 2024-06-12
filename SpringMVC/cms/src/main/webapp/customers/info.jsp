<%@ page import="org.example.cms.service.CustomerService" %>
<%@ page import="org.example.cms.service.CustomerServiceFactory" %>
<%@ page import="org.example.cms.model.Customer" %>
<%!
    private CustomerService customerService = CustomerServiceFactory.getInstance();
%>
<%
    Long id = Long.valueOf(request.getParameter("id"));
    Customer customer = customerService.findOne(id);
%>
<form action="/customers/list.jsp" method="post">
<fieldset>
    <legend>Customer Information</legend>
    <input type="hidden" name="id" value="<%= customer.getId() %>">
    <table>
        <tr>
            <td>Id</td>
            <td>
                <%= customer.getId() %>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name" value="<%= customer.getName() %>">
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" value="<%= customer.getEmail() %>">
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <input type="text" name="address" value="<%= customer.getAddress() %>">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Update">
            </td>
        </tr>
    </table>
</fieldset>
</form>

<%--<h2>Hello!!!</h2>--%>
<a href="/customers">Back to list</a>.