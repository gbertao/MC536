--select nome, sobrenome, ano_nascimento from pessoa where sexo='F';
--select nome, sobrenome, ano_nascimento from pessoa where sexo='F' ORDER by ano_nascimento;
--select sexo, nome, ano_nascimento as ano from pessoa where ano_nascimento >= 1960 order by ano_nascimento desc;
--select distinct(pais) from cidade order by pais;
--select nome from cidade where pais <> 'Brasil' and pais <> 'Alemanha';
--select nome from cidade where pais not in('Brasil', 'Alemanha');
--select nome, (ano_formacao_superior - ano_nascimento) as idade from pessoa where ano_formacao_superior is NOT NULL and (ano_formacao_superior - ano_nascimento) < 30;
--select min(ano_nascimento) as ano_nascimento from pessoa;
--select concat(nome, ' ', sobrenome) as nome_completo, ano_nascimento from pessoa where ano_nascimento between 1985 and 1991;
--select (nome || ' ' || sobrenome) as nome_completo, ano_nascimento from pessoa where ano_nascimento BETWEEN 1985 and 1991;
--select * from pessoa where ano_formacao_superior is NULL;
--select * from pessoa where ano_formacao_superior is not NULL;
--select p1.nome from pessoa p1, pessoa p2 where p2.nome = 'Ana Paula' AND p1.ano_nascimento < p2.ano_nascimento;
--select nome from pessoa where ano_nascimento < (select ano_nascimento from pessoa where nome ='Ana Paula');
--select cidade.nome, pais, pessoa.id as pID from pessoa, cidade where pessoa.nasceu = cidade.id;
--select pessoa.nome, pessoa.sobrenome from pessoa, viagem where pessoa.id = viagem.id_pessoa;
--select nome, sobrenome from pessoa where id in (select id_pessoa from viagem);
--select count(*) from cidade;
--select count(*) from pessoa, cidade where pessoa.nasceu = cidade.id group by cidade.nome;
--Adicionais
--select nome from pessoa where ano_nascimento <> 1981;
--select pessoa.nome, cidade.nome, data, custo from pessoa, cidade, viagem where pessoa.id = id_pessoa and cidade.id = id_cidade;

--select nome from pessoa where ano_nascimento = (select min(ano_nascimento) from pessoa);
--select (pessoa.nome || ' ' || sobrenome) as nome_completo from pessoa, cidade where pessoa.nasceu = cidade.id and cidade.nome = 'Campinas';
