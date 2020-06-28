<%@page import="models.Client"%>
<%@page import="DAO.daoClient"%>
<%@page import="java.util.ArrayList"%>
<div id="tab" >

	<section class="wrapper">
	        <div class="row mb">
	          <!-- page start-->
	          <div class="content-panel">
	            <div class="adv-table">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">All Properties</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>add item</button>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2" name="type">
                                                <option selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>nom</th>
                                                <th>prenom</th>
                                                <th>CIN</th>
                                                <th>email</th>
                                                <th>Adresse</th>
                                                <th>Telephone</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%ArrayList<Client> list = daoClient.listClient();
                                        	for(int i =0 ; i<list.size();i++){%>
                                                  <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td style="display: none"><input type="text" readonly="readonly" value="<%=list.get(i).getId()%>"></td>
                                                <td><%=list.get(i).getNom()%></td>
                                                <td>
                                                    <%=list.get(i).getPrenom()%>
                                                </td>
                                                <td class="desc"><%=list.get(i).getCin() %></td>
                                                <td><span class="block-email"><%=list.get(i).getEmail() %></span></td>
                                                <td>
                                                    <span style="font-size: 1em"><%=list.get(i).getAdresse() %></span>
                                                </td>
                                                <td><%=list.get(i).getTelephone() %></td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item afficher btnPopup" data-toggle="tooltip" data-placement="top" title="Eye" >
                                                            <i class="zmdi zmdi-eye"></i>
                                                        </button>
                                                        <button class="item modifier" data-toggle="tooltip" data-placement="top" title="Edit" >
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item supprimer" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
        	</div>
    	</div>
	</section>            
</div>