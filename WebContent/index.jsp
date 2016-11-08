
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v4-alpha.getbootstrap.com/favicon.ico">

    <title>Bronx Community Action</title>

    <!-- Bootstrap core CSS -->
    <link href="http://v4-alpha.getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://v4-alpha.getbootstrap.com/examples/narrow-jumbotron/narrow-jumbotron.css" rel="stylesheet">
     <!-- Firebase JS -->
	<script src="https://www.gstatic.com/firebasejs/3.5.2/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.5.2/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.5.2/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.5.2/firebase-messaging.js"></script>
	
<script src="https://www.gstatic.com/firebasejs/3.5.3/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyACNFJ3hKWfqJFaWPjo-qw3kEcDVU5iI88",
    authDomain: "community-action-99f69.firebaseapp.com",
    databaseURL: "https://community-action-99f69.firebaseio.com",
    storageBucket: "community-action-99f69.appspot.com",
    messagingSenderId: "284904392649"
  };
  firebase.initializeApp(config);
</script>
    <script src="https://www.gstatic.com/firebasejs/ui/live/0.5/firebase-ui-auth.js"></script>
<link type="text/css" rel="stylesheet" href="https://www.gstatic.com/firebasejs/ui/live/0.5/firebase-ui-auth.css" />
<script type="text/javascript">
      initApp = function() {
        firebase.auth().onAuthStateChanged(function(user) {
          if (user) {
            // User is signed in.
            var displayName = user.displayName;
            var email = user.email;
            var emailVerified = user.emailVerified;
            var photoURL = user.photoURL;
            var uid = user.uid;
            var providerData = user.providerData;
            user.getToken().then(function(accessToken) {
              document.getElementById('sign-in-status').textContent = 'Signed in';
              document.getElementById('sign-in').textContent = 'Sign out';
              document.getElementById('account-details').textContent = JSON.stringify({
                displayName: displayName,
                email: email,
                emailVerified: emailVerified,
                photoURL: photoURL,
                uid: uid,
                accessToken: accessToken,
                providerData: providerData
              }, null, '  ');
            });
          } else {
            // User is signed out.
            document.getElementById('sign-in-status').textContent = 'Signed out';
            document.getElementById('sign-in').textContent = 'Sign in';
            document.getElementById('account-details').textContent = 'null';
          }
        }, function(error) {
          console.log(error);
        });
      };

      window.addEventListener('load', function() {
        initApp()
      });
      
      if (document.getElementById("sign-in-status").innerHTML == "Signed in") {
    	  document.getElementById("signup-button").style.display = "none";
      }
    </script>

  </head>

  <body>

    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills float-xs-right">
            <li class="nav-item">
              <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Projects</a>
            </li>
            <li class="nav-item">
              <div class="nav-link" id="sign-in-status" style="color: #3c763d;"></div> 
            </li>
          </ul>
        </nav>
        <h3 class="text-muted">Bronx Community Action</h3>
      </div>

      <div class="jumbotron" style="background-image:linear-gradient(
      rgba(0, 0, 0, 0.5),
      rgba(0, 0, 0, 0.5)
    ), url('http://cdn.news12.com/polopoly_fs/1.11164701.1448478929!/httpImage/image.jpg_gen/derivatives/display_600/image.jpg'); background-size: cover;color: whitesmoke;">
        <h1 class="display-3">Give Back To Your Community</h1>
        <p class="lead">Make a difference by contributing to Bronx based community projects.</p>
        <p><a class="btn btn-lg btn-primary" href="signup.jsp" role="button" id="signup-button">Sign up today</a></p>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h4>Start your own project</h4>
          <p>Anyone can propose a project, it's then up to the community to make your idea into reality.</p>

          <h4>Donate your time or services</h4>
          <p>If you have time to donate or a skill set that can be of use, you can find a project that needs you.</p>

        </div>

        <div class="col-lg-6">
          <h4>Every penny counts</h4>
          <p>If you don't have the time to volunteer, even a few dollars can go a long way.</p>

          <h4>Donate goods</h4>
          <p>Drop off your items or coordinate pickups. Give your hand me downs a new home.</p>


        </div>
      </div>
      

      <footer class="footer">
        <p>&copy; NYCTI 2016</p>
      </footer>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
