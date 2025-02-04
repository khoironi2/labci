<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Web-Klinik | Login Page</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
  rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/simple-datatables/style.css" rel="stylesheet">

  <!--  CSS File -->
  <link href="css/style.css" rel="stylesheet">

  <style>
    /* Your custom styles here */
    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-form {
      background-color: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .login-form img {
      width: 100px; /* sesuaikan ukuran gambar */
      margin-right: 20px; /* jarak antara gambar dan form */
    }

    /* Footer styles */
    footer {
      background-color: #f8f9fa;
      padding: 20px 0;
      text-align: center;
      position: fixed;
      bottom: 0;
      width: 100%;
    }

    footer a {
      color: #333;
    }
  </style>
</head>

<body>

  <main>
    <div class="container">
      <div class="login-container">
        <img src="{{ asset('img/alimochtar.png') }}" alt="Alimochtar Logo" class="img-fluid">
        <div class="login-form">
          <div class="pt-4 pb-2">
            <h5 class="card-title text-center pb-0 fs-4">Laboratorium Klinik</h5>
            <p class="text-center small"><strong>Silahkan Login</strong></p>
          </div>
          @if(session()->has('loginError'))
          <div class="alert alert-danger">{{ session('loginError') }}</div>
          @endif

          <form class="row g-3 needs-validation" action="/login" method="POST">
            @csrf
            <div class="col-12">
              <label for="yourEmail" class="form-label">Email</label>
              <input type="text" name="email" class="form-control" id="email" required>
              <div class="invalid-feedback">Tolong Masukkan Email!</div>
            </div>

            <div class="col-12">
              <label for="yourPassword" class="form-label">Password</label>
              <input type="password" name="password" class="form-control" id="password" required>
              <div class="invalid-feedback">Tolong Masukkan Password!</div>
            </div>
            <div class="col-12">
              <button class="btn btn-primary w-100" type="submit">Login</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </main><!-- End #main -->

  <footer>
    <div class="container">
      <a href="https://wa.me/628179851011" target="_blank" class="no-underline">Copyright &copy;
      2024 Ali Mochtar Development System</a>
    </div>
  </footer>

  <!-- Vendor JS Files -->
  <script src="vendor/apexcharts/apexcharts.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/chart.js/chart.umd.js"></script>
  <script src="vendor/echarts/echarts.min.js"></script>
  <script src="vendor/quill/quill.min.js"></script>
  <script src="vendor/simple-datatables/simple-datatables.js"></script>
  <script src="vendor/tinymce/tinymce.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>
