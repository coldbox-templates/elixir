<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Welcome to Coldbox!</title>

	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">

	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />

	<!---css --->
	<link href="#html.elixirPath( "css/App.css" )#" rel="stylesheet">

</head>
<body data-spy="scroll">
	<!---Top NavBar --->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<!---Brand --->
			<div class="navbar-header">
				<!---Responsive Design --->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="##navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				</button>
				<!---Branding --->
				<a class="navbar-brand mb-0" href="#event.buildLink('')#">
					<strong><i class="fa fa-home"></i> Home</strong>
				</a>
			</div>

			<div class="collapse navbar-collapse" id="navbar-collapse">
				<!---About --->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">
							<i class="glyphicon glyphicon-info-sign"></i> About <b class="caret"></b>
						</a>
						<ul id="actions-submenu" class="dropdown-menu">
							<a href="" class="dropdown-item text-light bg-dark">
								<strong>#getColdBoxSetting("codename")# (#getColdBoxSetting("suffix")#)</strong>
							</a>
							<a href="https://coldbox.ortusbooks.com" class="dropdown-item text-light bg-dark"><i class="fas fa-book"></i> Help Manual</a>
							<a href="https://ortussolutions.atlassian.net/browse/COLDBOX" class="dropdown-item text-light bg-dark"><i class="fa fa-fire"></i> Report a Bug</a>
							<a href="https://github.com/ColdBox/coldbox-platform/stargazers" class="dropdown-item text-light bg-dark"><i class="fa fa-star"></i> Star Us</a>
							<a href="https://www.ortussolutions.com/services/support" class="dropdown-item text-light bg-dark"><i class="fa fa-home"></i> Professional Support</a>
							<div class="dropdown-divider"></div>
							<img class="rounded mx-auto d-block" width="150" src="includes/images/ColdBoxLogo2015_300.png" alt="logo"/>
						</ul>
					</li>
				</ul>
			</div>
		</div> <!---end container --->
	</nav> <!---end navbar --->

	<!---Container And Views --->
	<div class="container">#renderView()#</div>

	<footer class="footer">
		<p class="pull-right">
			<a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			<a href="https://github.com/ColdBox/coldbox-platform/stargazers">ColdBox Platform</a> is a copyright-trademark software by
			<a href="https://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="https://getbootstrap.com/">Twitter Boostrap</a>
		</p>
	</footer>

	<script src="#html.elixirPath( "js/runtime.js" )#"></script>
	<script src="#html.elixirPath( "js/vendor.js" )#"></script>
	<script src="#html.elixirPath( "js/vendor.min.js" )#"></script>
</body>
</html>
</cfoutput>
