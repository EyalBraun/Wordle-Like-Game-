<%@ Page Title="" Language="C#" MasterPageFile="~/2.0/aspx pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="StatsTable.aspx.cs" Inherits="Eyal_Braun_Projects._2._0.aspx_pages.StatsTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table.styled-table {
            border-collapse: collapse;
            width: 100%;
            font-family: Arial, sans-serif;
            border: 1px solid #ccc;
        }
        table.styled-table th, table.styled-table td {
            border: 1px solid #ccc;
            padding: 6px 8px;
            text-align: left;
        }
        table.styled-table th {
            background-color: #4CAF50; /* green headers */
            color: white;
            font-weight: bold;
        }
        table.styled-table tr:nth-child(even) {
            background-color: #fafafa;
        }
    </style>

    <script>
        function toggle_table() {
            var wrapper = document.getElementById("tableWrapper");
            wrapper.style.display = (wrapper.style.display === "none") ? "block" : "none";
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" style="font-family: Arial, sans-serif;">
        <label for="filterField" style="font-weight:bold; margin-right:10px;">Filter Column:</label>
        <asp:DropDownList ID="filterField" runat="server" />

        <label for="filterValue" style="font-weight:bold; margin-left:20px; margin-right:10px;">Filter Value:</label>
        <asp:TextBox ID="filterValue" runat="server" Width="150px" />

        <br /><br />

        <asp:Button ID="btnShow" runat="server" Text="Show Table" />
        <button type="button" onclick="toggle_table()" style="padding:6px 12px; margin-left:10px;">Toggle Table</button>
    </form>

    <h3>SQL Query:</h3>
    <pre style="background:#f0f0f0; padding:10px;"><%= SqlQuery %></pre>

    <div id="tableWrapper" style="margin-top:20px; display:block;">
        <%= CurrentTableHtml %>
    </div>
</asp:Content>
