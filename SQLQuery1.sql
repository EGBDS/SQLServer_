--create database Agenda2;
use Agenda;

create table agenda 
(	
	code_agenda int primary key identity(1,1),
	nome varchar(60) not null,
	telefone bigint not null, -- sem normalizar
	email varchar(60),
	dataaniversario date,
	endereco varchar(255), -- sem normalizar
	observacao varchar(255)
);

alter table agenda
		add salario decimal(8,2)

alter table agenda
		add sexo varchar(1)

alter table agenda
		drop column salario

--a

insert into agenda values ('Pedro Henrique', 
							17996434608,
							'pedrohenrique.c.a04@gmail.com',
							'17-12-2004',
							'Rua Silvio Nicoletti 191',
							'eu',
							'M')

insert into agenda values ('Roger Guedes',
							11991231012310,
							'calvo.guedes@gmail.com',
							'23-08-1995',
							'Rua Campos do Jordão 123',
							'jogador',
							'M')

insert into agenda values ('Yuti Alberto',
							1199999999,
							'Ya.yuti9A@gmail.com',
							'09-09-2002',
							'Rua Pacaembu 09',
							'jogador',
							'M')

insert into agenda values ('Renato Augusto',
							119574875748,
							'melhormeia.DB@gmail.com',
							'08-08-1989',
							'Rua São Paulo 008',
							'jogador',
							'M')

insert into agenda values ('Cassio',
							1199574875712,
							'queixudocommundial@gamil.com',
							'12-12-1985',
							'Rua Mundial de 2012',
							'jogador',
							'M')

insert into agenda values ('Fagner',
							1199574875723,
							'melhorlateral.DB@gmail.com',
							'23-10-1985',
							'Rua Melhor Lateral',
							'jogador',
							'M')

insert into agenda values ('Fabio Santos',
							11995748757236,
							'2melhorlateral.DB@gmail.com',
							'06-06-1960',
							'Rua Segundo Melhor Lateral',
							'jogador',
							'M')

insert into agenda values ('Ronaldo Fenomeno',
							11995748757209,
							'melhor9quejateve@gmail.com',
							'09-09-1980',
							'Rua Ronaldo Fenomeno',
							'jogador',
							'M')

insert into agenda values ('Craque Neto',
							119957487510,
							'eunaojogomaiiiss@gmail.com',
							'16-10-1950',
							'Rua Seus Zé ruela',
							'jogador',
							'M')

insert into agenda values ('Fausto Vera',
							119957487523,
							'BoludoMeia@gmail.com',
							'06-10-2000',
							'Rua Manito no Brasil',
							'jogador',
							'M')

select * from agenda
							
update agenda set email = 'craque0@gmail.com'
					where code_agenda = 9

alter table agenda 
		add constraint ckmail
				check (email like '%@%')

alter table agenda
		add constraint cksexo
				check (sexo in ('F', 'M'))

				select nome, telefone, email
				from agenda
				order by nome

				select upper (nome), telefone, lower (email)
				from agenda

				select count(*) from agenda

				update agenda
				set salario = 750
				where code_agenda in (1,6,8,9)

				update agenda
				set salario = 1500
				where code_agenda in (2,3,4,5,7)

				update agenda
				set salario = 150
				where code_agenda in (10)

				select sum (salario)
				from agenda

				select nome, salario, sexo
				from agenda
				where salario > 500
				and sexo = 'M'

				select nome, salario, sexo
				from agenda
				where salario > 500
				or sexo = 'M'

				select avg(salario)
				from agenda

				select *
				from agenda 
				where nome like '%0'

				select * from agenda