possui_veiculo(joao_claudio, uno).
possui_veiculo(joao_claudio, today).
possui_veiculo(matheus, celta).
possui_veiculo(matheus, titan).
possui_veiculo(luis, gol).
possui_veiculo(braian, uno).
possui_veiculo(sandro, gol).

tipo_veiculo(uno, b).
tipo_veiculo(palio, b).
tipo_veiculo(celta, b).
tipo_veiculo(gol, b).
tipo_veiculo(today, a).
tipo_veiculo(titan, a).

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
            habilitacao(Pessoa, Tipo),
            tipo_veiculo(Veiculo, Tipo)
      )).

fora_da_lei(Pessoa) :-     
      possui_veiculo(Pessoa, Veiculo),
      tipo_veiculo(Veiculo, Tipo),
      \+ (habilitacao(Pessoa, Tipo)).