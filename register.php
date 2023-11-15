<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
    <form action="./backend/register.php" method="post">
        <div class="w-25 p-3" >
        <h1>Register</h1>
        <div class="p-2 g-col-6"><input class="form-control" type="text" name="name" placeholder="masukkan nama anda" aria-label="default input example"></div>
        <div class="p-2 g-col-6"><input class="form-control" type="email" name="email" placeholder="masukkan email anda" aria-label="default input example"></div>
        <div class="p-2 g-col-6"><input class="form-control" type="password" name="password" placeholder="masukkan password anda" aria-label="default input example"></div>
        <div class="p-2 g-col-6"><input class="form-control" type="password" name="confirm" placeholder="masukkan konfirmasi password anda" aria-label="default input example"></div>
        <div class="p-2 g-col-6"><button type="submit" class="btn btn-primary" value="login" name="submit">Submit</button></div>
        </div>
    </form>

</body>
</html>