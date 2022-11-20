<<?php 
    ob_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    include("../connection.php");
?> <!DOCTYPE html>
    <html lang="en">


    <!-- employees23:21-->

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>Preclinic - Medical & Hospital - Bootstrap 4 Admin Template</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
    </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.php" class="logo">
                        <img src="assets/img/logo.png" width="35" height="35" alt=""> <span>Preclinic</span>
                    </a>
                </div>
                <a style="margin-top: 15px" id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="fa fa-bell-o"></i>
                            <span class="badge badge-pill bg-danger float-right">3</span></a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span>Notifications</span>
                            </div>
                            <div class="drop-scroll">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">
                                                    <img alt="John Doe" src="assets/img/user.jpg" class="img-fluid">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">John Doe</span>
                                                        added new task <span class="noti-title">Patient appointment
                                                            booking</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins
                                                            ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">V</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Tarah
                                                            Shropshire</span> changed the task name <span
                                                            class="noti-title">Appointment booking with payment
                                                            gateway</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins
                                                            ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">L</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Misty Tison</span>
                                                        added <span class="noti-title">Domenic Houston</span> and <span
                                                            class="noti-title">Claire Mapes</span> to project <span
                                                            class="noti-title">Doctor available module</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins
                                                            ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">G</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Rolland
                                                            Webber</span> completed task <span
                                                            class="noti-title">Patient and Doctor video
                                                            conferencing</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins
                                                            ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">V</span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Bernardo
                                                            Galaviz</span> added new task <span
                                                            class="noti-title">Private chat module</span></p>
                                                    <p class="noti-time"><span class="notification-time">2 days
                                                            ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="activities.html">View all Notifications</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><i
                                class="fa fa-comment-o"></i> <span
                                class="badge badge-pill bg-danger float-right">8</span></a>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40"
                                    alt="Admin">
                                <span class="status online"></span></span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="profile.html">My Profile</a>
                            <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                            <a class="dropdown-item" href="settings.html">Settings</a>
                            <a class="dropdown-item" href="login.html">Logout</a>
                        </div>
                    </li>
                </ul>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i
                            class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="profile.html">My Profile</a>
                        <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                        <a class="dropdown-item" href="settings.html">Settings</a>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
            <?php
            include("sidebar.php");
        ?>
            <div class="page-wrapper">
                <div class="content">
                    <form method="get">
                        <div class="row">
                        </div>
                        <div class="row filter-row">
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group form-focus select-focus">
                                    <label class="focus-label">Doctor</label>
                                    <?php
                                $sql="SELECT * FROM doctor";
                                $result = executeQuery($sql);                                           
                            ?>
                                    <select name="doctor" class="select floating">
                                        <option value="">-- Choose doctor --</option>
                                        <?php
                                    if (mysqli_num_rows($result) > 0) {
                                        while($row = mysqli_fetch_assoc($result)) {
                                ?>
                                        <option value="<?php echo $row["ID"] ?>"><?php echo $row["Unique_code"] ?> --
                                            <?php echo $row["Full_name"] ?></option>
                                        <?php } }?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <button name="search" class="btn btn-primary submit-btn">Search</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 col-4">
                                <h4 class="page-title">Inpatient list</h4>
                            </div>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-striped custom-table">
                                        <thead>
                                            <tr>
                                                <th style="min-width:200px;">Name</th>
                                                <th>Patient ID</th>
                                                <th>Address</th>
                                                <th>Dob</th>
                                                <th>Mobile</th>
                                                <th>Gender</th>
                                                <th class="text-right">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                        if(!isset($_GET["search"])){
                                            $sql = "SELECT * FROM `inpatient`";
                                        }else{
                                            $id = $_GET["doctor"];
                                            $sql = "SELECT DISTINCT inpatient.First_name, inpatient.Last_name, inpatient.DoB, inpatient.Gender, inpatient.Address, inpatient.Phone_number, inpatient.Unique_code 
                                            FROM inpatient, treatment, doctor 
                                            WHERE treatment.P_ID = inpatient.ID
                                            and treatment.E_Unique_code = $id;";
                                        }                                      
                                        $result = executeQuery($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            $i=0;
                                            while($row = mysqli_fetch_assoc($result)) {
                                                $i++;
                                    ?>
                                            <tr>
                                                <td><img width="28" height="28" src="assets/img/user.jpg"
                                                        class="rounded-circle m-r-5" alt="">
                                                    <?php echo $row["First_name"]; ?> <?php echo $row["Last_name"]; ?>
                                                </td>
                                                <td><?php echo $row["Unique_code"]; ?></td>
                                                <td><?php echo $row["Address"]; ?></td>
                                                <td><?php echo $row["DoB"]; ?></td>
                                                <td><?php echo $row["Phone_number"]; ?></td>
                                                <td><?php echo $row["Gender"]; ?></td>
                                                <td class="text-right">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-toggle="dropdown" aria-expanded="false"><i
                                                                class="fa fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="edit-patient.html"><i
                                                                    class="fa fa-pencil m-r-5"></i> Edit</a>
                                                            <a class="dropdown-item" href="#" data-toggle="modal"
                                                                data-target="#delete_patient"><i
                                                                    class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php } }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 col-4">
                                <h4 class="page-title">Outpatient list</h4>
                            </div>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-striped custom-table">
                                        <thead>
                                            <tr>
                                                <th style="min-width:200px;">Name</th>
                                                <th>Patient ID</th>
                                                <th>Address</th>
                                                <th>Dob</th>
                                                <th>Mobile</th>
                                                <th>Gender</th>
                                                <th class="text-right">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                        if(!isset($_GET["search"])){
                                            $sql = "SELECT * FROM `outpatient`";
                                        }else{     
                                            $id = $_GET["doctor"];
                                            $sql="SELECT DISTINCT outpatient.First_name, outpatient.Last_name, outpatient.DoB, outpatient.Gender, outpatient.Address, outpatient.Phone_number, outpatient.Unique_code 
                                            FROM outpatient, examination, doctor 
                                            WHERE  examination.P_ID = outpatient.ID 
                                            and examination.E_Unique_code = $id;";
                                        }                         
                                        $result = executeQuery($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            $i=0;
                                            while($row = mysqli_fetch_assoc($result)) {
                                                $i++;
                                    ?>
                                            <tr>
                                                <td><img width="28" height="28" src="assets/img/user.jpg"
                                                        class="rounded-circle m-r-5" alt="">
                                                    <?php echo $row["First_name"]; ?> <?php echo $row["Last_name"]; ?>
                                                </td>
                                                <td><?php echo $row["Unique_code"]; ?></td>
                                                <td><?php echo $row["Address"]; ?></td>
                                                <td><?php echo $row["DoB"]; ?></td>
                                                <td><?php echo $row["Phone_number"]; ?></td>
                                                <td><?php echo $row["Gender"]; ?></td>
                                                <td class="text-right">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-toggle="dropdown" aria-expanded="false"><i
                                                                class="fa fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="edit-patient.html"><i
                                                                    class="fa fa-pencil m-r-5"></i> Edit</a>
                                                            <a class="dropdown-item" href="#" data-toggle="modal"
                                                                data-target="#delete_patient"><i
                                                                    class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php } }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="notification-box">
                            <div class="msg-sidebar notifications msg-noti">
                                <div class="topnav-dropdown-header">
                                    <span>Messages</span>
                                </div>
                                <div class="drop-scroll msg-list-scroll" id="msg_list">
                                    <ul class="list-box">
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">R</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Richard Miles </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item new-message">
                                                    <div class="list-left">
                                                        <span class="avatar">J</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">John Doe</span>
                                                        <span class="message-time">1 Aug</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">T</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Tarah Shropshire </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">M</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Mike Litorus</span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">C</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Catherine Manseau </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">D</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Domenic Houston </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">B</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Buster Wigton </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">R</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Rolland Webber </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">C</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author"> Claire Mapes </span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">M</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Melita Faucher</span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">J</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Jeffery Lalor</span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">L</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Loren Gatlin</span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="chat.html">
                                                <div class="list-item">
                                                    <div class="list-left">
                                                        <span class="avatar">T</span>
                                                    </div>
                                                    <div class="list-body">
                                                        <span class="message-author">Tarah Shropshire</span>
                                                        <span class="message-time">12:28 AM</span>
                                                        <div class="clearfix"></div>
                                                        <span class="message-content">Lorem ipsum dolor sit amet,
                                                            consectetur adipiscing</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="topnav-dropdown-footer">
                                    <a href="chat.html">See all messages</a>
                                </div>
                            </div>
                    </form>
                </div>
            </div>
            <div id="delete_employee" class="modal fade delete-modal" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body text-center">
                            <img src="assets/img/sent.png" alt="" width="50" height="46">
                            <h3>Are you sure want to delete this Employee?</h3>
                            <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>


    <!-- employees23:22-->

    </html>