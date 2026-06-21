possui_veiculo(joao_claudio, uno).
possui_veiculo(joao_claudio, today).
possui_veiculo(matheus, celta).
possui_veiculo(matheus, titan).
possui_veiculo(luis, gol).
possui_veiculo(braian, uno).
possui_veiculo(sandro, gol).

modelo_veiculo(uno, b).
modelo_veiculo(palio, b).
modelo_veiculo(celta, b).
modelo_veiculo(gol, b).
modelo_veiculo(today, a).
modelo_veiculo(titan, a).

habilitacao(joao_claudio, a).
habilitacao(joao_claudio, b).
habilitacao(matheus, b).
habilitacao(luis, b).
habilitacao(braian, a).
habilitacao(sandro, b).


mesmo_veiculo(Pessoa1, Pessoa2) :-
      possui_veiculo(Pessoa1, Veiculo),
      possui_veiculo(Pessoa2, Veiculo).

pode_dirigir(Pessoa, Veiculo) :-
      once((
            habilitacao(Pessoa, Categoria),
            modelo_veiculo(Veiculo, Categoria)
      )).

fora_da_lei(Pessoa) :-     
      possui_veiculo(Pessoa, Veiculo),
      modelo_veiculo(Veiculo, Categoria),
      \+ (habilitacao(Pessoa, Categoria)).