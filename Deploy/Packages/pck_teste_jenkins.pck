create or replace package fepam.pck_teste_jenkins is
  procedure pr_teste;
  //procedure pr_teste2;

end pck_teste_jenkins;
/
create or replace package body pck_teste_jenkins is
  procedure pr_teste
  is
  begin
    dbms_output.put_line('Teste Jenkins');
  end pr_teste;

  /*procedure pr_teste2
  is
  begin
    dbms_output.put_line('Teste 2 Jenkins');
  end pr_teste2;
*/
end pck_teste_jenkins;
/
