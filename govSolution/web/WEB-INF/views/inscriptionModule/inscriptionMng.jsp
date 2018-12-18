 <%@page import="tn.iset.govsolution.entity.Inscription"%>
<%@ include  file="../headerSuperAdmin.jsp" %>
           
<%@ include  file="../slideRightSuperAdmin.jsp" %> 

<div class="jumbotron text-center">
  <h1>Gestion des demandes d'inscriptions</h1>
</div>
  
<div class="container"> 
  <div class="row">
    <div class="col-md-8">
        <div id="tool-bar">
            <div class="input-group input-group-sm">
                <div class="input-group-btn">
                    <button class="btn">Accepter</button>
                    <button class="btn">Refuser</button>
                    <button class="btn">Notifier</button>
                    <button class="btn" id="print-btn">Imprimer</button>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
        <div class="panel-heading">
                <div class="input-group input-group-sm">
                    <span class="input-group-addon "><span class="glyphicon glyphicon-th"></span></span>
                    <input type="text" class="form-control datepicker" placeholder="Start"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                    <input type="text" class="form-control datepicker" placeholder="End"/>
                    <span class="input-group-addon">RS</span>
                    <input type="text" class="form-control" id="rs-input"/>
                    <span class="input-group-addon">Etat</span>
                    <select class="form-control" id="case-selection">
                        <option value="true">OUI</option>
                        <option value="false">NON</option>
                        <option>TOUS</option>
                    </select>
                    <div class="input-group-btn">
                        <button class="btn" id="search-btn">Rechercher</button>
                    </div>
                </div>
        </div>

        <table id="mytable" class="table" >
            <thead>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div class="clearfix"></div>


    </div>
    </div>
    <fieldset class="col-md-4" id="details">
      <legend>Détails</legend>
        <div id="details-view"></div>
    </fieldset>
    </div>
  </div>
</div>



<!-- <div class="well align-middle"> -->
<!--   <div class="container"> -->
  
<!--   	<div class="col"> -->
<!--   				<div class=""> -->
<%--   					<a  class="btn btn-primary" href="<%=contextPath%>/customer/customerForm.action" style="margin-left:50%;">Add Customer</a> --%>
<!--   				</div> -->
<!--                 <div class="table-responsive"> -->

<!--                     <table id="mytable" class="table table-bordered" style="margin:10px;width:60%;"> -->
<!--                         <thead> -->
<!--                           <th>id</th> -->
<!--                           <th>Raison Sociale</th> -->
<!--                           <th>mail</th> -->
<!--                           <th>Adresse</th> -->
<!--                           <th>Edit</th> -->
<!--                         </thead> -->
<!--                         <tbody> -->
<%-- 							<c:forEach var="inscription" items="${inscriptions}"> --%>
<!-- 								<tr> -->
<%-- 								 	<td>${inscription.id }</td> --%>
<%-- 									<td>${inscription.rsFr }</td> --%>
<%-- 									<td>${inscription.mail }</td> --%>
<%-- 									<td>${inscription.adresseFr }</td> --%>
<!-- 									<td> -->
<%-- 									<a  class="btn btn-primary" href="<%=contextPath%>/inscription/editInscriptionView/${cinscription.id}.action">Edit</a> --%>
<%-- 									<a  class="btn btn-warning" href="<%=contextPath%>/inscription/deleteInscription/inscriptionId=${inscription.id}.action">Delete</a> --%>
<!-- 									</td> -->
<!-- 								</tr> -->
<%-- 							</c:forEach> --%>
<!--                         </tbody> -->
<!--                     </table> -->
<!--                     <div class="clearfix"></div> -->
<!--                  </div> -->
<!--   	</div> -->
<!--   </div> -->
<!-- </div> -->

<%@ include file="../footer.jsp" %>