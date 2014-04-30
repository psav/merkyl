<!doctype html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
</head>
<body role="document">


<!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/gui/#">Merkyl</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/gui/">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Server Actions <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/gui/?op=stopall">Stop All</a></li>
                <li><a href="/gui/?op=resetall">Reset All</a></li>
                <li><a href="/gui/?op=deleteall">Delete All</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">System</li>
                <li><a href="/gui/?op=quit">Quit</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container theme-showcase" role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2>Merkyl</h2>
          <form method="get" action="/gui/">
    <input name="filename">
    <input type="submit" value="Add Log File">
  </form><br>
 % if not logs:
  <h3> We ain't tailin' anything yet cap'n!
 % else:
<table class="table table-striped">
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
         <a href="/gui/?op=start&name={{log['name']}}" class="btn btn-success btn-xs" role="button">Start</a>
       % else:
         <a href="/gui/?op=reset&name={{log['name']}}" class="btn btn-warning btn-xs" role="button">Reset</a>
	 <a href="/gui/?op=stop&name={{log['name']}}" class="btn btn-danger btn-xs" role="button">Stop</a>
       % end
	 <a href="/gui/?op=delete&name={{log['name']}}" class="btn btn-danger btn-xs" role="button">Delete</a>
	 <a href="/gui/?op=get&name={{log['name']}}" class="btn btn-info btn-xs" role="button">Get</a>
     </td>
   <tr>
   % end
</table>
 % end
      </div>





    </div> <!-- /container -->



</body>
</html>
