<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emplotyee.aspx.cs" Inherits="empjqeryc2810.emplotyee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery.js"></script>
    <script type="text/javascript">

        $(document).ready(function()

        {
            SHOW();
        });

        function SHOW()
        {
            $.ajax({


                url: 'emplotyee.aspx/EmpGet',
                type: 'post',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                data: "{}",
                success: function (pp) 
                {
                    pp = JSON.parse(pp.d);

                    $("#tblemployee").find("tr:gt(0)").remove();

                    for (var i = 0; i < pp.length; i++)

                    {
                   $("#tblemployee").append('<tr><td>'+pp[i].empid+'</td><td>'+pp[i].name+'</td><td>'+pp[i].address+'</td><td>'+pp[i].age+'</td></tr>');
                    }
                },
                error: function () { alert('data not displayed!!'); }


            });
        }

        function INSERT()
        {
            $.ajax({


                url: 'emplotyee.aspx/EmpInsert',
                type: 'post',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                data: "{A:'" + $("#txtname").val() + "',B:'" + $("#txtaddress").val() + "',C:'" + $("#txtage").val() + "'}",
                success: function () {
                    alert('data has been saved!!');
                    SHOW();
                },
                error: function () { alert('data has been not saved!!');}
                

            });
        }
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name:</td>
             <td><input type="text" id="txtname" /></td>
        </tr>
        <tr>
            <td>Address:</td>
             <td><input type="text" id="txtaddress"/></td>
        </tr>
        <tr>
            <td>Age:</td>
             <td><input type="text" id="txtage" /></td>
        </tr>
        <tr>
            <td></td>
             <td><input type="button" id="btninsert" value="submit" onclick="INSERT()" /></td>
        </tr>
    </table>

        <table id="tblemployee" style="background-color:darkorange;color:black">
            <tr style="background-color:aqua">
                <th>Employee ID</th> <th>Employee Name</th> <th>Employee Address</th> <th>Employee Age</th>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
