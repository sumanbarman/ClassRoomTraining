<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="WEB-INF/showErrorMessage.jsp" %> --%>

<html>

<head>  
  <link rel="stylesheet" type="text/css" href="default.css">

  <script language="JavaScript">
      function checkAll(field)
      {
          for (i=0; i < field.length; i++)
          {
              field[i].checked = true;
          }
      }
  </script>
</head>

<body>
	<p><%-- <%@include file="showImage.jsp"%> --%></p>
  <p><a href="controller?action=addCar">[Add Car]</a></p>
  
  <form name="deleteForm" method="post" action="controller">
  <input type="hidden" name="action" value="deleteCar" />
  <table>
      <th><a href="javascript:checkAll(document.deleteForm.id)">Select All</a></th>
      <th>Action</th>
      <td><input type="checkbox" name="id" value="${car.id}"></td>
      <td><a href="controller?action=editCar&id=${car.id}">Edit</a></td>
    
    <tr>
      <td colspan="5">
        <input type="submit" name="Delete Checked" value="Delete Checked" />
        &nbsp;&nbsp;
        <input type="reset" name="Reset" value="Reset" />
      </td>
    </tr>
    
  </form>

</html>