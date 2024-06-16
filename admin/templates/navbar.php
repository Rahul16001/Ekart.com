 <nav class="navbar navbar-dark fixed-top p-0 " style="background-color:black">
  <a class="navbar-brand p-0" href="#" style="color:red; font-family: cursive; font-size:35px;">Ekart.com</a>
  <!-- <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
  <ul class="nav navbar-right">
  <li><a class="nav-link" href="http://localhost/ekart.com" style="color:white;">User login</a></li>
    <li class="nav-item text-nowrap">
    	<?php
    		if (isset($_SESSION['admin_id'])) {
    			?>
    				<a class="nav-link" href="../admin/admin-logout.php" style="color:white;">Sign out</a>
    			<?php
    		}else{
    			$uriAr = explode("/", $_SERVER['REQUEST_URI']);
    			$page = end($uriAr);
    			if ($page === "login.php") {
    				?>
	    				<a class="nav-link" href="../admin/register.php" style="color:white;">Register</a>
	    			<?php
    			}else{
    				?>
	    				<a class="nav-link" href="../admin/login.php" style="color:white;">Login</a>
	    			<?php
    			}


    			
    		}

    	?>
    </li>
  </ul>
</nav>