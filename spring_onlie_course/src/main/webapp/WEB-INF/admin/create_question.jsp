
<%@ include file="/WEB-INF/common/include.jsp"%>
<%@ include file="/WEB-INF/bootstrap.jsp"%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6 col-6">
            <h1 class="m-0">Manage Question</h1>
          </div><!-- /.col -->
          <div class="col-sm-6 col-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Create</li>
            </ol>
          </div><!-- /.col -->
         <!--<a href="/category/category_list" class="btn btn-primary mt-4">Course List</a>  --> 
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="container">
	<div class="col-lg-6">
 	<form:form action="save_question" method="POST" modelAttribute="question"  >



                <div class="card-body">
                
                <div class="form-group">
                   <label for="level">LevelMaterial:</label>
                   <form:select path="level_material_id" class="form-control">
					<c:forEach items="${levelmaterialList}" var="level">
					<form:option value="${level.level_material_id }">${level.name }</form:option>
					</c:forEach></form:select>
                  </div>
                
                
                  <div class="form-group">
                     <label for="question_name">Question Name:</label>
     					 <form:input path="question_name" class="form-control" placeholder="Enter question_name"/>
      
                  </div>
                  
                  
                	</div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                     <button type="cancle" class="btn btn-primary">Cancle</button>
                </div>
              </form:form>
              </div>
              </div>
</div>

