<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="Asset/css/bootstrap.min.css">
    <title>Sign Up</title>
    <style>
        .btn-lg {
            background: #42b72a;
            color: white;
        }
    </style>
</head>

<body class="d-flex flex-column h-100">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
        <div class="container-fluid">
            <a class="navbar-brand mb-0 h1" href="index.html">
                ImageStock
            </a>
            <button class="navbar-toggler" aria-label="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navContent">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="concept.html">Concept</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">Category</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="sky.html">Sky</a>
                            <a class="dropdown-item" href="road.html">Road</a>
                        </div>
                    </li>
                    <li>
                        <form class="d-flex">
                            <input type="search" class="form-control me-2" placeholder="KeyWord">
                            <button class="btn btn-outline-secondary" type="submit">Search</button>
                        </form>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a class="btn btn-light" href="signin.html"> Already have an account? </a></li>
                    <li class="nav-item">
                        <a class="btn btn-outline-dark" href="signin.html"><i
                                class="fa-solid fa-arrow-right-to-bracket"></i> Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container pt-lg-5">
        <div class="mx-auto">
            <div class="row display-5 fw-normal p-3">ImageStock</div>
            <div class="row card row shadow text-center m-auto">
                <h1 class="card-title m-auto fw-lighter">Create a new account</h1>
                <h6 class="card-subtitle m-auto fw-lighter">For the ImageStock</h6>
                <form class="card-body row g-3 mx-auto" name="register" action="register.jsp" method="POST">
                    <div class="form-floating col-md-12">
                        <input name="name" type="name" class="form-control" id="name" placeholder="name">
                        <label for="name">Name</label></div>
                    <div class="form-floating col-md-6">
                        <input name="email" type="email" class="form-control" id="account"
                            placeholder="name@example.com">
                        <label for="account">Email address</label></div>
                    <div class="form-floating col-md-6">
                        <input name="password" type="password" class="form-control" id="password"
                            placeholder="Password">
                        <label for="password">NewPassword</label></div>
                    <div class="form-floating col-md-12">
                        <input name="address" type="text" class="form-control" id="address" placeholder="Address">
                        <label for="address">Address</label></div>
                    <div class="form-floating row g-3 mx-auto">
                        <span>Birthday</span>
                        <div class="form-floating col-md-4">
                            <select aria-label="Month" name="month" id="month" title="Month" class="form-select">
                                <option value="1">Jan</option>
                                <option value="2">Feb</option>
                                <option value="3">Mar</option>
                                <option value="4">Apr</option>
                                <option value="5" selected="1">May</option>
                                <option value="6">Jun</option>
                                <option value="7">Jul</option>
                                <option value="8">Aug</option>
                                <option value="9">Sep</option>
                                <option value="10">Oct</option>
                                <option value="11">Nov</option>
                                <option value="12">Dec</option>
                            </select>
                            <label for="month">month</label></div>
                        <div class="form-floating col-md-4">
                            <select aria-label="Day" name="day" id="day" title="Day" class="form-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21" selected="1">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                            <label for="birthday_day">day</label></div>
                        <div class="form-floating col-md-4">
                            <select aria-label="Year" name="year" id="year" title="Year" class="form-select">
                                <option value="2022" selected="1">2022</option>
                                <option value="2021">2021</option>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                                <option value="2010">2010</option>
                                <option value="2009">2009</option>
                                <option value="2008">2008</option>
                                <option value="2007">2007</option>
                                <option value="2006">2006</option>
                                <option value="2005">2005</option>
                                <option value="2004">2004</option>
                                <option value="2003">2003</option>
                                <option value="2002">2002</option>
                                <option value="2001">2001</option>
                                <option value="2000">2000</option>
                                <option value="1999">1999</option>
                                <option value="1998">1998</option>
                                <option value="1997">1997</option>
                                <option value="1996">1996</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                                <option value="1984">1984</option>
                                <option value="1983">1983</option>
                                <option value="1982">1982</option>
                                <option value="1981">1981</option>
                                <option value="1980">1980</option>
                                <option value="1979">1979</option>
                                <option value="1978">1978</option>
                                <option value="1977">1977</option>
                                <option value="1976">1976</option>
                                <option value="1975">1975</option>
                                <option value="1974">1974</option>
                                <option value="1973">1973</option>
                                <option value="1972">1972</option>
                                <option value="1971">1971</option>
                                <option value="1970">1970</option>
                                <option value="1969">1969</option>
                                <option value="1968">1968</option>
                                <option value="1967">1967</option>
                                <option value="1966">1966</option>
                                <option value="1965">1965</option>
                                <option value="1964">1964</option>
                                <option value="1963">1963</option>
                                <option value="1962">1962</option>
                                <option value="1961">1961</option>
                                <option value="1960">1960</option>
                                <option value="1959">1959</option>
                                <option value="1958">1958</option>
                                <option value="1957">1957</option>
                                <option value="1956">1956</option>
                                <option value="1955">1955</option>
                                <option value="1954">1954</option>
                                <option value="1953">1953</option>
                                <option value="1952">1952</option>
                                <option value="1951">1951</option>
                                <option value="1950">1950</option>
                                <option value="1949">1949</option>
                                <option value="1948">1948</option>
                                <option value="1947">1947</option>
                                <option value="1946">1946</option>
                                <option value="1945">1945</option>
                                <option value="1944">1944</option>
                                <option value="1943">1943</option>
                                <option value="1942">1942</option>
                                <option value="1941">1941</option>
                                <option value="1940">1940</option>
                                <option value="1939">1939</option>
                                <option value="1938">1938</option>
                                <option value="1937">1937</option>
                                <option value="1936">1936</option>
                                <option value="1935">1935</option>
                                <option value="1934">1934</option>
                                <option value="1933">1933</option>
                                <option value="1932">1932</option>
                                <option value="1931">1931</option>
                                <option value="1930">1930</option>
                                <option value="1929">1929</option>
                                <option value="1928">1928</option>
                                <option value="1927">1927</option>
                                <option value="1926">1926</option>
                                <option value="1925">1925</option>
                                <option value="1924">1924</option>
                                <option value="1923">1923</option>
                                <option value="1922">1922</option>
                                <option value="1921">1921</option>
                                <option value="1920">1920</option>
                                <option value="1919">1919</option>
                                <option value="1918">1918</option>
                                <option value="1917">1917</option>
                                <option value="1916">1916</option>
                                <option value="1915">1915</option>
                                <option value="1914">1914</option>
                                <option value="1913">1913</option>
                                <option value="1912">1912</option>
                                <option value="1911">1911</option>
                                <option value="1910">1910</option>
                                <option value="1909">1909</option>
                                <option value="1908">1908</option>
                                <option value="1907">1907</option>
                                <option value="1906">1906</option>
                                <option value="1905">1905</option>
                            </select>
                            <label for="year">year</label></div>
                    </div>
                    <button class="w-100 btn btn-lg " type="submit">Sign
                        Up</button>
                    <div class="text-muted">or</div>
                    <a class="btn btn-outline-primary" href="signin.html">Login An Existed Account</a>
                </form>
            </div>
        </div>
    </main>

    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <a class="navbar-brand mt-5 mb-0 h1" href="index.html">
                ImageStock
            </a>
            <span class="mb-3 text-muted"> © 2022 ImageStock </span>
        </div>
    </footer>

    <script src="Asset/js/bootstrap.bundle.min.js"></script>
</body>


</html>