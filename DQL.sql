use almaslz;
#1.Quais são os 3 produtos mais caros?--#
select nome,preco_Venda from produtos order by preco_Venda desc limit 3;
#2.Quantas avaliações cada cliente realizou?#
select id_Cliente, count(*) quant_avaliacao from avaliacao group by id_Cliente having count(*) order by quant_avaliacao desc;
#3.Qual a média das avaliações de cada produto?#
select id_Produto, avg(nota) media from avaliacao group by id_Produto having media;
#4.Qual a data de avaliação mais recente de cada produto?#
select id_produto, max(data_Avaliacao) ultima_avaliacao from avaliacao group by id_Produto having ultima_avaliacao;
#5.Quais as clientes cujo o nome se inicia com Joana?#
select nome_Cliente from clientes where nome_Cliente like 'Joana%';
#6.Qual o produto que recebeu a menor avaliação?#
select id_Produto, min(nota) menor_nota from avaliacao group by id_Produto order by menor_nota limit 1;
#7.Quais são os produtos cuja a avaliação mais recente é anterior à 30 dias, liste-os como “Avaliação desatualizada”?#
select id_Produto, max(data_Avaliacao) avaliação_desatualizada from avaliacao group by id_Produto having avaliação_desatualizada < current_date()-30;