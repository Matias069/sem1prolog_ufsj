:- initialization(iniciar_diagnostico).
:- dynamic(credencial/2).

recomendar_modelo(uno, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = fiat,
      Orcamento_Minimo = 38000,
      Custo_Manutencao_Minimo = 350,
      subset(Estilos, [
            compacto,
            economico
      ]).
recomendar_modelo(cronos, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = sedan,
      Marca = fiat,
      Orcamento_Minimo = 120000,
      Custo_Manutencao_Minimo = 800,
      subset(Estilos, [
            casual
      ]).
recomendar_modelo(fastback, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = suv,
      Marca = fiat,
      Orcamento_Minimo = 160000,
      Custo_Manutencao_Minimo = 1200,
      subset(Estilos, [
            esportivo,
            casual
      ]).
recomendar_modelo(strada, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = picape,
      Marca = fiat,
      Orcamento_Minimo = 115000,
      Custo_Manutencao_Minimo = 780,
      subset(Estilos, [
            utilitario,
            casual
      ]).
recomendar_modelo(doblo, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = van,
      Marca = fiat,
      Orcamento_Minimo = 70000,
      Custo_Manutencao_Minimo = 500,
      subset(Estilos, [
            utilitario,
            familia,
            economico
      ]).
recomendar_modelo(polo, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = volkswagen,
      Orcamento_Minimo = 95000,
      Custo_Manutencao_Minimo = 800,
      subset(Estilos, [
            casual
      ]).
recomendar_modelo(gol, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = volkswagen,
      Orcamento_Minimo = 45000,
      Custo_Manutencao_Minimo = 550,
      subset(Estilos, [
            utilitario,
            economico
      ]).
recomendar_modelo(nivus, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = sedan,
      Marca = volkswagen,
      Orcamento_Minimo = 120000,
      Custo_Manutencao_Minimo = 1000,
      subset(Estilos, [
            casual,
            esportivo
      ]).
recomendar_modelo(caravelle, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = van,
      Marca = volkswagen,
      Orcamento_Minimo = 35000,
      Custo_Manutencao_Minimo = 700,
      subset(Estilos, [
            utilitario,
            familia,
            classico
      ]).
recomendar_modelo(dolphin, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = byd,
      Orcamento_Minimo = 140000,
      Custo_Manutencao_Minimo = 600,
      subset(Estilos, [
            casual,
            economico
      ]).
recomendar_modelo(king, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = sedan,
      Marca = byd,
      Orcamento_Minimo = 175000,
      Custo_Manutencao_Minimo = 1200,
      subset(Estilos, [
            casual,
            economico,
            esportivo
      ]).
recomendar_modelo(bronco, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = suv,
      Marca = ford,
      Orcamento_Minimo = 150000,
      Custo_Manutencao_Minimo = 1400,
      subset(Estilos, [
            utilitario
      ]).
recomendar_modelo(ranger, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = picape,
      Marca = ford,
      Orcamento_Minimo = 280000,
      Custo_Manutencao_Minimo = 2500,
      subset(Estilos, [
            utilitario
      ]).
recomendar_modelo(onix, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = chevrolet,
      Orcamento_Minimo = 60000,
      Custo_Manutencao_Minimo = 700,
      subset(Estilos, [
            economico,
            compacto,
            casual
      ]).
recomendar_modelo(tracker, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = suv,
      Marca = chevrolet,
      Orcamento_Minimo = 120000,
      Custo_Manutencao_Minimo = 900,
      subset(Estilos, [
            esportivo,
            casual
      ]).
recomendar_modelo(spin, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = van,
      Marca = chevrolet,
      Orcamento_Minimo = 110000,
      Custo_Manutencao_Minimo = 600,
      subset(Estilos, [
            utilitario,
            familia,
            casual
      ]).
recomendar_modelo(f12_berlinetta, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = cupe,
      Marca = ferrari,
      Orcamento_Minimo = 3700000,
      Custo_Manutencao_Minimo = 20000,
      subset(Estilos, [
            esportivo,
            casual
      ]).
recomendar_modelo(f355_spider, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = conversivel,
      Marca = ferrari,
      Orcamento_Minimo = 2150000,
      Custo_Manutencao_Minimo = 10000,
      subset(Estilos, [
            esportivo,
            classico
      ]).
recomendar_modelo(cabrio, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = conversivel,
      Marca = bmw,
      Orcamento_Minimo = 510000,
      Custo_Manutencao_Minimo = 5000,
      subset(Estilos, [
            esportivo,
            casual
      ]).
recomendar_modelo(revuelto, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = cupe,
      Marca = lamborghini,
      Orcamento_Minimo = 7500000,
      Custo_Manutencao_Minimo = 40000,
      subset(Estilos, [
            esportivo
      ]).
recomendar_modelo(rampage, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = picape,
      Marca = ram,
      Orcamento_Minimo = 290000,
      Custo_Manutencao_Minimo = 8000,
      subset(Estilos, [
            utilitario
      ]).
recomendar_modelo(hb20, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = hatch,
      Marca = hyundai,
      Orcamento_Minimo = 70000,
      Custo_Manutencao_Minimo = 500,
      subset(Estilos, [
            economico,
            compacto,
            casual
      ]).
recomendar_modelo(creta, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = suv,
      Marca = hyundai,
      Orcamento_Minimo = 120000,
      Custo_Manutencao_Minimo = 800,
      subset(Estilos, [
            casual
      ]).
recomendar_modelo(civic, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos) :-
      Tipo = sedan,
      Marca = honda,
      Orcamento_Minimo = 160000,
      Custo_Manutencao_Minimo = 1200,
      subset(Estilos, [
            esportivo,
            casual
      ]).

credencial("usuario", "senha").
prefixo_terminal("convidado") :-
      !,
      sleep(0.3),
      format('[convidado@megabrain_turbo2ponto0 ~~]$ ').
prefixo_terminal(Usuario) :-
      sleep(0.3),
      format('[~w@megabrain_turbo2ponto0 ~~]$ ', [Usuario]).


iniciar_diagnostico :-
      writeln('Ola, seja bem vindo ao mega brain turbo 2.0!'), nl,
      sleep(1),
      menu("convidado", "").

menu(Usuario, Senha) :-
      writeln('Menu:'),
      writeln('(1) Login'),
      writeln('(2) Cadastro'),
      ( Usuario \== "convidado" ->
        writeln('(3) Recomendacao de Carro')
      ; true
      ),
      writeln('(0) Sair'),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Input), nl,
      ( Input = "1" ->
        ( login(NovoUsuario, NovaSenha) ->
          !, menu(NovoUsuario, NovaSenha)
        ; menu(Usuario, Senha)
        )
      ; Input = "2" ->
        ( cadastro(NovoUsuario, NovaSenha) ->
          !, menu(NovoUsuario, NovaSenha)
        ; menu(Usuario, Senha)
        )
      ; Usuario \== "convidado", Input = "3" ->
        recomendacao(credencial(Usuario, Senha)),
        !, menu(Usuario, Senha)
      ; Input = "0" ->
        fim
      ; writeln('Entrada invalida! Digite novamente.'), nl, sleep(0.5),
        menu(Usuario, Senha)
      ).

login(NovoUsuario, NovaSenha) :-
      write('Digite seu usuario (mantenha vazio para sair): '),
      flush_output,
      read_line_to_string(user_input, Usuario),
      ( Usuario == "" ->
        writeln('Saindo do login ...'), nl,
        sleep(0.5), fail
      ; processar_login(Usuario, NovoUsuario, NovaSenha)
      ).
processar_login(Usuario, NovoUsuario, NovaSenha) :-
      write('Digite sua senha: '),
      flush_output,
      read_line_to_string(user_input, Senha),
      ( credencial(Usuario, Senha) ->
        writeln('Login realizado com sucesso!'), nl,
        NovoUsuario = Usuario, NovaSenha = Senha
      ; writeln('Usuario ou senha invalidos! Digite novamente.'), nl, sleep(0.5),
        login(NovoUsuario, NovaSenha)
      ).

cadastro(NovoUsuario, NovaSenha) :-
      write('Digite seu usuario (sem espacos) (mantenha vazio para sair): '),
      flush_output,
      read_line_to_string(user_input, Usuario),
      ( Usuario == "" ->
        writeln('Saindo do cadastro ...'), nl,
        sleep(0.5), fail
      ; sub_string(Usuario, _, _, _, " ") ->
        writeln('Erro: O usuario nao pode conter espacos!'), nl, sleep(0.5),
        cadastro(NovoUsuario, NovaSenha)
      ; credencial(Usuario, _) ->
        writeln('Erro! Usuario ja existente.'), nl, sleep(0.5),
        cadastro(NovoUsuario, NovaSenha)
      ; obter_senha_cadastro(Usuario, NovoUsuario, NovaSenha)
      ).
obter_senha_cadastro(Usuario, NovoUsuario, NovaSenha) :-
      write('Crie uma senha (sem espacos): '),
      flush_output,
      read_line_to_string(user_input, Senha),
      ( sub_string(Senha, _, _, _, " ") ->
        writeln('Erro: A senha nao pode conter espacos!'), nl, sleep(0.5),
        cadastro(NovoUsuario, NovaSenha)
      ; finalizar_cadastro(Usuario, Senha, NovoUsuario, NovaSenha)
      ).
finalizar_cadastro(Usuario, Senha, NovoUsuario, NovaSenha) :-
      assertz(credencial(Usuario, Senha)),
      writeln('Usuario e senha cadastrados com sucesso!'), nl, sleep(0.5),
      NovoUsuario = Usuario, NovaSenha = Senha.

validar_string_dinheiro(Str_Br, Dinheiro) :-
      \+ sub_string(Str_Br, _, _, _, "."),
      re_replace(",", ".", Str_Br, Str),
      number_string(Dinheiro, Str),
      Dinheiro >= 0,
      ( sub_string(Str_Br, _, _, Casas_Decimais, ",") ->
        Casas_Decimais =< 2
      ; true
      ).

recomendacao(credencial(Usuario, Senha)) :-
      writeln('Bem vindo as recomendacoes do mega brain turbo 2.0!'), sleep(1),
      writeln('Digite o tipo do carro desejado (mantenha vazio caso nao possua preferencia)'),
      writeln('(digite 0 para sair)'), nl,
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Tipo_Str), nl,
      ( Tipo_Str == "0" ->
        writeln('Saindo da recomendacao ...'), nl, sleep(0.5)
      ; Tipo_Str == "" ->
        processar_marca(credencial(Usuario, Senha), _)
      ; atom_string(Tipo, Tipo_Str),
        ( recomendar_modelo(_, Tipo, _, _, _, []) ->
          processar_marca(credencial(Usuario, Senha), Tipo)
        ; writeln('Infelizmente seus criterios sao muito rigorosos! Tente novamente mais tarde.'), nl, sleep(0.5)
        )
      ).
processar_marca(credencial(Usuario, Senha), Tipo) :-
      writeln('Digite a marca do carro desejada (mantenha vazio caso nao possua preferencia)'),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Marca_Str), nl,
      ( Marca_Str == "" ->
        processar_orcamento(credencial(Usuario, Senha), Tipo, _)
      ; atom_string(Marca, Marca_Str),
        ( recomendar_modelo(_, Tipo, Marca, _, _, []) ->
          processar_orcamento(credencial(Usuario, Senha), Tipo, Marca)
        ; writeln('Infelizmente seus criterios sao muito rigorosos! Tente novamente mais tarde.'), nl, sleep(0.5)
        )
      ).
processar_orcamento(credencial(Usuario, Senha), Tipo, Marca) :-
      writeln('Digite seu orcamento para comprar o carro (R$):'),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Orcamento_Str), nl,
      ( validar_string_dinheiro(Orcamento_Str, Orcamento) ->
        ( recomendar_modelo(_, Tipo, Marca, Orcamento_Minimo, _, []),
          Orcamento >= Orcamento_Minimo ->
          processar_custo_manutencao(credencial(Usuario, Senha), Tipo, Marca, Orcamento)
        ; writeln('Infelizmente seus criterios sao muito rigorosos! Tente novamente mais tarde.'), nl, sleep(0.5)
        )
      ; writeln('Entrada invalida! Por favor, digite uma quantia valida em reais.'), nl, sleep(0.5),
        processar_orcamento(credencial(Usuario, Senha), Tipo, Marca)
      ).
processar_custo_manutencao(credencial(Usuario, Senha), Tipo, Marca, Orcamento) :-
      writeln('Digite o dinheiro maximo que esta disposto a pagar para manter o carro (R$):'),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Custo_Manutencao_Str), nl,
      ( validar_string_dinheiro(Custo_Manutencao_Str, Custo_Manutencao) ->
        ( recomendar_modelo(_, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, []),
          Orcamento >= Orcamento_Minimo,
          Custo_Manutencao >= Custo_Manutencao_Minimo ->
          processar_estilo(credencial(Usuario, Senha), Tipo, Marca, Orcamento, Custo_Manutencao)
        ; writeln('Infelizmente seus criterios sao muito rigorosos! Tente novamente mais tarde.'), nl, sleep(0.5)
        )
      ; writeln('Entrada invalida! Por favor, digite uma quantia valida em reais.'), nl, sleep(0.5),
        processar_custo_manutencao(credencial(Usuario, Senha), Tipo, Marca, Orcamento)
      ).
processar_estilo(credencial(Usuario, Senha), Tipo, Marca, Orcamento, Custo_Manutencao) :-
      writeln('Escolha alguns estilos de carro abaixo (mantenha vazio caso nao possua preferencia):'),
      writeln('(separe-os com espaco caso mais de um seja adequado)'), nl,
      Estilos_Validos = [
            casual,
            classico,
            compacto,
            economico,
            esportivo,
            familia,
            utilitario
      ],
      forall(
            nth1(N, Estilos_Validos, Opcoes_Estilos),
            format('(~d) ~a~n', [N, Opcoes_Estilos])
      ),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Input), nl,
      ( Input = "" ->
        recomendar(Tipo, Marca, Orcamento, Custo_Manutencao, [])
      ; (
          split_string(Input, " ", " ", Lista_Strings_Estilos),
          maplist(number_string, Lista_Index_Estilos, Lista_Strings_Estilos),
          maplist(integer, Lista_Index_Estilos),
          length(Estilos_Validos, TamMax),
          maplist(between(1, TamMax), Lista_Index_Estilos),
          is_set(Lista_Index_Estilos)
        ) ->
        findall(
            Estilo, (
                  member(Index, Lista_Index_Estilos),
                  nth1(Index, Estilos_Validos, Estilo)
            ),
            Estilos
        ),
        recomendar(Tipo, Marca, Orcamento, Custo_Manutencao, Estilos)
      ; writeln('Entrada invalida! Por favor, digite uma sequencia de opcoes validas.'), nl, sleep(0.5),
        processar_estilo(credencial(Usuario, Senha), Tipo, Marca, Orcamento, Custo_Manutencao)
      ).
recomendar(Tipo, Marca, Orcamento, Custo_Manutencao, Estilos) :-
      write('Analisando'), flush_output, sleep(0.5),
      write('.'), flush_output, sleep(0.5),
      write('.'), flush_output, sleep(0.5),
      write('.'), flush_output, sleep(0.5), nl,
      ( once(
            recomendar_modelo(Modelo, Tipo, Marca, Orcamento_Minimo, Custo_Manutencao_Minimo, Estilos)
        ),
        Orcamento >= Orcamento_Minimo,
        Custo_Manutencao >= Custo_Manutencao_Minimo ->
        format('Apos analises arduas e consultas com diversos profissionais qualificados, encontramos o modelo de veiculo perfeito para voce: ~a!~n', [Modelo]),
        writeln('Voltando para o menu ...'), nl, sleep(0.5)
      ; writeln('Infelizmente, a complexidade de seus criterios excedeu a capacidade maxima do mega brain! Tente novamente mais tarde.'), nl
      ).

fim :-
      writeln('Obrigado por confiar no mega brain turbo 2.0! Volte sempre!'),
      sleep(0.2).