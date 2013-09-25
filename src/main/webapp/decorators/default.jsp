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

    <%@ include file="/rightpanel.jsp" %>
    <div id="footer">
        <p>
            <a href="http://www.utdallas.edu/">© The University of Texas at Dallas </a> | 800 W. Campbell Road, Richardson, Texas 75080-3021 ||
            Design by Teja</a>
        </p>
    </div>
</div>
</body>
</html>
