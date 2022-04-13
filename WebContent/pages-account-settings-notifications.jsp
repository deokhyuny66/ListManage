<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="action.actionDAO"%>
<%@ page import="action.actionDTO" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Map.Entry" %>
<%
	request.setCharacterEncoding("UTF-8"); 
	int j = 0;
	actionDAO actionDAO = new actionDAO();
	actionDTO actionDTO = new actionDTO();
	ArrayList<HashMap<String,String>> rs_dao_list = new ArrayList<HashMap<String,String>>();
	HashMap<String,String> map = new HashMap<String,String>();
	rs_dao_list = actionDAO.selectAll();	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//KR" "http://www.w3.org/TR/html4/loose.dtd">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon/favicon.ico" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap.min.css" />
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="./assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="./assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="./assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="./assets/css/demo.css" />
    <link rel="stylesheet" href="./assets/css/modal.css" />
    <link rel="stylesheet" href="./assets/css/table-config.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap.min.js"></script>
    <!-- Helpers -->
    <script src="./assets/vendor/js/helpers.js"></script>

    <script src="./assets/js/config.js"></script>
    
	<style>

	</style>
 
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                >
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2">Sneat</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">Pages</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">Account Settings</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="./pages-account-settings-account.jsp" class="menu-link">
                    <div data-i18n="Account">Register</div>
                  </a>
                </li>
	            <li class="menu-item active">
	              <a href="./pages-account-settings-notifications.jsp" class="menu-link">
	                <i class="menu-icon tf-icons bx bx-table"></i>
	                <div data-i18n="List">List</div>
	              </a>
	            </li>
              </ul>
            </li>

        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
          <!-- Content -->
 
            <div class="container-xxl flex-grow-1 container-p-y">

			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> List</h4>
             <!-- Bordered Table -->
              <div class="card">
                <h5 class="card-header">Bordered Table</h5>
   
                <div class="card-body">
                  <div class="table-responsive text-nowrap">
                    <table id="tableForm" class="table table-bordered table-hover" style="width:100%;cursor:pointer;">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Full Name</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                          <th>Company Age</th>
                        </tr>
                      </thead>
                      <tbody>
<%--                       <% for (j=0;j<rs_dao_list.size();j++) {%>
                        <tr id="<%=j+1%>" name="item" onClick="reply_click(this.id)">
                        <th scope="row"><%= j+1 %></th>
                        <% for(Entry<String, String> elem : rs_dao_list.get(j).entrySet() ){%>
                          <td>
                            <i class="fab fa-angular fa-lg text-danger me-3"></i> <strong><%= elem.getValue() %></strong>
                          </td>
                        <%}%>
                        </tr>
                      <%}%>   --%> 
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      <tr>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>c</td>
                      	<td>a</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>b</td>
                      	<td>c</td>
                      </tr>
                      
                    
                      
                                         
                      </tbody>
					  
                    </table>
                 
                    
                  </div>
                </div>
              </div>
              <!--/ Bordered Table -->

          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>
      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
      
      <div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="close-area">X</div>
	            
	            <form id="contentForm" action="./updateAction.jsp" method="POST">
		            <div class="content"></div>
	            </form>
	        </div>
	    </div>
    </div>
    <!-- / Layout wrapper -->

<script>
	$(document).ready(function() {
	    $('.card .card-body #tableForm').DataTable();
	    
	});
	let item_click;
	const modal = document.getElementById('modal');
	const closeBtn = modal.querySelector('.close-area');
		  
	function reply_click(clickedId){
		item_click = document.getElementById(clickedId);
		item_click.addEventListener('click', function(){
			modalOn();
			$.ajax({
				type: 'POST',
				url: 'itemsAjax.jsp',
				dataType: 'text',
				data: {
					clickItemId:clickedId
				},
				success: function(res){
					$('#modal #contentForm .content *').remove();
					res = res.replace(/[\[\]\/?.;|\)*~`!^\-_+<>@\#$%&\\\=\(]/gi,'');	 
					res = res.replace(/\s/g, '');
					let json = JSON.parse(res);
					let keys = Object.keys(json);
					let $temp;
					
				    for (let i=0; i<keys.length; i++) {
				    	let key = keys[i];
				    	//alert("key : " + key + ", value : " + json[key]);
				    	$temp = $('#modal #contentForm .content').append('<label for="defaultFormControlInput" style="color:#566a7f;" class="form-label">'+key+'</label><input type="text" class="form-control" id="defaultFormControlInput"' 
				    			+ 'name="selitemParam'+i+'" value="'+json[key]+'" placeholder="John Doe" aria-describedby="defaultFormControlHelp" >');
				    }		
				    $temp = $temp.append('<input type="hidden" name="clickedId" value="'+clickedId+'"><br/><div style="text-align:center;position:relative;top:270px;left:100px;"><button type="submit" class="btn btn-info">수정</button>&nbsp;&nbsp;<button type="submit" class="btn btn-dark">삭제</button></div>');	
				},
				error: function(){
					alert("False");
				}
			});
		});
	}

	
	function modalOn() {
		modal.style.display = 'flex';
	}
	
	function isModalOn() {
		return modal.style.display === 'flex';
	}
	
	function modalOff() {
	    modal.style.display = 'none';
	}
	
	closeBtn.addEventListener('click', function() {
	    modalOff();
	});

</script>
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="./assets/vendor/libs/popper/popper.js"></script>
    <script src="./assets/vendor/js/menu.js"></script>
    <script src="./assets/js/main.js"></script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
