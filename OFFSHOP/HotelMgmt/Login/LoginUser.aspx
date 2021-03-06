<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="HotelMgmt.Login.LoginUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">
    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <script src="jquery.js"></script>

    <script src="script.js"></script>

    <script src="script.responsive.js"></script>

    <script>jQuery(function($) {
    'use strict';
    if ($.fn.slider) {
        $(".art-slidecontainer79").each(function () {
            var slideContainer = $(this), tmp;
            var inner = $(".art-slider-inner", slideContainer);
            var helper = null;

            if ($.support.transition) {
                helper = new BackgroundHelper();
                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));
                inner.children().each(function () {
                    helper.processSlide($(this));
                });

            }


            inner.children().eq(0).addClass("active");
            slideContainer.slider({
                pause: 2600,
                speed: 600,
                repeat: true,
                animation: "fade",
                direction: "next",
                navigator: slideContainer.siblings(".art-slidenavigator79"),
                helper: helper                
            });
        });
    }
});
    </script>

    <style>
        .art-content .art-postcontent-0 .layout-item-0
        {
            margin-bottom: 10px;
        }
        .art-content .art-postcontent-0 .layout-item-1
        {
            border-spacing: 10px 0px;
            border-collapse: separate;
        }
        .art-content .art-postcontent-0 .layout-item-2
        {
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-width: 1px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-color: #CFD8E2;
            border-right-color: #CFD8E2;
            border-bottom-color: #CFD8E2;
            border-left-color: #CFD8E2;
            color: #303F50;
            padding-right: 10px;
            padding-left: 10px;
        }
        .art-content .art-postcontent-0 .layout-item-3
        {
            padding-right: 10px;
            padding-left: 10px;
        }
        .ie7 .art-post .art-layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }
        .ie6 .art-post .art-layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }
        .art-slidecontainer79
        {
            position: relative;
            width: 420px;
            height: 259px;
        }
        .art-slidecontainer79 .art-slide-item
        {
        }
        .art-slidecontainer79 .art-slide-item
        {
            -webkit-transition: 600ms ease-in-out opacity;
            -moz-transition: 600ms ease-in-out opacity;
            -ms-transition: 600ms ease-in-out opacity;
            -o-transition: 600ms ease-in-out opacity;
            transition: 600ms ease-in-out opacity;
            position: absolute;
            display: none;
            left: 0;
            top: 0;
            opacity: 0;
            width: 100%;
            height: 100%;
        }
        .art-slidecontainer79 .active, .art-slidecontainer79 .next, .art-slidecontainer79 .prev
        {
            display: block;
        }
        .art-slidecontainer79 .active
        {
            opacity: 1;
        }
        .art-slidecontainer79 .next, .art-slidecontainer79 .prev
        {
            width: 100%;
        }
        .art-slidecontainer79 .next.forward, .art-slidecontainer79 .prev.back
        {
            opacity: 1;
        }
        .art-slidecontainer79 .active.forward
        {
            opacity: 0;
        }
        .art-slidecontainer79 .active.back
        {
            opacity: 0;
        }
        .art-slide790
        {
            background-image: url(     'images/slide790.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide791
        {
            background-image: url(     'images/slide791.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide792
        {
            background-image: url(     'images/slide792.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide793
        {
            background-image: url(     'images/slide793.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide794
        {
            background-image: url(     'images/slide794.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide795
        {
            background-image: url(     'images/slide795.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide796
        {
            background-image: url(     'images/slide796.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide797
        {
            background-image: url(     'images/slide797.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slide798
        {
            background-image: url(     'images/slide798.jpg' );
            background-size: 100%;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        .art-slidenavigator79
        {
            display: inline-block;
            position: absolute;
            direction: ltr !important;
            top: 235px;
            left: 56.19%;
            z-index: 101;
            line-height: 0 !important;
            -webkit-background-origin: border !important;
            -moz-background-origin: border !important;
            background-origin: border-box !important;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            text-align: center;
            white-space: nowrap;
        }
        .art-slidenavigator79
        {
            background: #B9C2CB;
            background: linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            background: -webkit-linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            background: -moz-linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            background: -o-linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            background: -ms-linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            background: linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            -svg-background: linear-gradient(top, rgba(232, 235, 238, 0.6) 0, rgba(138, 153, 168, 0.6) 100%) no-repeat;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            padding: 7px;
        }
        .art-slidenavigator79 > a
        {
            background: #728597;
            background: #728597;
            background: #728597;
            background: #728597;
            background: #728597;
            background: #728597;
            background: #728597;
            -svg-background: #728597;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            margin: 0 10px 0 0;
            width: 10px;
            height: 10px;
        }
        .art-slidenavigator79 > a.active
        {
            background: #FA681E;
            background: #FA681E;
            background: #FA681E;
            background: #FA681E;
            background: #FA681E;
            background: #FA681E;
            background: #FA681E;
            -svg-background: #FA681E;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            margin: 0 10px 0 0;
            width: 10px;
            height: 10px;
        }
        .art-slidenavigator79 > a:hover
        {
            background: #455B73;
            background: #455B73;
            background: #455B73;
            background: #455B73;
            background: #455B73;
            background: #455B73;
            background: #455B73;
            -svg-background: #455B73;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            margin: 0 10px 0 0;
            width: 10px;
            height: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="art-main">
        <div class="art-sheet clearfix">
            <header class="art-header">


    <div class="art-shapes">

            </div>
<h2 class="art-slogan" data-left="94.19%">By California Mercantile Pvt. Ltd.</h2>




                
                    
</header>
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content">
                            <article class="art-post art-article">
                                
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout-wrapper layout-item-0">
<div class="art-content-layout layout-item-1">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-2" style="width: 50%" >
        <div class="image-caption-wrapper" style="width: 55%; float: left"><div id="79" style="position: relative; display: inline-block; z-index: 0; margin: 7px;  border-width: 0px;  float: left;" class="art-collage">
<div class="art-slider art-slidecontainer79" data-width="420" data-height="259">
    <div class="art-slider-inner">
<div class="art-slide-item art-slide790">

</div>
<div class="art-slide-item art-slide791">

</div>
<div class="art-slide-item art-slide792">

</div>
<div class="art-slide-item art-slide793">

</div>
<div class="art-slide-item art-slide794">

</div>
<div class="art-slide-item art-slide795">

</div>
<div class="art-slide-item art-slide796">

</div>
<div class="art-slide-item art-slide797">

</div>
<div class="art-slide-item art-slide798">

</div>

    </div>
</div>
<div class="art-slidenavigator art-slidenavigator79" data-left="56.19">
<a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a>
</div>



    </div>

        
         
         
         
         
         
         
        </div>
        <p style="text-align: left;"><br></p>
    </div><div class="art-layout-cell layout-item-2" style="width: 50%" >
        <p><img width="45" height="43" alt="" class="art-lightbox" src="images/loginimg.png"><span style="font-weight: bold; color: rgb(0, 0, 0); font-size: 22px;">Login</span></p>
            <p>&nbsp;</p>
                                                    <p>
                                                    <asp:DropDownList ID="ddlHotel" runat="server" AutoPostBack="True" 
                                                        BackColor="#FAE4E7" CssClass="roundBorder" 
                                                        Width="200px" Height="25px" Font-Size="Large" onselectedindexchanged="ddlHotel_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                        &nbsp;</p>
                                                    <p>
                                                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                                                    <span style="font-size: 14px; font-weight: bold; color: #000000;"><br></span></p><p>
                                                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                                                            ontextchanged="txtPwd_TextChanged"></asp:TextBox>
                                                        </p>
                                                    <p>
                                                        <br></p>
                                                    <p>
                                                        &nbsp;<p style="text-align: center;"><label class="art-checkbox">
                                                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                                                            Text="Label"></asp:Label>
                                                        </label></p><p style="text-align: center;">&nbsp;<asp:Button 
                                                        ID="btnLogin" runat="server" 
                    Text="Login" CssClass="art-button" 
                                                            onclick="btnLogin_Click" 
                    TabIndex="3"/>
                                                    &nbsp;<label class="art-checkbox"><br></label></p>
    </div>
    </div>
</div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-3" style="width: 50%" >
        <p><span style="-webkit-border-horizontal-spacing: 10px;"></span></p><ul><li><span style="font-weight: bold; color: rgb(250, 97, 20); font-size: 14px; text-shadow: rgba(23, 23, 23, 0.976563) 0px 0px 6px;">100% Secure.23, 0.976563) 0px 0px 6px;">100% Secure.</span></li><li><span style="font-weight: bold; color: rgb(250, 97, 20); font-size: 14px; text-shadow: rgba(23, 23, 23, 0.976563) 0px 0px 6px;">User Friendly Operation.</span></li><li><span style="color: rgb(250, 97, 20); font-weight: bold; font-size: 14px; text-shadow: rgba(23, 23, 23, 0.976563) 0px 0px 6px;">Comprehensive Database.</span></li></ul><p>
        </p>
    </div><div class="art-layout-cell layout-item-3" style="width: 50%" >
        <blockquote style="text-align: justify;"><span style="background-color: rgb(239, 242, 245);">This Software is developed by California Mercantile for easy Bar Counter Operation. It enable administrator to create specific user authentication permission.</span><span style="color: rgb(13, 18, 22); font-style: italic;"></span><br></blockquote>
    </div>
    </div>
</div>
</div>


</article>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="art-footer">
<p><span style="font-weight: bold;">Copyright California Mercantile © 2013 - 2023. All Rights Reserved.</span><br></p>
</footer>
        </div>
    </div>
    </form>
</body>
</html>
