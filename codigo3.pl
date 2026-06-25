:- initialization(iniciar_diagnostico).
:- dynamic(credencial/2).
:- dynamic(solucao/3).

credencial("usuario", "senha").
credencial("admin", "senha123").

solucao("uno", "Banco traseiro ausente", "Instale uma caixa de som").
solucao("uno", "Muito devagar", "Instale uma escada").
solucao("peugeot", _, "Sucateie").
solucao("marea", "Muito quente", "Problema cronico! Compre mais agua").
solucao(_, "Pane eletrica", "Limpe os terminais da bateria e teste a carga com um multimetro").
solucao(_, "Superaquecimento do motor", "Chamar o guincho para evitar fundir o motor").


iniciar_diagnostico :-
      writeln('Ola, seja bem vindo ao mega brain mecanico 2.0!'), nl,
      menu("convidado", "").

prefixo_terminal("admin") :- !, format('[root@megabrain_mecanico2ponto0 ~~]# ').
prefixo_terminal("convidado") :- !, format('[convidado@megabrain_mecanico2ponto0 ~~]$ ').
prefixo_terminal(Usuario) :- format('[~w@megabrain_mecanico2ponto0 ~~]$ ', [Usuario]).

menu("admin", Senha) :- % adm adicionar solucoes
      !,
      writeln('O que deseja fazer admin?'),
      writeln('(1) Adicionar Solucao'),
      writeln('(2) Algo'),
      writeln('(3) Algo mais'),
      writeln('(0) Sair'),
      prefixo_terminal(admin),
      flush_output,
      read_line_to_string(user_input, Input), nl,
      ( Input = "1" ->
        add_sol, menu("admin", Senha)
      ; Input = "2" ->
        algo, menu("admin", Senha)
      ; Input = "3" ->
        algo_mais, menu("admin", Senha)
      ; Input = "0" ->
        fim
      ; writeln('Entrada invalida! Digite novamente.'), nl,
        menu("admin", Senha)
      ).
menu(Usuario, Senha) :-
      writeln('Menu:'),
      writeln('(1) Login'),
      writeln('(2) Cadastro'),
      ( Usuario \== "convidado" ->
        writeln('(3) Diagnostico')
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
        diagnostico(credencial(Usuario, Senha)),
        !, menu(Usuario, Senha)
      ; Input = "0" ->
        fim
      ; writeln('Entrada invalida! Digite novamente.'), nl,
        menu(Usuario, Senha)
      ).

login(NovoUsuario, NovaSenha) :-
      write('Digite seu usuario (mantenha vazio para sair): '),
      flush_output,
      read_line_to_string(user_input, Usuario),
      ( Usuario == "" ->
        writeln('Saindo do login...'), nl, fail
      ; processar_login(Usuario, NovoUsuario, NovaSenha)
      ).
processar_login(Usuario, NovoUsuario, NovaSenha) :-
      write('Digite sua senha: '),
      flush_output,
      read_line_to_string(user_input, Senha),
      ( credencial(Usuario, Senha) ->
        writeln('Login realizado com sucesso!'), nl,
        NovoUsuario = Usuario, NovaSenha = Senha
      ; writeln('Usuario ou senha invalidos! Digite novamente.'), nl,
        login(NovoUsuario, NovaSenha)
      ).

cadastro(NovoUsuario, NovaSenha) :-
      write('Digite seu usuario (sem espacos) (mantenha vazio para sair): '),
      flush_output,
      read_line_to_string(user_input, Usuario),
      ( Usuario == "" ->
        writeln('Saindo do cadastro...'), nl, fail
      ; sub_string(Usuario, _, _, _, " ") ->
        writeln('Erro: O usuario nao pode conter espacos!'), nl,
        cadastro(NovoUsuario, NovaSenha)
      ; credencial(Usuario, _) ->
        writeln('Erro! Usuario ja existente.'), nl,
        cadastro(NovoUsuario, NovaSenha)
      ; obter_senha_cadastro(Usuario, NovoUsuario, NovaSenha)
      ).
obter_senha_cadastro(Usuario, NovoUsuario, NovaSenha) :-
      write('Crie uma senha (sem espacos): '),
      flush_output,
      read_line_to_string(user_input, Senha),
      ( sub_string(Senha, _, _, _, " ") ->
        writeln('Erro: A senha nao pode conter espacos!'), nl,
        cadastro(NovoUsuario, NovaSenha)
      ; finalizar_cadastro(Usuario, Senha, NovoUsuario, NovaSenha)
      ).
finalizar_cadastro(Usuario, Senha, NovoUsuario, NovaSenha) :-
      assertz(credencial(Usuario, Senha)),
      writeln('Usuario e senha cadastrados com sucesso!'), nl,
      NovoUsuario = Usuario, NovaSenha = Senha.

diagnostico(credencial("admin", Senha)) :- !, menu("admin", Senha).
diagnostico(credencial(Usuario, Senha)) :-
      write('Digite a marca de seu veiculo (mantenha vazio para sair): '),
      flush_output,
      read_line_to_string(user_input, Marca), nl,
      ( Marca == "" ->
        writeln('Saindo do diagnostico...'), nl
      ; processar_marca(credencial(Usuario, Senha), Marca)
      ).
processar_marca(credencial(Usuario, Senha), Marca) :-
      ( \+(solucao(Marca, _, _)) ->
        writeln('Infelizmente nao possuimos solucoes para esta marca! Tente outra.'), nl,
        diagnostico(credencial(Usuario, Senha))
      ; obter_problema_diagnostico(credencial(Usuario, Senha), Marca)
      ).
obter_problema_diagnostico(credencial(Usuario, Senha), Marca) :-
      writeln('Escolha um dos problemas abaixo:'),
      findall(Problemas, solucao(Marca, Problemas, _), ListaFiltrada),
      forall(
            nth1(N, ListaFiltrada, Problemas),
            format('(~w) ~w~n', [N, Problemas])
      ),
      writeln('(0) Nenhum dos acima (retorna para o menu)'),
      prefixo_terminal(Usuario),
      flush_output,
      read_line_to_string(user_input, Input), nl,
      ( Input = "0" ->
        writeln('Saindo do diagnostico...'), nl
      ; (number_string(Index, Input), nth1(Index, ListaFiltrada, Problema)) ->
        processar_problema(credencial(Usuario, Senha), Marca, Problema)
      ; writeln('Opcao invalida!'), nl,
        obter_problema_diagnostico(credencial(Usuario, Senha), Marca)
      ).
processar_problema(credencial(Usuario, Senha), Marca, Problema) :-
      ( solucao(Marca, Problema, Solucao) ->
        format('Fique calmo pois seu problema tem solucao!~nSolucao: ~w~n~n', [Solucao])
      ; writeln('Infelizmente nao encontramos uma solucao para esse problema.'), nl
      ),
      writeln('Voltando para o menu...'), nl.

fim :-
      writeln('Obrigado por confiar no mega brain mecanico 2.0! Volte sempre!').

% sleep(1).

% salvar todas as solucoes q o usuario pediu, e dps fazer uma regra pra mostrar elas

% :- dynamic(player/2).
% assertz(Clause).
% asserta(Clause).
% retract(Clause).
% retractall(Clause).