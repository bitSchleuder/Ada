pragma Source_File_Name (ada_main, Spec_File_Name => "b~seriell.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~seriell.adb");

package body ada_main is

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E053 : Boolean; pragma Import (Ada, E053, "interfaces__c_streams_E");
      E015 : Boolean; pragma Import (Ada, E015, "ada__exceptions_E");
      E021 : Boolean; pragma Import (Ada, E021, "system__exception_table_E");
      E013 : Boolean; pragma Import (Ada, E013, "ada__calendar_E");
      E171 : Boolean; pragma Import (Ada, E171, "ada__calendar__delays_E");
      E068 : Boolean; pragma Import (Ada, E068, "ada__io_exceptions_E");
      E101 : Boolean; pragma Import (Ada, E101, "ada__strings_E");
      E129 : Boolean; pragma Import (Ada, E129, "interfaces__c_E");
      E024 : Boolean; pragma Import (Ada, E024, "system__exceptions_E");
      E133 : Boolean; pragma Import (Ada, E133, "system__interrupt_management_E");
      E135 : Boolean; pragma Import (Ada, E135, "system__interrupt_management__operations_E");
      E030 : Boolean; pragma Import (Ada, E030, "system__secondary_stack_E");
      E051 : Boolean; pragma Import (Ada, E051, "ada__tags_E");
      E049 : Boolean; pragma Import (Ada, E049, "ada__streams_E");
      E034 : Boolean; pragma Import (Ada, E034, "system__soft_links_E");
      E059 : Boolean; pragma Import (Ada, E059, "system__finalization_root_E");
      E124 : Boolean; pragma Import (Ada, E124, "system__tasking_E");
      E137 : Boolean; pragma Import (Ada, E137, "system__tasking__debug_E");
      E145 : Boolean; pragma Import (Ada, E145, "system__tasking__initialization_E");
      E131 : Boolean; pragma Import (Ada, E131, "system__task_primitives__operations_E");
      E107 : Boolean; pragma Import (Ada, E107, "ada__strings__maps_E");
      E061 : Boolean; pragma Import (Ada, E061, "system__finalization_implementation_E");
      E057 : Boolean; pragma Import (Ada, E057, "ada__finalization_E");
      E072 : Boolean; pragma Import (Ada, E072, "ada__finalization__list_controller_E");
      E103 : Boolean; pragma Import (Ada, E103, "ada__strings__unbounded_E");
      E070 : Boolean; pragma Import (Ada, E070, "system__file_control_block_E");
      E055 : Boolean; pragma Import (Ada, E055, "system__file_io_E");
      E048 : Boolean; pragma Import (Ada, E048, "ada__text_io_E");
      E147 : Boolean; pragma Import (Ada, E147, "system__tasking__task_attributes_E");
      E153 : Boolean; pragma Import (Ada, E153, "system__tasking__protected_objects__entries_E");
      E157 : Boolean; pragma Import (Ada, E157, "system__tasking__queuing_E");
      E141 : Boolean; pragma Import (Ada, E141, "system__tasking__rendezvous_E");
      E155 : Boolean; pragma Import (Ada, E155, "system__tasking__protected_objects__operations_E");
      E161 : Boolean; pragma Import (Ada, E161, "system__tasking__stages_E");
      E115 : Boolean; pragma Import (Ada, E115, "karten_E");
      E165 : Boolean; pragma Import (Ada, E165, "eingabe_E");
      E169 : Boolean; pragma Import (Ada, E169, "kommando_E");
      E173 : Boolean; pragma Import (Ada, E173, "kopiere_E");
      E167 : Boolean; pragma Import (Ada, E167, "leser_E");
      E117 : Boolean; pragma Import (Ada, E117, "ustrings_E");
      E120 : Boolean; pragma Import (Ada, E120, "zeilen_E");
      E008 : Boolean; pragma Import (Ada, E008, "drucker_E");
      E006 : Boolean; pragma Import (Ada, E006, "ausgabe_E");
      E004 : Boolean; pragma Import (Ada, E004, "bios_E");
      E010 : Boolean; pragma Import (Ada, E010, "hardware_E");


      procedure Set_Globals
        (Main_Priority            : Integer;
         Time_Slice_Value         : Integer;
         WC_Encoding              : Character;
         Locking_Policy           : Character;
         Queuing_Policy           : Character;
         Task_Dispatching_Policy  : Character;
         Adafinal                 : System.Address;
         Unreserve_All_Interrupts : Integer;
         Exception_Tracebacks     : Integer);
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
         Adafinal                 => System.Null_Address,
         Unreserve_All_Interrupts => 0,
         Exception_Tracebacks     => 0);

      if Handler_Installed = 0 then
        Install_Handler;
      end if;
      if not E053 then
         Interfaces.C_Streams'Elab_Spec;
      end if;
      E053 := True;
      if not E015 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if not E021 then
         System.Exception_Table'Elab_Body;
         E021 := True;
      end if;
      if not E013 then
         Ada.Calendar'Elab_Spec;
      end if;
      if not E068 then
         Ada.Io_Exceptions'Elab_Spec;
         E068 := True;
      end if;
      if not E101 then
         Ada.Strings'Elab_Spec;
         E101 := True;
      end if;
      if not E129 then
         Interfaces.C'Elab_Spec;
      end if;
      if not E024 then
         System.Exceptions'Elab_Spec;
         E024 := True;
      end if;
      if not E133 then
         System.Interrupt_Management'Elab_Spec;
      end if;
      if not E133 then
         System.Interrupt_Management'Elab_Body;
         E133 := True;
      end if;
      if not E135 then
         System.Interrupt_Management.Operations'Elab_Body;
         E135 := True;
      end if;
      E129 := True;
      if not E051 then
         Ada.Tags'Elab_Spec;
      end if;
      if not E051 then
         Ada.Tags'Elab_Body;
         E051 := True;
      end if;
      if not E049 then
         Ada.Streams'Elab_Spec;
         E049 := True;
      end if;
      if not E034 then
         System.Soft_Links'Elab_Body;
         E034 := True;
      end if;
      if not E030 then
         System.Secondary_Stack'Elab_Body;
         E030 := True;
      end if;
      if not E171 then
         Ada.Calendar.Delays'Elab_Body;
         E171 := True;
      end if;
      E013 := True;
      if not E059 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E059 := True;
      if not E137 then
         System.Tasking.Debug'Elab_Spec;
      end if;
      if not E015 then
         Ada.Exceptions'Elab_Body;
         E015 := True;
      end if;
      if not E131 then
         System.Task_Primitives.Operations'Elab_Body;
         E131 := True;
      end if;
      if not E137 then
         System.Tasking.Debug'Elab_Body;
         E137 := True;
      end if;
      if not E124 then
         System.Tasking'Elab_Body;
         E124 := True;
      end if;
      if not E107 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      E107 := True;
      if not E061 then
         System.Finalization_Implementation'Elab_Spec;
      end if;
      if not E061 then
         System.Finalization_Implementation'Elab_Body;
         E061 := True;
      end if;
      if not E057 then
         Ada.Finalization'Elab_Spec;
      end if;
      E057 := True;
      if not E072 then
         Ada.Finalization.List_Controller'Elab_Spec;
      end if;
      E072 := True;
      if not E103 then
         Ada.Strings.Unbounded'Elab_Spec;
      end if;
      E103 := True;
      if not E070 then
         System.File_Control_Block'Elab_Spec;
         E070 := True;
      end if;
      if not E055 then
         System.File_Io'Elab_Body;
         E055 := True;
      end if;
      if not E048 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if not E048 then
         Ada.Text_Io'Elab_Body;
         E048 := True;
      end if;
      if not E147 then
         System.Tasking.Task_Attributes'Elab_Spec;
      end if;
      E147 := True;
      if not E145 then
         System.Tasking.Initialization'Elab_Body;
         E145 := True;
      end if;
      if not E153 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E153 := True;
      if not E157 then
         System.Tasking.Queuing'Elab_Body;
         E157 := True;
      end if;
      if not E155 then
         System.Tasking.Protected_Objects.Operations'Elab_Body;
         E155 := True;
      end if;
      if not E141 then
         System.Tasking.Rendezvous'Elab_Body;
         E141 := True;
      end if;
      if not E161 then
         System.Tasking.Stages'Elab_Body;
         E161 := True;
      end if;
      if not E115 then
         Karten'Elab_Spec;
      end if;
      E115 := True;
      E117 := True;
      E120 := True;
      if not E004 then
         BIOS'ELAB_SPEC;
         E004 := True;
      end if;
      E173 := True;
      E169 := True;
      if not E010 then
         Hardware'Elab_Spec;
      end if;
      if not E010 then
         Hardware'Elab_Body;
         E010 := True;
      end if;
      E006 := True;
      E008 := True;
      if not E167 then
         Leser'Elab_Body;
         E167 := True;
      end if;
      E165 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_seriell");

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
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/karten.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/ustrings.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/zeilen.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/bios.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/kopiere.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/kommando.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/hardware.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/ausgabe.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/drucker.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/leser.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/eingabe.o
   --   build/Seriell.build/Seriell.build/Objects-normal/ppc/seriell.o
   --   -Lbuild/Seriell.build/Seriell.build/Objects-normal/ppc/
   --   -L/Volumes/Users/schebefn/Development/AppleProjectBuilder/Ada95/Seriell/build/include/
   --   -L/usr/lib/ada/
   --   -L/usr/local/Bindings/Frameworks/
   --   -L/usr/local/Bindings/ncurses/
   --   -static
   --   -lgnarl
   --   -lgnat
-- END Object file/option list   

end ada_main;
