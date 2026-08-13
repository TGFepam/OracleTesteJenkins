set serveroutput on

declare
  v_invalid Number;

begin
  select Count(1)
    into v_invalid
    from dba_objects
   where owner = 'FEPAM'
     and object_type <> 'SYNONYM' 
     and status = 'INVALID';

  if v_invalid = 0 then
    DBMS_OutPut.Put_Line('');
    DBMS_OutPut.Put_Line('No invalid objects');
    DBMS_OutPut.Put_Line('Recompilation is not necessary');
    return;
  end if;

  DBMS_OutPut.Put_Line('');
  DBMS_OutPut.Put_Line('Found ' || To_Char(v_invalid) || ' invalid objects');
  DBMS_OutPut.Put_Line('');
  DBMS_OutPut.Put_Line('Start: ' || To_Char(sysdate, 'hh24:mi:ss'));
  DBMS_OutPut.Put_Line('');

  SYS.DB_Admin_Util.Proc_Recomp_Invalid;

  DBMS_OutPut.Put_Line('');
  DBMS_OutPut.Put_Line('End: ' || To_Char(sysdate, 'hh24:mi:ss'));
  DBMS_OutPut.Put_Line('');

exception
  when others then
    DBMS_OutPut.Put_Line('Error recompiling objects:' || Utl_TCP.CRLF || SQLErrM);

end;
/

set serveroutput off
