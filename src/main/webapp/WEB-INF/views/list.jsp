<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>방명록</title>

    <link rel="stylesheet" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="offcanvas.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand">Guestbook</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Guestbook</h1>
            <p><br>방명록을 작성 할 수 있는 페이지 입니다.<br>이름과 내용을 작성하신 후 등록해주세요.</p>
          </div>
          <div class="row">
          <c:forEach items="${list}" var="guestbook">
            <div class="col-xs-6 col-lg-4">
              <h2><span class="glyphicon glyphicon-comment aria-hidden="true"></span> ${guestbook.name }</h2>
              <p>${guestbook.content }</p>
              		작성자 아이디 : ${guestbook.id }<br>
              <p><a class="btn btn-default" role="button">${guestbook.regdate }</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            </c:forEach>
          </div><!--/row-->
          
          	<c:forEach items="${pageStartList}" var="pageIndex" varStatus="status">
				<a href="list?start=${pageIndex}">${status.index +1 }</a>&nbsp; &nbsp;
			</c:forEach>
          
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
          <div>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<form method="post" action="write">
					name : <input type="text" class="form-control" placeholder="이름을 입력하세요." name="name"><br>
					<textarea name="content" class="form-control" placeholder="내용을 입력하세요." cols="40" rows="6"></textarea>
					<br> <input type="submit" class="btn btn-primary" value="Submit">
					
				</form>
          </div>
        </div><!--/.sidebar-offcanvas-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; a_flower_@naver.com</p>
      </footer>

    </div><!--/.container-->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="offcanvas.js"></script>
</body>
</html>