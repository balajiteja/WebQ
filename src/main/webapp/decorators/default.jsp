<%@ include file="/taglibs.jsp" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title><decorator:title default="Welcome"/> | <fmt:message key="webapp.name"/></title>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="${ctx}/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/styles/deliciouslyblue/theme.css" />
    <script type="text/javascript" src="${ctx}/scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery.windowName-0.9.1.plugin.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/global.js"></script>
    <decorator:head/>
</head>
<body>
<div id="ajaxLoading" style="display: none; position: absolute; top: 0; right: 0; background: red; padding: 5px 10px; color: white">Loading...</div>
<a name="top"></a>
<div id="page">




    <div id="header" class="clearfix">

        <h1 style="cursor: pointer" onclick="location.href='${ctx}/'">Web Quiz</h1>

        <div id="branding">
            <a href="http://www.google.com" title="Team Incredibles">
                <img src="${ctx}/images/Incredibles.jpeg" width="203" height="75" alt="Incredibles"/></a>
        </div>

        <p><fmt:message key="webapp.tagline"/></p>
    </div>

    <div id="content">
        <c:if test="${not empty pageContext.request.remoteUser}">
        <div class="logout"><a href="${ctx}/logout">Logout</a></div>
    </c:if>

        <div id="main">
            <h1><decorator:title/></h1>
            <div id="body">
                <%@ include file="/messages.jsp"%>
                <decorator:body/>

                <div id="underground"><decorator:getProperty property="page.underground"/></div>
            </div>
        </div>

        <div id="sub">
            <h3>Resources</h3>

            <p>The following is a list of resources that I used to create this project..</p>

            <ul class="glassList">
                <li><a href="http://www.stackoverflow.com">Stackoverflow</a></li>
                <li><a href="http://www.dzone.com">Dzone</a></li>
                <li><a href="http://www.mkyong.com">Mkyong</a></li>
                <li>This helped a ton with setup and configuring<a href="http://www.youtube.com">YouTube</a></li>
                <li><a href="http://stackoverflow.com/questions/1099787/jquery-ajax-post-sending-options-as-request-method-in-firefox">jQuery OPTIONS Request</a></li>
                <li><a href="http://www.w3schools.com">W3schools</a></li>
            </ul>

            <img src="${ctx}/images/image.gif" alt="" width="150" height="112" class="right" style="margin: 10px 0 20px 0"/>
        </div>

        <div id="nav">
            <div class="wrapper">
                <h2 class="accessibility">Navigation</h2>
                <ul class="clearfix">
                    <li><a href="${ctx}/" title="Home"><span>Home</span></a></li>
                    <li><a href="${ctx}/users" title="View Users"><span>Team</span></a></li>
                </ul>
            </div>
        </div><!-- end nav -->

    </div><!-- end content -->

    <div id="footer">
        <p>
            <a href="http://www.utdallas.edu/">© The University of Texas at Dallas </a> | 800 W. Campbell Road, Richardson, Texas 75080-3021 ||
            Design by Teja</a>
        </p>
    </div>
</div>
</body>
</html>
