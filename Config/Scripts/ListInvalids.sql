set serveroutput on

declare
  cursor cr_invalid is
    select object_name
         , object_type
      from dba_objects
     where owner = 'FEPAM'
       and object_type <> 'SYNONYM' 
       and status = 'INVALID'
     order by object_name;


  v_invalid Number;

begin
  for r_invalid in cr_invalid loop
    if v_invalid is null then
      DBMS_OutPut.Put_Line('');
      DBMS_OutPut.Put_Line('Invalid Objects');
      DBMS_OutPut.Put_Line('');
      DBMS_OutPut.Put_Line('Object Name                     Object Type');
      DBMS_OutPut.Put_Line('------------------------------  -----------------------');
      v_invalid := 0;
    end if;

    DBMS_OutPut.Put_Line(RPad(r_invalid.object_name, 30, ' ') || '  ' || r_invalid.object_type);

    v_invalid := v_invalid + 1;
  end loop r_invalid;

  if v_invalid is null then
    DBMS_OutPut.Put_Line('');
    DBMS_OutPut.Put_Line('No invalid objects found');
  else
    DBMS_OutPut.Put_Line('');
    DBMS_OutPut.Put_Line('Found ' || To_Char(v_invalid) || ' invalid objects');
  end if;

exception
  when others then
    DBMS_OutPut.Put_Line('Error listing invalid objects:' || Utl_TCP.CRLF || SQLErrM);

end;
/

set serveroutput off
