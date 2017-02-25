Program cadastroEscolar ;
type cadProf = Record
  nome: string;  
end;

{Declaração de variáveis}
var professores : array [1..50] of  cadProf;
op, indice, i, iBusca: integer;
nameProf: string;
achou: boolean;

{Main}
Begin
  indice:= 1;
  op:= 0;
  while (op<>3) do
  begin
    clrscr;
    writeln('');
    writeln('---------------------------------------------');
    writeln('-----    SISTEMA DE CADASTRO ESCOLAR    -----');
    writeln('---------------------------------------------');
    writeln('');
    writeln(' 1 - Cadastrar Professor');
    writeln(' 2 - Consultar Professor');
    writeln(' 3 - Sair');
    writeln('');
    write(' Digite a opção escolhida: ');
    read(op);
    
    {Switch}
    if(op=1) then
    begin
      if(indice<=50) then
      begin
        clrscr;
        writeln('');
        writeln('---------------------------------------------');
        writeln('---------    CADASTRO DE PROFESSOR    -------');
        writeln('---------------------------------------------');
        writeln('');
        write('  Digite o nome do Professor: ');
        read(professores[indice].nome);
        indice:= indice+1;
      end
      else
      begin
        writeln('  Número máximo de Professores excedido!');
        readln;
      end;
    end
    else
    if(op=2) then
    begin
      clrscr;
      achou:= false;
      writeln('');
      writeln('---------------------------------------------');
      writeln('---------    CONSULTAR PROFESSORES    -------');
      writeln('---------------------------------------------');
      writeln('');
      write('  Digite o nome do Professor: ');
      read(nameProf);
      writeln('');
      for i:=1 to indice do
      begin
        if(nameProf = professores[i].nome) then
        begin
          achou:=true;
          iBusca:= i;
        end;
      end;
      if achou=true then
      begin
        write(' Professor ',professores[iBusca].nome,' Econtrado!');
        writeln;
        writeln(' Digite Enter para sair!');
        writeln('');
        readln;
      end
      else
      begin
        write('  Professor não cadastrado!');
        readln;
      end;
    end;
  end;
End.