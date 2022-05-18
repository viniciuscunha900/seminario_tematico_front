<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Oleo+Script+Swash+Caps&display=swap" rel="stylesheet">
  <script rel="text/javascript" src="javascript/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <title>Biblioteca Virtual - Adicionar Livros</title>
</head>
<body>
    <div id="corpo">
    <fieldset>
      <h3>ADICIONAR LIVROS</h3>
      <HR></HR>
      <form action="">
        <label for="">TITULO DO LIVRO</label>
        <input class="form-control" type="text" placeholder="Digite o titulo do livro" required>
        <label for="" class="mt-3">AUTOR</label>
        <input class="form-control" type="text" placeholder="Nome do autor" required>
        <label class="mt-3">DATA DE LANÇAMENTO DO LIVRO</label>
        <input class="form-control" type="date" > 
        <label class="mt-3">ARQUIVO</label><br>
        <input class="form-control" type="file" name="livro">
        <br>
        <button type="submit" class="btn btn-dark mb-3 mt-3">Enviar</button>
        <a href="home.hmtl" class="btn btn-secondary mb-3 mt-3"disabled>Voltar</button>   
        </form>
    </fieldset>
  </div>
</body>
</html>
