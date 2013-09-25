<%@ include file="/taglibs.jsp" %>

<head>
    <style type="text/css">
        .button {
            margin-top: 5px
        }

        #username {
            margin-bottom: 5px
        }

        .ui-dialog-content, form p {
            text-align: left
        }

        .ui-dialog-content {
            font-size: .8em
        }
    </style>
</head>
<div id="intro">
    <h2>Welcome to Computer Science Assessment Test</h2>

    <p>
        In this Test you will come across Object oriented programming concepts, Design patterns, Java , SQL Database, Unix, Networking and operating system related questions. You may refer <a href="http://www.tutorialspoint.com/">Study Reference</a> for 
        reference.
        
    </p>
    <ul>
        <li>Level 1 will consist of 10 brain teasers. The questions will be dynamically
        generated and will be of easy level. 2 minutes will be given to answer the questions. Each
        correct question means 3 points. There will be no negative marking. A score of more than
        20 points takes to level 2 else game over.</li>
        <li>Level 2 will consist of 10 aptitude questions. The questions will again be 
        dynamically generated and will be of medium difficulty. 1 minute 45 seconds will be
        given to solve the questions. Each correct question means 3 points. -1 for each wrong
        answer. A score of more than 20 points takes to level 3.</li>
        <li>Level 3 will consist of 10 vocabulary questions. The questions will be
        dynamically generated and will be of hard difficulty. 1 minute 30 seconds will be given
        to answer the questions. Each correct question means 3 points. -1 for each wrong answer.
        A score of more than 25 points makes you the winner.</li>
        <li>Implement login with Ajax, with the request coming from an insecure page.</li>
    </ul>

    <p>Constraints:- To make the game more interesting and difficult, the user won’t be allowed to
    search for answers on the internet or from any other resource. The game will check if the player
    is trying to search for answers on the internet or from any other resources and will lead to a
    disqualification in such a case.    </p>

    <p>If you are a returning user please login using your user name and password. 
    You may want to register other wise :)
    </p>

    <p>
        <button class="button" id="demo">Login</button>
        <button class="button" id="status">Register</button>
    </p>
</div>

<content tag="underground">
    <h3>Assumptions</h3>
    <ul>
        <li>It's 2011, you should be thinking about HTML5 and SOFEA.</li>
        <li>JRebel should be used to allow quick reloading of classes.</li>
        <li>Conventions are more important than configurability.</li>
    </ul>
</content>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"/>
<script type="text/javascript">

    var secure = true;

    var getHost = function() {
        var port = (window.location.port == "8080" || window.location.port == "8443") ? ":8443" : "";
        return ((secure) ? 'https://' : 'http://') + window.location.hostname + port;
    };


    var dialog = $('<div></div>');

    $(document).ready(function() {
        // see if the user is logged in

        $.get('${ctx}/login?ajax=true', function(data) {
            dialog.html(data);
            dialog.dialog({
                autoOpen: false,
                title: 'Authentication Required'
            });
        });

        $('#demo').click(function() {
            dialog.dialog('open');
            // prevent the default action, e.g., following a link
            return false;
        });

        $('#status').click(function() {
            $.ajax({url: getHost() + '${ctx}/api/login.json',
                type: 'GET',
                beforeSend: function(xhr){
                    xhr.withCredentials = true;
                },
                success: function(data, status) {
                    $(".status").remove();
                    $("#status").after("<span class='status'> Logged In: " + data.loggedIn + "</span>");
                }
            });
        })
    });
</script>
