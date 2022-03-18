---------------------------------------------------------------------------
-- FILE    : server_logger.adb
-- SUBJECT : Body of a log management package.
-- AUTHOR  : (C) Copyright 2022 by Peter Chapin
--
-- Please send comments or bug reports to
--
--      Peter Chapin <chapinp@acm.org>
---------------------------------------------------------------------------
pragma SPARK_Mode (Off);

with Ada.Text_IO;
with Ada.Calendar;
use Ada.Calendar;

package body Server_Logger is

   function Format_Timestamp return String is
      TimeHolder: time := Clock;
      Year: Year_Number;
      Month: Month_Number;
      Day: Day_Number;
      Seconds: Day_Duration;
   begin

      Split(TimeHolder, Year, Month, Day, Seconds);

      sec := Integer(Seconds);

      sec := sec rem 60;


      return Integer'Image(Year) & (" -") & Integer'Image(Month)
        & (" -") & Integer'Image(Day) & (" ");

      end Format_Timestamp;

   procedure Write_Error (Message : in String) is
      TimeStamp: string := Format_Timestamp;
   begin
      Ada.Text_IO.Put_Line ( TimeStamp & " ***ERROR***: " & Message);
   end Write_Error;

   procedure Write_Information (Message : in String) is
      TimeStamp: string := Format_Timestamp;
   begin
      Ada.Text_IO.Put_Line (TimeStamp & " ***Information***: " & Message);
   end Write_Information;

   procedure Write_Warning (Message : in String) is
      TimeStamp: string := Format_Timestamp;
   begin
      Ada.Text_IO.Put_Line (TimeStamp & " ***Warning***: " & Message);
   end Write_Warning;




   end Server_Logger;
