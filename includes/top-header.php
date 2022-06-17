<?php 
//session_start();

?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Добро пожаловать, <?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>Мой профиль</a></li>
					<li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Избранное</a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>Моя корзина</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Вход</a></li>
<?php }
else{ ?>
		<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Выход</a></li>
<?php } ?>
					<li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#change-colors" aria-expanded="false">Цвет(бета)</a>

                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" class="changecolor green-text" tabindex="-1" href="#" title="Green color">Зеленый</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor blue-text" tabindex="-1" href="#" title="Blue color">Синий</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor orange-text" tabindex="-1" href="#" title="Orange color">Оранжевый</a></li>
									<li role="presentation"><a role="menuitem" class="changecolor red-text" tabindex="-1" href="#" title="Red color">Красный</a></li>                                    
                                    <li role="presentation"><a role="menuitem" class="changecolor navy-text" tabindex="-1" href="#" title="Navy color">Ярко-зеленый</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor dark-green-text" tabindex="-1" href="#" title="Darkgreen color">Темно-зеленый</a></li>
                                </ul>
                            </li>
				</ul>
			</div><!-- /.cnt-account -->


			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->