---------------------------------------------------------------------------
-- FILE    : server_logger.adb
-- SUBJECT : Body of a log management package.
-- AUTHOR  : (C) Copyright 2022 by Peter Chapin
--
-- Please send comments or bug reports to
--
--      Peter Chapin <chapinp@acm.org>
---------------------------------------------------------------------------
pragma SPARK_Mode(Off);

with Ada.Text_IO;

package body Server_Logger is

   procedure Write_Error(Message : in String) is
   begin
      Ada.Text_IO.Put_Line("*** ERROR: " & Message);
   end Write_Error;

   procedure Write_Information(Message : in String) is
   begin
      Ada.Text_IO.Put_Line("***ERROR: " & Message);
   end Write_Information;

   procedure Write_Warning(Message : in String) is
   begin
      Ada.Text_IO.Put_Line("***ERROR: " & Message);
   end Write_Warning;

end Server_Logger;
