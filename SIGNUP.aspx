<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIGNUP.aspx.cs" Inherits="newsletter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <TITLE>SIGNUP</TITLE>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<BODY STYLE="font-family:papyrus;color:#575B58;background-color:#C6CCC7">
    <DIV ALIGN="CENTER">
        <FORM ID="form1" runat="server">
                <TABLE STYLE="border:none">
                    <TR>
                        <TD><B>Full name</B></TD>
                        <TD><asp:TextBox Id="name" runat="server" STYLE="font-family:papyrus"></asp:TextBox></TD>
                    </TR>
                    <TR>
                        <TD><B>Age</B></TD>
                        <TD><asp:TextBox ID="age" runat="server" STYLE="font-family:papyrus"></asp:TextBox></TD>
                    </TR>
                    <TR>
                        <TD><B>Gender</B></TD>
                        <TD>
                            <asp:RadioButton ID="gender1" runat="server" Text="Female" GroupName="gender" /><BR>
                            <asp:RadioButton ID="gender2" runat="server" Text="Male" GroupName="gender" /><BR>
                            <asp:RadioButton ID="gender3" runat="server" Text="Transgender" GroupName="gender" /><BR>
                            <asp:RadioButton ID="gender4" runat="server" Text="Rather not say" GroupName="gender" /><BR>
                        </TD>
                    </TR>
                    <TR>
                        <TD><B>Date of birth</B></TD>
                        <TD>
                            <asp:TextBox ID="date" runat="server" STYLE="font-family:papyrus"></asp:TextBox>
                            <asp:TextBox ID="month" runat="server" STYLE="font-family:papyrus"></asp:TextBox>
                            <asp:TextBox ID="year" runat="server" STYLE="font-family:papyrus"></asp:TextBox>
                        </TD>
                    </TR>
                    <TR>
                        <TD><B>Contact number</B></TD>
                        <TD><asp:TextBox ID="number" runat="server" STYLE="font-family:papyrus"></asp:TextBox>
                    </TR>
                    <TR>
                        <TD><B>Email ID</B></TD>
                        <TD><asp:TextBox Id="emailid" runat="server" STYLE="font-family:papyrus"></asp:TextBox></TD>
                    </TR>
                    <TR>
                        <TD><B>Username</B></TD>
                        <TD><asp:TextBox Id="username" runat="server" STYLE="font-family:papyrus"></asp:TextBox></TD>
                    </TR>
                    <TR>
                        <TD><B>Password</B></TD>
                        <TD><asp:TextBox Id="password" runat="server" STYLE="font-family:papyrus"></asp:TextBox></TD>
                    </TR>
                    <TR>
                        <TD><B>Display image</B></TD>
                        <TD>
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="1">
                            <IMG SRC="1.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="2">
                            <IMG SRC="2.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="3">
                            <IMG SRC="3.png" width="40" height="40">
                            <br><INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="4">
                            <IMG SRC="4.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="5">
                            <IMG SRC="5.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="6">
                            <IMG SRC="6.png" width="40" height="40">
                            <br><INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="7">
                            <IMG SRC="7.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="8">
                            <IMG SRC="8.png" width="40" height="40">
                            <INPUT TYPE="RADIO" NAME="DISPLAY" VALUE="9">
                            <IMG SRC="9.png" width="40" height="40">
                        </TD>
                    </TR>
                    <TR>
                        <TD><asp:Button Id="buttonsubmit" runat="server" text="submit" STYLE="font-family:papyrus;" OnClick="SubmitButton" /></TD>
                        <TD><asp:Button Id="buttonreset" runat="server" text="reset" STYLE="font-family:papyrus" OnClick="ResetButton" /></TD>
                    </TR>
                </TABLE>
        </FORM>
    </DIV>
</BODY>