<%@ Page Title="" Language="C#" 
    MasterPageFile="~/2.0/aspx pages/MasterPage.Master" 
    AutoEventWireup="true" 
    CodeBehind="UsersTable.aspx.cs" 
    Inherits="Eyal_Braun_Projects._2._0.aspx_pages.UsersTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 5px;
        }
        th {
            background-color: lightgreen;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form method="post">

    Filter Column:
    <select name="filterField">
        <option value="">--None--</option>
        <option value="First_Name">First_Name</option>
        <option value="Last_Name">Last_Name</option>
        <option value="City">City</option>
        <option value="Age">Age</option>
    </select>

    Filter Value:
    <input type="text" name="filterValue" />

    <br /><br />

    <input type="submit" value="Show Table" />

</form>

<br />

SQL Query:
<pre><%= SqlQuery %></pre>

<div id="tableWrapper">
    <%= CurrentTableHtml %>
</div>

</asp:Content>