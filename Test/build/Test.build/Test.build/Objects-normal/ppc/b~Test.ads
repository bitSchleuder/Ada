with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 3.3 20030304 (Apple Computer, Inc. build 1495)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test" & Ascii.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#58a7c6d9#;
   u00002 : constant Version_32 := 16#612a2371#;
   u00003 : constant Version_32 := 16#6d0b25e7#;
   u00004 : constant Version_32 := 16#a0108083#;
   u00005 : constant Version_32 := 16#7b5cfc02#;
   u00006 : constant Version_32 := 16#79065dee#;
   u00007 : constant Version_32 := 16#3e1cfe93#;
   u00008 : constant Version_32 := 16#24e2bbfc#;
   u00009 : constant Version_32 := 16#6380ea48#;
   u00010 : constant Version_32 := 16#c5fbb2c4#;
   u00011 : constant Version_32 := 16#dc301c49#;
   u00012 : constant Version_32 := 16#5b48a12b#;
   u00013 : constant Version_32 := 16#58c090c8#;
   u00014 : constant Version_32 := 16#7fcb6fc9#;
   u00015 : constant Version_32 := 16#2c01a59d#;
   u00016 : constant Version_32 := 16#eb251ef2#;
   u00017 : constant Version_32 := 16#bbfe2e15#;
   u00018 : constant Version_32 := 16#a7e20c82#;
   u00019 : constant Version_32 := 16#61995b55#;
   u00020 : constant Version_32 := 16#a4e49d90#;
   u00021 : constant Version_32 := 16#9df65186#;
   u00022 : constant Version_32 := 16#7e6eaca1#;
   u00023 : constant Version_32 := 16#7e728ea5#;
   u00024 : constant Version_32 := 16#e1ec3288#;
   u00025 : constant Version_32 := 16#6a15dc3d#;
   u00026 : constant Version_32 := 16#85d0fac3#;
   u00027 : constant Version_32 := 16#69431a73#;
   u00028 : constant Version_32 := 16#9a0b3df4#;
   u00029 : constant Version_32 := 16#1233df2c#;
   u00030 : constant Version_32 := 16#4d4e8ee2#;
   u00031 : constant Version_32 := 16#6d0594b4#;
   u00032 : constant Version_32 := 16#7bf62c37#;
   u00033 : constant Version_32 := 16#4475095f#;
   u00034 : constant Version_32 := 16#819ffa6c#;
   u00035 : constant Version_32 := 16#6e859da6#;
   u00036 : constant Version_32 := 16#ddd87ca5#;
   u00037 : constant Version_32 := 16#4d29cc41#;
   u00038 : constant Version_32 := 16#396698d9#;
   u00039 : constant Version_32 := 16#4fa6b066#;
   u00040 : constant Version_32 := 16#dec8b4cc#;
   u00041 : constant Version_32 := 16#0af0a97f#;
   u00042 : constant Version_32 := 16#2707dc21#;
   u00043 : constant Version_32 := 16#fef00ae4#;
   u00044 : constant Version_32 := 16#11da250f#;
   u00045 : constant Version_32 := 16#ca730d4e#;
   u00046 : constant Version_32 := 16#9d5e2b8a#;
   u00047 : constant Version_32 := 16#a014984f#;
   u00048 : constant Version_32 := 16#cf0ab27e#;
   u00049 : constant Version_32 := 16#467fc82b#;
   u00050 : constant Version_32 := 16#de189fd2#;
   u00051 : constant Version_32 := 16#41941407#;
   u00052 : constant Version_32 := 16#753e9209#;
   u00053 : constant Version_32 := 16#5ee59619#;
   u00054 : constant Version_32 := 16#861e406a#;
   u00055 : constant Version_32 := 16#ffad3e68#;
   u00056 : constant Version_32 := 16#29e5afbc#;
   u00057 : constant Version_32 := 16#5b6ae8d4#;
   u00058 : constant Version_32 := 16#56ba779b#;

   pragma Export (C, u00001, "testB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__text_ioB");
   pragma Export (C, u00006, "ada__text_ioS");
   pragma Export (C, u00007, "ada__exceptionsB");
   pragma Export (C, u00008, "ada__exceptionsS");
   pragma Export (C, u00009, "gnatS");
   pragma Export (C, u00010, "gnat__heap_sort_aB");
   pragma Export (C, u00011, "gnat__heap_sort_aS");
   pragma Export (C, u00012, "systemS");
   pragma Export (C, u00013, "system__exception_tableB");
   pragma Export (C, u00014, "system__exception_tableS");
   pragma Export (C, u00015, "gnat__htableB");
   pragma Export (C, u00016, "gnat__htableS");
   pragma Export (C, u00017, "system__exceptionsS");
   pragma Export (C, u00018, "system__machine_state_operationsB");
   pragma Export (C, u00019, "system__machine_state_operationsS");
   pragma Export (C, u00020, "system__storage_elementsB");
   pragma Export (C, u00021, "system__storage_elementsS");
   pragma Export (C, u00022, "system__secondary_stackB");
   pragma Export (C, u00023, "system__secondary_stackS");
   pragma Export (C, u00024, "system__parametersB");
   pragma Export (C, u00025, "system__parametersS");
   pragma Export (C, u00026, "system__soft_linksB");
   pragma Export (C, u00027, "system__soft_linksS");
   pragma Export (C, u00028, "system__stack_checkingB");
   pragma Export (C, u00029, "system__stack_checkingS");
   pragma Export (C, u00030, "system__tracebackB");
   pragma Export (C, u00031, "system__tracebackS");
   pragma Export (C, u00032, "ada__streamsS");
   pragma Export (C, u00033, "ada__tagsB");
   pragma Export (C, u00034, "ada__tagsS");
   pragma Export (C, u00035, "interfacesS");
   pragma Export (C, u00036, "interfaces__c_streamsB");
   pragma Export (C, u00037, "interfaces__c_streamsS");
   pragma Export (C, u00038, "system__file_ioB");
   pragma Export (C, u00039, "system__file_ioS");
   pragma Export (C, u00040, "ada__finalizationB");
   pragma Export (C, u00041, "ada__finalizationS");
   pragma Export (C, u00042, "system__finalization_rootB");
   pragma Export (C, u00043, "system__finalization_rootS");
   pragma Export (C, u00044, "system__finalization_implementationB");
   pragma Export (C, u00045, "system__finalization_implementationS");
   pragma Export (C, u00046, "system__string_ops_concat_3B");
   pragma Export (C, u00047, "system__string_ops_concat_3S");
   pragma Export (C, u00048, "system__string_opsB");
   pragma Export (C, u00049, "system__string_opsS");
   pragma Export (C, u00050, "system__stream_attributesB");
   pragma Export (C, u00051, "system__stream_attributesS");
   pragma Export (C, u00052, "ada__io_exceptionsS");
   pragma Export (C, u00053, "system__unsigned_typesS");
   pragma Export (C, u00054, "system__file_control_blockS");
   pragma Export (C, u00055, "ada__finalization__list_controllerB");
   pragma Export (C, u00056, "ada__finalization__list_controllerS");
   pragma Export (C, u00057, "system__memoryB");
   pragma Export (C, u00058, "system__memoryS");

   -- BEGIN ELABORATION ORDER
   -- ada (spec)
   -- gnat (spec)
   -- gnat.heap_sort_a (spec)
   -- gnat.heap_sort_a (body)
   -- gnat.htable (spec)
   -- gnat.htable (body)
   -- interfaces (spec)
   -- system (spec)
   -- system.parameters (spec)
   -- system.parameters (body)
   -- interfaces.c_streams (spec)
   -- interfaces.c_streams (body)
   -- system.standard_library (spec)
   -- ada.exceptions (spec)
   -- system.exception_table (spec)
   -- system.exception_table (body)
   -- ada.io_exceptions (spec)
   -- system.exceptions (spec)
   -- system.storage_elements (spec)
   -- system.storage_elements (body)
   -- system.machine_state_operations (spec)
   -- system.machine_state_operations (body)
   -- system.secondary_stack (spec)
   -- ada.tags (spec)
   -- ada.tags (body)
   -- ada.streams (spec)
   -- system.stack_checking (spec)
   -- system.soft_links (spec)
   -- system.soft_links (body)
   -- system.stack_checking (body)
   -- system.secondary_stack (body)
   -- system.finalization_root (spec)
   -- system.finalization_root (body)
   -- system.memory (spec)
   -- system.memory (body)
   -- system.standard_library (body)
   -- system.string_ops (spec)
   -- system.string_ops (body)
   -- system.string_ops_concat_3 (spec)
   -- system.string_ops_concat_3 (body)
   -- system.traceback (spec)
   -- system.traceback (body)
   -- ada.exceptions (body)
   -- system.unsigned_types (spec)
   -- system.stream_attributes (spec)
   -- system.stream_attributes (body)
   -- system.finalization_implementation (spec)
   -- system.finalization_implementation (body)
   -- ada.finalization (spec)
   -- ada.finalization (body)
   -- ada.finalization.list_controller (spec)
   -- ada.finalization.list_controller (body)
   -- system.file_control_block (spec)
   -- system.file_io (spec)
   -- system.file_io (body)
   -- ada.text_io (spec)
   -- ada.text_io (body)
   -- test (body)
   -- END ELABORATION ORDER

end ada_main;
