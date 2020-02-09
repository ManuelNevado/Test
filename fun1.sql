

drop table trayectos;
drop table contratos;

CREATE TABLE Contratos(
Referencia VARCHAR(10) PRIMARY KEY,
Empresa VARCHAR(100),
Fecha DATE,
NumTrayectos NUMBER(2,0)
);
CREATE TABLE Trayectos(
Referencia VARCHAR(10) REFERENCES Contratos,
Origen VARCHAR(50),
Destino VARCHAR(50),
Vehı́culo VARCHAR(20),
PRIMARY KEY (Referencia, Origen, Destino)
);

insert into contratos(referencia, empresa) values('000','Porta');
insert into contratos(referencia, empresa) values('111','Dragon Ball');



create or replace function fun1(var1 contratos.referencia %type) 
return contratos.referencia %type is
begin
return var1;
end;

select * from contratos where(referencia=='000');

