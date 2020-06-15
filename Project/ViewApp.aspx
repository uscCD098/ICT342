<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewApp.aspx.cs" Inherits="ViewApp" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#229EE2" Text="Appiontments"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        GridLines="None" OnRowCommand="GridView1_RowCommand" 
            AutoGenerateColumns="False" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        <Columns>
               
                <asp:BoundField HeaderText="User ID" DataField="UId"/>
                <asp:BoundField HeaderText="Doctor Name" DataField="DName" />
                <asp:BoundField HeaderText="Appointment Date" DataField="Date" />
                <asp:BoundField HeaderText="Appointment Time" DataField="Time" />
               
                </Columns>
        <Columns>
          <asp:TemplateField HeaderText ="Delete">
         <ItemTemplate>

        <asp:LinkButton ID="yes" runat ="server" CommandArgument='<%#Eval("AId")%>' Text ="Delete" CommandName ="Delete" ></asp:LinkButton>
      </ItemTemplate>
    </asp:TemplateField>
        </Columns>

    </asp:GridView>

</div>
</asp:Content>