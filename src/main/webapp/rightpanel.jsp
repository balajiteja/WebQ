<%@ include file="/taglibs.jsp" %>

<head>
    <title>rightpanel</title>
</head>
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
