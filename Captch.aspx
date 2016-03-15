<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Captch.aspx.cs" Inherits="Captch" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table>
            <tr>
                <td>
                    Enter Captha
                </td>
                <td>
                    <asp:TextBox ID="txt_captch" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txt_captch_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txt_captch" WatermarkText="Type Code">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <cc2:CaptchaControl ID="CaptchaControl1" runat="server" CaptchaBackgroundNoise="Extreme"
                                CaptchaLength="5" CaptchaHeight="40" CaptchaWidth="140" CaptchaLineNoise="None"
                                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" Width="140px" BorderColor="#ccc"
                                BorderStyle="Solid" BorderWidth="1px" Height="45px" Font-Size="10pt" CaptchaChars="1234567890abcdefghijklmnopqrstuvwxyz"
                                Font-Overline="true" FontColor="black" Font-Italic="true" CaptchaFont="MS Reference Sans Serif"
                                BackColor="WhiteSmoke" />
                        </ContentTemplate>
                      
                       
                    </asp:UpdatePanel>
                     
                </td>
                <td><br /><br /> <asp:Button ID="btn_refresh" runat="server" Text="Refresh" 
                         /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btn_Submit" runat="server" Text="Submit" OnClick="btn_Submit_Click" />
                    <asp:Button ID="btn_Reset" runat="server" Text="Reset" />
                </td>
                <td>
                    <asp:Label ID="lbl_lable" runat="server" Text="*Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
