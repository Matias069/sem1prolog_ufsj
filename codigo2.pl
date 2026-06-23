garagem(joao_claudio, [uno, uno, today, byd, renegade, ram]).
garagem(matheus, [celta, titan]).
garagem(luis, [gol]).
garagem(braian, [uno, uno, gol]).
garagem(sandro, [corolla, sandero]).

ipva(uno, 950.00).
ipva(today, 0.00).
ipva(byd, 4300.00).
ipva(renegade, 2600.00).
ipva(ram, 10000.00).
ipva(celta, 400.00).
ipva(titan, 300.00).
ipva(gol, 700.00).
ipva(corolla, 5675.00).
ipva(sandero, 1800.00).


soma_ipva([], 0).
soma_ipva(Veiculos, Soma) :-
      [Head|Tail] = Veiculos,
      ipva(Head, Ipva),
      soma_ipva(Tail, S),
      Soma is Ipva+S.

mostrar_ipva(Pessoa) :-
      garagem(Pessoa, Veiculos),
      soma_ipva(Veiculos, Valor),
      format('~w vai pagar um total de: R$ ~2f.', [Pessoa, Valor]).

imprimir_veiculos([]).
imprimir_veiculos(Veiculos) :-
      [Head|Tail] = Veiculos,
      length(Veiculos, L),
      ( L > 1 ->
            format('~w, ', [Head]) ;
            format('~w.~n', [Head])
      ),
      imprimir_veiculos(Tail).

mostrar_veiculos(Pessoa) :-
      garagem(Pessoa, Veiculos),
      format('~w possui o(s) seguinte(s) veiculo(s): ', [Pessoa]),
      imprimir_veiculos(Veiculos).

quantos_veiculos(_, [], 0).
quantos_veiculos(Veiculo, ListaVeiculos, Count) :-
      [Head|Tail] = ListaVeiculos,
      quantos_veiculos(Veiculo, Tail, C),
      ( Head == Veiculo ->
            Int = 1 ;
            Int = 0
      ),
      Count is C+Int.

mostrar_quantos_veiculos(Pessoa, Veiculo) :-
      garagem(Pessoa, ListaVeiculos),
      quantos_veiculos(Veiculo, ListaVeiculos, Count),
      format('~w possui ~w veiculo(s) de modelo ~w.~n', [Pessoa, Count, Veiculo]).