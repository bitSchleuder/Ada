pragma Source_File_Name (ada_main, Spec_File_Name => "b~Test.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~Test.adb");

package body ada_main is

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E008 : Boolean; pragma Import (Ada, E008, "ada__exceptions_E");
      E014 : Boolean; pragma Import (Ada, E014, "system__exception_table_E");
      E052 : Boolean; pragma Import (Ada, E052, "ada__io_exceptions_E");
      E017 : Boolean; pragma Import (Ada, E017, "system__exceptions_E");
      E023 : Boolean; pragma Import (Ada, E023, "system__secondary_stack_E");
      E034 : Boolean; pragma Import (Ada, E034, "ada__tags_E");
      E032 : Boolean; pragma Import (Ada, E032, "ada__streams_E");
      E027 : Boolean; pragma Import (Ada, E027, "system__soft_links_E");
      E043 : Boolean; pragma Import (Ada, E043, "system__finalization_root_E");
      E045 : Boolean; pragma Import (Ada, E045, "system__finalization_implementation_E");
      E041 : Boolean; pragma Import (Ada, E041, "ada__finalization_E");
      E056 : Boolean; pragma Import (Ada, E056, "ada__finalization__list_controller_E");
      E054 : Boolean; pragma Import (Ada, E054, "system__file_control_block_E");
      E039 : Boolean; pragma Import (Ada, E039, "system__file_io_E");
      E006 : Boolean; pragma Import (Ada, E006, "ada__text_io_E");

      Restrictions : constant String :=
        "nnvvnnnvnnnnnvvvvvvnvvvnvnnvnnnvnvvnnnnnnvvvnnnnvvnn";

      procedure Set_Globals
        (Main_Priority            : Integer;
         Time_Slice_Value         : Integer;
         WC_Encoding              : Character;
         Locking_Policy           : Character;
         Queuing_Policy           : Character;
         Task_Dispatching_Policy  : Character;
         Restrictions             : System.Address;
         Unreserve_All_Interrupts : Integer;
         Exception_Tracebacks     : Integer;
         Zero_Cost_Exceptions     : Integer);
      pragma Import (C, Set_Globals, "__gnat_set_globals");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
   begin
      Set_Globals
        (Main_Priority            => -1,
         Time_Slice_Value         => -1,
         WC_Encoding              => 'b',
         Locking_Policy           => ' ',
         Queuing_Policy           => ' ',
         Task_Dispatching_Policy  => ' ',
         Restrictions             => Restrictions'Address,
         Unreserve_All_Interrupts => 0,
         Exception_Tracebacks     => 0,
         Zero_Cost_Exceptions     => 0);

      if Handler_Installed = 0 then
        Install_Handler;
      end if;
      if not E008 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if not E014 then
         System.Exception_Table'Elab_Body;
         E014 := True;
      end if;
      if not E052 then
         Ada.Io_Exceptions'Elab_Spec;
         E052 := True;
      end if;
      if not E017 then
         System.Exceptions'Elab_Spec;
         E017 := True;
      end if;
      if not E034 then
         Ada.Tags'Elab_Spec;
      end if;
      if not E034 then
         Ada.Tags'Elab_Body;
         E034 := True;
      end if;
      if not E032 then
         Ada.Streams'Elab_Spec;
         E032 := True;
      end if;
      if not E027 then
         System.Soft_Links'Elab_Body;
         E027 := True;
      end if;
      if not E023 then
         System.Secondary_Stack'Elab_Body;
         E023 := True;
      end if;
      if not E043 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E043 := True;
      if not E008 then
         Ada.Exceptions'Elab_Body;
         E008 := True;
      end if;
      if not E045 then
         System.Finalization_Implementation'Elab_Spec;
      end if;
      if not E045 then
         System.Finalization_Implementation'Elab_Body;
         E045 := True;
      end if;
      if not E041 then
         Ada.Finalization'Elab_Spec;
      end if;
      E041 := True;
      if not E056 then
         Ada.Finalization.List_Controller'Elab_Spec;
      end if;
      E056 := True;
      if not E054 then
         System.File_Control_Block'Elab_Spec;
         E054 := True;
      end if;
      if not E039 then
         System.File_Io'Elab_Body;
         E039 := True;
      end if;
      if not E006 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if not E006 then
         Ada.Text_Io'Elab_Body;
         E006 := True;
      end if;
   end adainit;

   procedure adafinal is
   begin
      Do_Finalize;
   end adafinal;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure initialize;
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");


      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_test");

      Ensure_Reference : System.Address := Ada_Main_Program_Name'Address;

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize;
      adainit;
      Break_Start;
      Ada_Main_Program;
      Do_Finalize;
      Finalize;
      return (gnat_exit_status);
   end;

-- BEGIN Object file/option list
   --   ./Test.o
   --   -L./
   --   -L/Users/schebefn/Development/Ada/Test/build/include/
   --   -L/usr/lib/ada/
   --   -static
   --   -lgnat
-- END Object file/option list   

end ada_main;
