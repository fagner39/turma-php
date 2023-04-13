<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Pessoa</title>
</head>
<body>
<?php
include 'conectar.php';
include 'validar-cpf.php';
include 'escolaridade.php';
$msgCpf = $id = $nome = $email = $cpf = $sexo = "";
if($_SERVER["REQUEST_METHOD"] == "GET"){
    if (array_key_exists('id',$_GET)){
        $id = $_GET['id'];
        $pessoa = buscar($id);
        $nome = $pessoa['nome'];
        $email = $pessoa['email'];
        $cpf = $pessoa['cpf'];
        $sexo = $pessoa['sexo'];
    }
    if (array_key_exists('apagar',$_GET)){
        $apagar = $_GET['apagar'];
        $msg = apagar($apagar);
        echo $msg;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $msg = "";
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $cpf = $_POST['cpf'];
    $sexo = $_POST['sexo'];
    $id = $_POST['id'];

    $cpf = str_replace(".","",$cpf);
    $cpf = str_replace("-","",$cpf);

    if(validarCpf($cpf)){
        if($id == ''){
            $msg = incluir($nome, $email, $cpf, $sexo);
        } else {
            $msg = alterar($id, $nome, $email, $cpf, $sexo);
        }
    }else{
        $msgCpf = "CPF inválido!";
    }
    
    echo $msg;
}

?>

<form action="form-pessoa.php" method="post">
    <input type="hidden" name="id"  value="<?php echo $id; ?>">
    <h1>Formulário de Pessoa</h1>
    Nome: <br>
    <input type="text" name="nome" value="<?php echo $nome; ?>" required><br>
    E-mail: <br>
    <input type="email" name="email" value="<?php echo $email; ?>" required><br>
    CPF:<?php echo $msgCpf; ?> <br>
    <input type="text" name="cpf" value="<?php echo $cpf; ?>" required><br>
    <!DOCTYPE html>
<html>
<body>
<br>
<form action="/action_page.php">
  <label for="class">escolaridade:</label>
  <select id="class" name="class">
    <option value="Fundamental - Incompleto">Fundamental - Incompleto</option>
    <option value="Fundamental - Completo">Fundamental - Completo</option>
    <option value="Médio - Incompleto">Médio - Incompleto</option>
    <option value="Médio - Completo">Médio - Completo</option>
    <option value="Superior - Incompleto">Superior - Incompleto</option>
    <option value="Superior - completo">Superior - completo</option>
  </select>
</form><br>
<label for="pwd">senha :</label>
<input type="senha" id="pwd" name="pwd">
<br><br>
<label for="pwd">confirme:</label>
<input type="confirmar" id="pwd" name="pwd">
<br>
    Sexo: <br>
    <input type="radio" name="sexo" value="m" required <?php if($sexo == "m") echo "checked"; ?>>Masculino
    <input type="radio" name="sexo" value="f" required <?php if($sexo == "f") echo "checked"; ?>>Feminino
    <br>
    <br>
    <input type="submit" value="Gravar">
    <a href="form-pessoa.php">
    <input type="button" value="Novo">
    </a>
</form>



<br>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th>CPF</th>
        <th>Sexo</th>
    </tr><br>
    <?php
    $dados = listar();
    while ($linha = $dados->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$linha['id']."</td>";
        echo "<td>".$linha['nome']."</td>";
        echo "<td>".$linha['email']."</td>";
        echo "<td>".$linha['cpf']."</td>";
        echo "<td>".$linha['sexo']."</td>";
        echo "<td><a href='form-pessoa.php?id=".$linha['id']."'>Editar</a></td>";
        echo "<td><a onclick='return apagar(".$linha['id'].");' href='form-pessoa.php?apagar=".$linha['id']."'>Apagar</a></td>";
        echo "</tr>";
    }
    ?>
    <script>
        function apagar(id){
            return confirm("Deseja Apagar o registro ID("+id+")?");
        }
    </script>
</table>
</body>
</html>
