<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Pessoa</title>
</head>
<body>
<?php
include 'conectar.php';
$id = $nome = $email = $cpf = "";
if($_SERVER["REQUEST_METHOD"] == "GET"){
    if (array_key_exists('id',$_GET)){
      $id = $_GET['id'];
      $pessoa = buscar($id);
      $nome = $pessoa['nome'];
      $email = $pessoa['email'];
      $cpf = $pessoa['cpf'];
    }
    if (array_key_exists('apagar',$_GET)){
        $apagar = $_GET['apagar'];
        $msg = apagar($apagar);
        echo $msg;
    }
}
?>
<form action="form-pessoa.php" method="post">
      <input type="hidden" name= "id" value="<?php echo $id; ?>">
    <h1>Formulário de Pessoa</h1>
    Nome: <br>
    <input type="text" name="nome" value="<?php echo $nome; ?>"><br>
    E-mail: <br>
    <input type="text" name="email" value="<?php echo $email; ?>"><br>
    Cpf: <br>
    <input type="text" name="cpf" value="<?php echo $cpf; ?>"><br>
    <br>
    <input type="submit" value="Gravar">
    <a href="form-pessoa.php">
    <input type="button" value="novo">
    </a>
    
    

    
</form> 
<?php
 //onclick="window.location.replace('form-pessoa.php');">
if ($_SERVER["REQUEST_METHOD"] == "POST") {
$nome = $_POST['nome'];
$email = $_POST['email'];
$cpf = $_POST['cpf'];

$id = $_POST['id'];
if($id == ''){
    $msg = incluir($nome, $email, $cpf);
}else{
    $msg = alterar($id, $nome, $email, $cpf);
}

echo $msg; 
}

?>
<br>
<table border="l">
   <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th>cpf</th>
    </tr>   
    <?php
    $dados = listar();
    while ($linha = $dados->fetch_assoc()) {
       echo "<tr>";
       echo "<td>".$linha['id']."</td>";
       echo "<td>".$linha['nome']."</td>";
       echo "<td>".$linha['email']."</td>";
       echo "<td>".$linha['cpf']."</td>";
       echo "<td><a href='form-pessoa.php?id=".$linha['id']."'>Editar</a></td>";
       echo "<td><a href='form-pessoa.php?apagar=".$linha['id']."'>Apagar</a></td>";
       echo "</tr>";    
    }
    ?>
</table>    
</body>
</html>            