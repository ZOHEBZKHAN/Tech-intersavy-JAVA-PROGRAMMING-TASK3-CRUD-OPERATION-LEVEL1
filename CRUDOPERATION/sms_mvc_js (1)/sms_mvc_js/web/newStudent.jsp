<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CDAC Student Management App</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark"
             style="background-color: tomato">
            <div>
                <a href="#" class="navbar-brand">CDAC Student Management App</a>
            </div>

            <ul class="navbar-nav ml-auto">
                <li><a href="<%= request.getContextPath()%>/list" class="nav-link">Student Home</a></li>
            </ul>
        </nav><br>
        <header class="header">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-md-6 offset-md-3">

                        <c:if test="${student != null}">
                            <form method="Post" action="update">
                            </c:if>
                            <c:if test="${student == null}">
                                <form method="Post" action="insert">
                                </c:if>
                                <div class="card">
                                    <div class="card-header text-center bg-dark text-light">
                                        <h2>
                                            <c:if test="${student != null}">
                                                Edit Student
                                            </c:if>
                                            <c:if test="${student == null}">
                                                Add New Student
                                            </c:if>
                                        </h2>
                                    </div>
                                    <div class="card-body bg-secondary text-light">

                                        <c:if test="${student != null}">
                                            <input type="hidden" name="id" value="${student.studentId}"/>
                                        </c:if>
                                        <fieldset class="form-group">
                                            <label>Student Name</label> 
                                            <input type="text" name="name" value="${student.studentName}" class="form-control" required="required">
                                        </fieldset>

                                        <fieldset class="form-group">
                                            <label>Student Email</label> 
                                            <input type="text" name="email" value="${student.studentEmail}" class="form-control">
                                        </fieldset>

                                        <fieldset class="form-group">
                                            <label>Student City</label> 
                                            <input type="text" name="city" value="${student.studentCity}" class="form-control">
                                        </fieldset>
                                    </div>      
                                    <div class="card-footer text-center bg-dark">
                                        <button type="submit" class="btn btn-outline-light">Save</button>
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </header>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
