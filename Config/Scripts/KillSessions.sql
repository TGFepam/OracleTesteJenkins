set serveroutput on

declare
  cursor cr_session is
    select s.sid
         , s.serial#
         , s.username
      from v$session s
     where s.sid <> SYS_Context('UserEnv', 'SID')
       and s.username not like 'SYS%'
       and s.username <> 'FEPAM'
     order by s.username;


  v_status  VarChar2(5);
  v_message VarChar2(4000);

begin
  for r_session in cr_session loop
    if v_status is null then
      DBMS_OutPut.New_Line;
      DBMS_OutPut.Put_Line('Sessions Killed');
      DBMS_OutPut.New_Line;
      DBMS_OutPut.Put_Line('Username                        Status');
      DBMS_OutPut.Put_Line('------------------------------  ------');
    end if;

    SYS.DB_Admin_Util.Kill_Session( p_sid     => r_session.sid
                                  , p_serial  => r_session.serial#
                                  , p_status  => v_status
                                  , p_message => v_message );

    if v_status = 'OK' then
      DBMS_OutPut.Put_Line(RPad(r_session.username, 30, ' ') || '  ' || v_status);
    else
      DBMS_OutPut.Put_Line(RPad(r_session.username, 30, ' ') || '  ' || v_status || '  ' || v_message);
    end if;
  end loop r_session;

  if v_status is null then
    DBMS_OutPut.New_Line;
    DBMS_OutPut.Put_Line('No session killed...');
  end if;

exception
  when others then
    DBMS_OutPut.Put_Line('Error killing sessions:' || Utl_TCP.CRLF || SQLErrM);

end;
/

set serveroutput off
