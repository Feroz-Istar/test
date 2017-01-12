<!DOCTYPE html>
<%@page import="web.WebSocketTest"%>
<html>
<head>
<title>Pretech blog testing web sockets</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
    <div>
        <input type="text" id="userinput" /> <br> <input type="submit"
           value="Send Message to Server" onclick="start()" />
    </div>
    <div id="messages" val=<%=WebSocketTest.sessionUserIdMap.size() %>></div>
    <script type="text/javascript">
      /*   var webSocket = new WebSocket(
                'ws://localhost:8080/web/websocket');

        webSocket.onerror = function(event) {
            onError(event)
        };

        webSocket.onopen = function(event) {
            onOpen(event)
        };

        webSocket.onmessage = function(event) {
            onMessage(event)
        };

        function onMessage(event) {
            document.getElementById('messages').innerHTML += '<br />'
                    + event.data;
        }

        function onOpen(event) {
            document.getElementById('messages').innerHTML = 'Now Connection established';
        }

        function onError(event) {
            alert(event.data);
        }
 */
        function start() {
           var text = document.getElementById("userinput").value;

           /* webSocket.send(text); */
            
            $.post("SendSpecificMessage",
            	    {
            	        user_id: text,
            	    },
            	    function(data, status){
            	        alert("Data: " + data + "\nStatus: " + status);
            	    });
            
            return false;
        }
    </script>
</body>
</html>