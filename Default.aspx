<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test</title>
    <link href="src/jquery.tagsinput.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js'></script>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/start/jquery-ui.css" />
    <script src="src/jquery.tagsinput.js" type="text/javascript"></script>
    <style> 
        nput[type=text], textarea 
        {      
            -webkit-transition: all 0.30s ease-in-out;                                
            -moz-transition: all 0.30s ease-in-out;                           
            -ms-transition: all 0.30s ease-in-out;  
            -o-transition: all 0.30s ease-in-out;                 
            outline: none;           
            padding: 3px 0px 3px 3px;                                                             
            margin: 5px 1px 3px 0px;                                                               
            border: 1px solid #DDDDDD;                                                      
        }                                                                                                        
                                                        
        input[type=text]:focus, textarea:focus                                                              
        {                                  
            box-shadow: 0 0 5px rgba(81, 203, 238, 1);                                                            
            padding: 3px 0px 3px 3px;                                                                    
            margin: 5px 1px 3px 0px;                                        
            border: 1px solid rgba(81, 203, 238, 1);                                      
        }      
    </style>                 
</head>                                     
<body>
    <form id="form1" runat="server">    
    <div style="color: white; background-color: Gray;">                     
        <center>
            <h1>  
                Tag Input Demo Application           
            </h1>
            <center>        
    </div>
    <div>      
        <br>                   
        <b>Carat Size </b>
        <asp:TextBox ID="txtFrom" required pattern="^\d*(\.\d{0,2})?$" runat="server" Placeholder="From"></asp:TextBox>
        <asp:TextBox ID="txtTo" required pattern="^\d*(\.\d{0,2})?$" runat="server" Placeholder="To"></asp:TextBox>
        <br>
        <br>
        <asp:ImageButton Style="margin-left: 100px;" ID="ImageButton1" runat="server" ImageUrl="img/add.png"
            Height="50px" Width="50px" OnClick="ImageButton1_Click" />
        <br>
        <br>
        <asp:TextBox Style="height:50px !Important; width: 200px !Important;" 
            ReadOnly="true" ID="txtResult" runat="server"></asp:TextBox>
        <br>
        <br>             
    </div>
    </form> 
    <script type="text/javascript"> 

        function onChangeTag(input, tag) {
            alert("Changed a tag: " + tag);
        }
        function onRemoveTag(tag) {
            document.getElementById("<%=txtResult.ClientID %>").innerHTML = txtResult.Text = '';
            alert("Removed a tag: " + tag);
        }

        $(function () {

            $('#txtResult').tagsInput({ width: 'auto' });    

        });
         </script>
</body>
</html>
