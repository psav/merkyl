<!doctype html>
<html>
<body>
  <form method="get" action="/gui/">
    <input name="filename">
    <input type="submit" value="Add Log File">
  </form>
<table>
<tr><td>Logger name</td><td>Temp file name</td><td>Size</td><td>Real Path</td><td>Running</td><td>Operations</td></tr>
 % for log in logs:
   <tr>
     <td>{{log['name']}}</td>
     <td>{{log['tmp_name']}}</td>
     <td>{{log['size']}}</td>
     <td>{{log['filename']}}</td>
     <td>{{log['running']}}</td>
     <td>
       % if not log['running']:
         <a href="/gui/?op=start&name={{log['name']}}">Start</a>
       % else:
         <a href="/gui/?op=reset&name={{log['name']}}">Reset</a>
	 <a href="/gui/?op=stop&name={{log['name']}}">Stop</a>
       % end
	 <a href="/gui/?op=delete&name={{log['name']}}">Delete</a>
	 <a href="/gui/?op=get&name={{log['name']}}">Get</a>
     </td>
   <tr>
 % end
</table>
 % end
</body>
</html>
