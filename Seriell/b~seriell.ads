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
                    "GNAT Version: 5.00w (20010924)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_seriell" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#3ca104c1#;
   u00002 : constant Version_32 := 16#c0e50ac3#;
   u00003 : constant Version_32 := 16#6d0b25e7#;
   u00004 : constant Version_32 := 16#fafb7731#;
   u00005 : constant Version_32 := 16#cb322e3b#;
   u00006 : constant Version_32 := 16#1e55b663#;
   u00007 : constant Version_32 := 16#98b45b56#;
   u00008 : constant Version_32 := 16#7934aa6a#;
   u00009 : constant Version_32 := 16#578505b5#;
   u00010 : constant Version_32 := 16#2dfd70eb#;
   u00011 : constant Version_32 := 16#a0108083#;
   u00012 : constant Version_32 := 16#b5ef5a33#;
   u00013 : constant Version_32 := 16#2311df51#;
   u00014 : constant Version_32 := 16#98bed957#;
   u00015 : constant Version_32 := 16#20d65858#;
   u00016 : constant Version_32 := 16#6380ea48#;
   u00017 : constant Version_32 := 16#c5fbb2c4#;
   u00018 : constant Version_32 := 16#dc301c49#;
   u00019 : constant Version_32 := 16#5f7c428f#;
   u00020 : constant Version_32 := 16#58c090c8#;
   u00021 : constant Version_32 := 16#7bff8c6d#;
   u00022 : constant Version_32 := 16#2c01a59d#;
   u00023 : constant Version_32 := 16#eb251ef2#;
   u00024 : constant Version_32 := 16#bbfe2e15#;
   u00025 : constant Version_32 := 16#afcd5e0c#;
   u00026 : constant Version_32 := 16#65adb8f1#;
   u00027 : constant Version_32 := 16#a4e49d90#;
   u00028 : constant Version_32 := 16#99c2b222#;
   u00029 : constant Version_32 := 16#dedafdd0#;
   u00030 : constant Version_32 := 16#7a466d01#;
   u00031 : constant Version_32 := 16#38b39edd#;
   u00032 : constant Version_32 := 16#b77e93cc#;
   u00033 : constant Version_32 := 16#fd0fec16#;
   u00034 : constant Version_32 := 16#ccb8d065#;
   u00035 : constant Version_32 := 16#31fdd957#;
   u00036 : constant Version_32 := 16#16073c88#;
   u00037 : constant Version_32 := 16#4d4e8ee2#;
   u00038 : constant Version_32 := 16#69317710#;
   u00039 : constant Version_32 := 16#6e859da6#;
   u00040 : constant Version_32 := 16#5993cf4c#;
   u00041 : constant Version_32 := 16#8f9db415#;
   u00042 : constant Version_32 := 16#350327a4#;
   u00043 : constant Version_32 := 16#6b2fb776#;
   u00044 : constant Version_32 := 16#48677a17#;
   u00045 : constant Version_32 := 16#58c81565#;
   u00046 : constant Version_32 := 16#600f369a#;
   u00047 : constant Version_32 := 16#53b374d1#;
   u00048 : constant Version_32 := 16#3631d409#;
   u00049 : constant Version_32 := 16#30f54674#;
   u00050 : constant Version_32 := 16#3c7217eb#;
   u00051 : constant Version_32 := 16#85ab19c8#;
   u00052 : constant Version_32 := 16#cf1b6eec#;
   u00053 : constant Version_32 := 16#9dcf6698#;
   u00054 : constant Version_32 := 16#5a728517#;
   u00055 : constant Version_32 := 16#5951418b#;
   u00056 : constant Version_32 := 16#78cccf5d#;
   u00057 : constant Version_32 := 16#0af0a97f#;
   u00058 : constant Version_32 := 16#2707dc21#;
   u00059 : constant Version_32 := 16#b1c78303#;
   u00060 : constant Version_32 := 16#f489f239#;
   u00061 : constant Version_32 := 16#ce47eeea#;
   u00062 : constant Version_32 := 16#9d5e2b8a#;
   u00063 : constant Version_32 := 16#a4207beb#;
   u00064 : constant Version_32 := 16#cf0ab27e#;
   u00065 : constant Version_32 := 16#424b2b8f#;
   u00066 : constant Version_32 := 16#951bf591#;
   u00067 : constant Version_32 := 16#0a977e44#;
   u00068 : constant Version_32 := 16#753e9209#;
   u00069 : constant Version_32 := 16#5ad175bd#;
   u00070 : constant Version_32 := 16#dbeadbc4#;
   u00071 : constant Version_32 := 16#ffad3e68#;
   u00072 : constant Version_32 := 16#29e5afbc#;
   u00073 : constant Version_32 := 16#fff3c386#;
   u00074 : constant Version_32 := 16#2eb80aec#;
   u00075 : constant Version_32 := 16#8712c335#;
   u00076 : constant Version_32 := 16#6ed56e9d#;
   u00077 : constant Version_32 := 16#3acc2294#;
   u00078 : constant Version_32 := 16#05c1856f#;
   u00079 : constant Version_32 := 16#70f6a786#;
   u00080 : constant Version_32 := 16#aec6c6ec#;
   u00081 : constant Version_32 := 16#a51734bc#;
   u00082 : constant Version_32 := 16#9e54b72a#;
   u00083 : constant Version_32 := 16#f02ff885#;
   u00084 : constant Version_32 := 16#06da9b9e#;
   u00085 : constant Version_32 := 16#2909e352#;
   u00086 : constant Version_32 := 16#fcbebe28#;
   u00087 : constant Version_32 := 16#2b9118f5#;
   u00088 : constant Version_32 := 16#804c63d5#;
   u00089 : constant Version_32 := 16#5fde144c#;
   u00090 : constant Version_32 := 16#88191e38#;
   u00091 : constant Version_32 := 16#9eef795c#;
   u00092 : constant Version_32 := 16#475d2a06#;
   u00093 : constant Version_32 := 16#47a468aa#;
   u00094 : constant Version_32 := 16#afb0082f#;
   u00095 : constant Version_32 := 16#1e439027#;
   u00096 : constant Version_32 := 16#f3d435e7#;
   u00097 : constant Version_32 := 16#4824fe2c#;
   u00098 : constant Version_32 := 16#4ea68158#;
   u00099 : constant Version_32 := 16#23e9e737#;
   u00100 : constant Version_32 := 16#53e79b52#;
   u00101 : constant Version_32 := 16#c4504387#;
   u00102 : constant Version_32 := 16#c6d83e9e#;
   u00103 : constant Version_32 := 16#83fe2908#;
   u00104 : constant Version_32 := 16#a757981e#;
   u00105 : constant Version_32 := 16#a09484f4#;
   u00106 : constant Version_32 := 16#7f70d6fb#;
   u00107 : constant Version_32 := 16#841ddc3f#;
   u00108 : constant Version_32 := 16#b73aa381#;
   u00109 : constant Version_32 := 16#0c033dfd#;
   u00110 : constant Version_32 := 16#060f352a#;
   u00111 : constant Version_32 := 16#a0be30a8#;
   u00112 : constant Version_32 := 16#6b03b68b#;
   u00113 : constant Version_32 := 16#ebae4dd3#;
   u00114 : constant Version_32 := 16#b5d41ac5#;
   u00115 : constant Version_32 := 16#91103c3d#;
   u00116 : constant Version_32 := 16#3b063859#;
   u00117 : constant Version_32 := 16#84a776f6#;
   u00118 : constant Version_32 := 16#b380ca7b#;
   u00119 : constant Version_32 := 16#9bd69f1e#;
   u00120 : constant Version_32 := 16#11799b63#;
   u00121 : constant Version_32 := 16#ba71e5f8#;
   u00122 : constant Version_32 := 16#6e08b8b8#;
   u00123 : constant Version_32 := 16#05d45d4d#;
   u00124 : constant Version_32 := 16#7a798a9e#;
   u00125 : constant Version_32 := 16#33535e93#;
   u00126 : constant Version_32 := 16#c1f9e42b#;
   u00127 : constant Version_32 := 16#8af4ba6c#;
   u00128 : constant Version_32 := 16#569d397f#;
   u00129 : constant Version_32 := 16#7870b2cd#;
   u00130 : constant Version_32 := 16#2fe4dba3#;
   u00131 : constant Version_32 := 16#a7c39ad5#;
   u00132 : constant Version_32 := 16#ff6fd84a#;
   u00133 : constant Version_32 := 16#92c8e9f0#;
   u00134 : constant Version_32 := 16#fa96d3ca#;
   u00135 : constant Version_32 := 16#5d958e66#;
   u00136 : constant Version_32 := 16#797c06ae#;
   u00137 : constant Version_32 := 16#d78e0118#;
   u00138 : constant Version_32 := 16#0d4a8bcc#;
   u00139 : constant Version_32 := 16#7f1f5f41#;
   u00140 : constant Version_32 := 16#334753a3#;
   u00141 : constant Version_32 := 16#e7d439c7#;
   u00142 : constant Version_32 := 16#fd54b601#;
   u00143 : constant Version_32 := 16#0fb58249#;
   u00144 : constant Version_32 := 16#199913c5#;
   u00145 : constant Version_32 := 16#1d468c09#;
   u00146 : constant Version_32 := 16#680f8f28#;
   u00147 : constant Version_32 := 16#b1e9c44e#;
   u00148 : constant Version_32 := 16#d1c9cb2f#;
   u00149 : constant Version_32 := 16#72971b8f#;
   u00150 : constant Version_32 := 16#cfbeb3fc#;
   u00151 : constant Version_32 := 16#3ff3c931#;
   u00152 : constant Version_32 := 16#f8be118a#;
   u00153 : constant Version_32 := 16#8b61f357#;
   u00154 : constant Version_32 := 16#d70565e8#;
   u00155 : constant Version_32 := 16#9ef4abc8#;
   u00156 : constant Version_32 := 16#ef232fa4#;
   u00157 : constant Version_32 := 16#c1cdc271#;
   u00158 : constant Version_32 := 16#27b554f1#;
   u00159 : constant Version_32 := 16#b5a7d2e5#;
   u00160 : constant Version_32 := 16#ea788095#;
   u00161 : constant Version_32 := 16#4f87f237#;
   u00162 : constant Version_32 := 16#d2fa0bc0#;
   u00163 : constant Version_32 := 16#f5c9a5bc#;
   u00164 : constant Version_32 := 16#07e5c213#;
   u00165 : constant Version_32 := 16#18feb40b#;
   u00166 : constant Version_32 := 16#4451c52b#;
   u00167 : constant Version_32 := 16#10623637#;
   u00168 : constant Version_32 := 16#7aef7653#;
   u00169 : constant Version_32 := 16#39df5ed0#;
   u00170 : constant Version_32 := 16#b078eb0a#;
   u00171 : constant Version_32 := 16#56f69050#;
   u00172 : constant Version_32 := 16#0d5c896c#;
   u00173 : constant Version_32 := 16#db93909e#;
   u00174 : constant Version_32 := 16#eac08eae#;
   u00175 : constant Version_32 := 16#528e943f#;

   pragma Export (C, u00001, "seriellB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "biosS");
   pragma Export (C, u00005, "ausgabeB");
   pragma Export (C, u00006, "ausgabeS");
   pragma Export (C, u00007, "druckerB");
   pragma Export (C, u00008, "druckerS");
   pragma Export (C, u00009, "hardwareB");
   pragma Export (C, u00010, "hardwareS");
   pragma Export (C, u00011, "adaS");
   pragma Export (C, u00012, "ada__calendarB");
   pragma Export (C, u00013, "ada__calendarS");
   pragma Export (C, u00014, "ada__exceptionsB");
   pragma Export (C, u00015, "ada__exceptionsS");
   pragma Export (C, u00016, "gnatS");
   pragma Export (C, u00017, "gnat__heap_sort_aB");
   pragma Export (C, u00018, "gnat__heap_sort_aS");
   pragma Export (C, u00019, "systemS");
   pragma Export (C, u00020, "system__exception_tableB");
   pragma Export (C, u00021, "system__exception_tableS");
   pragma Export (C, u00022, "gnat__htableB");
   pragma Export (C, u00023, "gnat__htableS");
   pragma Export (C, u00024, "system__exceptionsS");
   pragma Export (C, u00025, "system__machine_state_operationsB");
   pragma Export (C, u00026, "system__machine_state_operationsS");
   pragma Export (C, u00027, "system__storage_elementsB");
   pragma Export (C, u00028, "system__storage_elementsS");
   pragma Export (C, u00029, "system__secondary_stackB");
   pragma Export (C, u00030, "system__secondary_stackS");
   pragma Export (C, u00031, "system__parametersB");
   pragma Export (C, u00032, "system__parametersS");
   pragma Export (C, u00033, "system__soft_linksB");
   pragma Export (C, u00034, "system__soft_linksS");
   pragma Export (C, u00035, "system__stack_checkingB");
   pragma Export (C, u00036, "system__stack_checkingS");
   pragma Export (C, u00037, "system__tracebackB");
   pragma Export (C, u00038, "system__tracebackS");
   pragma Export (C, u00039, "interfacesS");
   pragma Export (C, u00040, "system__arith_64B");
   pragma Export (C, u00041, "system__arith_64S");
   pragma Export (C, u00042, "gnat__exceptionsS");
   pragma Export (C, u00043, "system__os_primitivesB");
   pragma Export (C, u00044, "system__os_primitivesS");
   pragma Export (C, u00045, "ada__integer_text_ioB");
   pragma Export (C, u00046, "ada__integer_text_ioS");
   pragma Export (C, u00047, "ada__text_ioB");
   pragma Export (C, u00048, "ada__text_ioS");
   pragma Export (C, u00049, "ada__streamsS");
   pragma Export (C, u00050, "ada__tagsB");
   pragma Export (C, u00051, "ada__tagsS");
   pragma Export (C, u00052, "interfaces__c_streamsB");
   pragma Export (C, u00053, "interfaces__c_streamsS");
   pragma Export (C, u00054, "system__file_ioB");
   pragma Export (C, u00055, "system__file_ioS");
   pragma Export (C, u00056, "ada__finalizationB");
   pragma Export (C, u00057, "ada__finalizationS");
   pragma Export (C, u00058, "system__finalization_rootB");
   pragma Export (C, u00059, "system__finalization_rootS");
   pragma Export (C, u00060, "system__finalization_implementationB");
   pragma Export (C, u00061, "system__finalization_implementationS");
   pragma Export (C, u00062, "system__string_ops_concat_3B");
   pragma Export (C, u00063, "system__string_ops_concat_3S");
   pragma Export (C, u00064, "system__string_opsB");
   pragma Export (C, u00065, "system__string_opsS");
   pragma Export (C, u00066, "system__stream_attributesB");
   pragma Export (C, u00067, "system__stream_attributesS");
   pragma Export (C, u00068, "ada__io_exceptionsS");
   pragma Export (C, u00069, "system__unsigned_typesS");
   pragma Export (C, u00070, "system__file_control_blockS");
   pragma Export (C, u00071, "ada__finalization__list_controllerB");
   pragma Export (C, u00072, "ada__finalization__list_controllerS");
   pragma Export (C, u00073, "ada__text_io__integer_auxB");
   pragma Export (C, u00074, "ada__text_io__integer_auxS");
   pragma Export (C, u00075, "ada__text_io__generic_auxB");
   pragma Export (C, u00076, "ada__text_io__generic_auxS");
   pragma Export (C, u00077, "system__img_biuB");
   pragma Export (C, u00078, "system__img_biuS");
   pragma Export (C, u00079, "system__img_intB");
   pragma Export (C, u00080, "system__img_intS");
   pragma Export (C, u00081, "system__img_llbB");
   pragma Export (C, u00082, "system__img_llbS");
   pragma Export (C, u00083, "system__img_lliB");
   pragma Export (C, u00084, "system__img_lliS");
   pragma Export (C, u00085, "system__img_llwB");
   pragma Export (C, u00086, "system__img_llwS");
   pragma Export (C, u00087, "system__img_wiuB");
   pragma Export (C, u00088, "system__img_wiuS");
   pragma Export (C, u00089, "system__val_intB");
   pragma Export (C, u00090, "system__val_intS");
   pragma Export (C, u00091, "system__val_unsB");
   pragma Export (C, u00092, "system__val_unsS");
   pragma Export (C, u00093, "system__val_utilB");
   pragma Export (C, u00094, "system__val_utilS");
   pragma Export (C, u00095, "gnat__case_utilB");
   pragma Export (C, u00096, "gnat__case_utilS");
   pragma Export (C, u00097, "system__val_lliB");
   pragma Export (C, u00098, "system__val_lliS");
   pragma Export (C, u00099, "system__val_lluB");
   pragma Export (C, u00100, "system__val_lluS");
   pragma Export (C, u00101, "ada__stringsS");
   pragma Export (C, u00102, "ada__strings__unboundedB");
   pragma Export (C, u00103, "ada__strings__unboundedS");
   pragma Export (C, u00104, "ada__strings__fixedB");
   pragma Export (C, u00105, "ada__strings__fixedS");
   pragma Export (C, u00106, "ada__strings__mapsB");
   pragma Export (C, u00107, "ada__strings__mapsS");
   pragma Export (C, u00108, "system__bit_opsB");
   pragma Export (C, u00109, "system__bit_opsS");
   pragma Export (C, u00110, "ada__charactersS");
   pragma Export (C, u00111, "ada__characters__latin_1S");
   pragma Export (C, u00112, "ada__strings__searchB");
   pragma Export (C, u00113, "ada__strings__searchS");
   pragma Export (C, u00114, "kartenB");
   pragma Export (C, u00115, "kartenS");
   pragma Export (C, u00116, "ustringsB");
   pragma Export (C, u00117, "ustringsS");
   pragma Export (C, u00118, "text_ioS");
   pragma Export (C, u00119, "zeilenB");
   pragma Export (C, u00120, "zeilenS");
   pragma Export (C, u00121, "system__task_infoB");
   pragma Export (C, u00122, "system__task_infoS");
   pragma Export (C, u00123, "system__taskingB");
   pragma Export (C, u00124, "system__taskingS");
   pragma Export (C, u00125, "system__task_primitivesS");
   pragma Export (C, u00126, "system__os_interfaceB");
   pragma Export (C, u00127, "system__os_interfaceS");
   pragma Export (C, u00128, "interfaces__cB");
   pragma Export (C, u00129, "interfaces__cS");
   pragma Export (C, u00130, "system__task_primitives__operationsB");
   pragma Export (C, u00131, "system__task_primitives__operationsS");
   pragma Export (C, u00132, "system__interrupt_managementB");
   pragma Export (C, u00133, "system__interrupt_managementS");
   pragma Export (C, u00134, "system__interrupt_management__operationsB");
   pragma Export (C, u00135, "system__interrupt_management__operationsS");
   pragma Export (C, u00136, "system__tasking__debugB");
   pragma Export (C, u00137, "system__tasking__debugS");
   pragma Export (C, u00138, "system__img_enumB");
   pragma Export (C, u00139, "system__img_enumS");
   pragma Export (C, u00140, "system__tasking__rendezvousB");
   pragma Export (C, u00141, "system__tasking__rendezvousS");
   pragma Export (C, u00142, "system__tasking__entry_callsB");
   pragma Export (C, u00143, "system__tasking__entry_callsS");
   pragma Export (C, u00144, "system__tasking__initializationB");
   pragma Export (C, u00145, "system__tasking__initializationS");
   pragma Export (C, u00146, "system__tasking__task_attributesB");
   pragma Export (C, u00147, "system__tasking__task_attributesS");
   pragma Export (C, u00148, "system__exp_unsB");
   pragma Export (C, u00149, "system__exp_unsS");
   pragma Export (C, u00150, "system__tasking__protected_objectsB");
   pragma Export (C, u00151, "system__tasking__protected_objectsS");
   pragma Export (C, u00152, "system__tasking__protected_objects__entriesB");
   pragma Export (C, u00153, "system__tasking__protected_objects__entriesS");
   pragma Export (C, u00154, "system__tasking__protected_objects__operationsB");
   pragma Export (C, u00155, "system__tasking__protected_objects__operationsS");
   pragma Export (C, u00156, "system__tasking__queuingB");
   pragma Export (C, u00157, "system__tasking__queuingS");
   pragma Export (C, u00158, "system__tasking__utilitiesB");
   pragma Export (C, u00159, "system__tasking__utilitiesS");
   pragma Export (C, u00160, "system__tasking__stagesB");
   pragma Export (C, u00161, "system__tasking__stagesS");
   pragma Export (C, u00162, "system__address_imageB");
   pragma Export (C, u00163, "system__address_imageS");
   pragma Export (C, u00164, "eingabeB");
   pragma Export (C, u00165, "eingabeS");
   pragma Export (C, u00166, "leserB");
   pragma Export (C, u00167, "leserS");
   pragma Export (C, u00168, "kommandoB");
   pragma Export (C, u00169, "kommandoS");
   pragma Export (C, u00170, "ada__calendar__delaysB");
   pragma Export (C, u00171, "ada__calendar__delaysS");
   pragma Export (C, u00172, "kopiereB");
   pragma Export (C, u00173, "kopiereS");
   pragma Export (C, u00174, "system__memoryB");
   pragma Export (C, u00175, "system__memoryS");

   -- BEGIN ELABORATION ORDER
   -- ada (spec)
   -- ada.characters (spec)
   -- ada.characters.latin_1 (spec)
   -- gnat (spec)
   -- gnat.case_util (spec)
   -- gnat.case_util (body)
   -- gnat.exceptions (spec)
   -- gnat.heap_sort_a (spec)
   -- gnat.heap_sort_a (body)
   -- gnat.htable (spec)
   -- gnat.htable (body)
   -- interfaces (spec)
   -- system (spec)
   -- system.address_image (spec)
   -- system.arith_64 (spec)
   -- system.arith_64 (body)
   -- system.bit_ops (spec)
   -- system.img_enum (spec)
   -- system.img_int (spec)
   -- system.img_lli (spec)
   -- system.os_primitives (spec)
   -- system.os_primitives (body)
   -- system.parameters (spec)
   -- system.parameters (body)
   -- interfaces.c_streams (spec)
   -- interfaces.c_streams (body)
   -- system.standard_library (spec)
   -- ada.exceptions (spec)
   -- system.exception_table (spec)
   -- system.exception_table (body)
   -- ada.calendar (spec)
   -- ada.calendar.delays (spec)
   -- ada.io_exceptions (spec)
   -- ada.strings (spec)
   -- interfaces.c (spec)
   -- system.exceptions (spec)
   -- system.os_interface (spec)
   -- system.os_interface (body)
   -- system.interrupt_management (spec)
   -- system.interrupt_management (body)
   -- system.interrupt_management.operations (spec)
   -- system.storage_elements (spec)
   -- system.storage_elements (body)
   -- system.interrupt_management.operations (body)
   -- system.machine_state_operations (spec)
   -- system.machine_state_operations (body)
   -- system.secondary_stack (spec)
   -- interfaces.c (body)
   -- system.img_lli (body)
   -- system.img_int (body)
   -- system.img_enum (body)
   -- system.address_image (body)
   -- ada.tags (spec)
   -- ada.tags (body)
   -- ada.streams (spec)
   -- system.stack_checking (spec)
   -- system.soft_links (spec)
   -- system.soft_links (body)
   -- system.stack_checking (body)
   -- system.secondary_stack (body)
   -- ada.calendar.delays (body)
   -- ada.calendar (body)
   -- system.finalization_root (spec)
   -- system.finalization_root (body)
   -- system.memory (spec)
   -- system.memory (body)
   -- system.standard_library (body)
   -- system.string_ops (spec)
   -- system.string_ops (body)
   -- system.string_ops_concat_3 (spec)
   -- system.string_ops_concat_3 (body)
   -- system.task_info (spec)
   -- system.task_info (body)
   -- system.task_primitives (spec)
   -- system.tasking (spec)
   -- system.tasking.debug (spec)
   -- system.tasking.entry_calls (spec)
   -- system.tasking.initialization (spec)
   -- system.tasking.utilities (spec)
   -- system.traceback (spec)
   -- system.traceback (body)
   -- ada.exceptions (body)
   -- system.task_primitives.operations (spec)
   -- system.task_primitives.operations (body)
   -- system.tasking.debug (body)
   -- system.tasking (body)
   -- system.tasking.protected_objects (spec)
   -- system.tasking.protected_objects (body)
   -- system.unsigned_types (spec)
   -- system.bit_ops (body)
   -- ada.strings.maps (spec)
   -- ada.strings.maps (body)
   -- ada.strings.fixed (spec)
   -- ada.strings.search (spec)
   -- ada.strings.search (body)
   -- ada.strings.fixed (body)
   -- system.exp_uns (spec)
   -- system.exp_uns (body)
   -- system.img_biu (spec)
   -- system.img_biu (body)
   -- system.img_llb (spec)
   -- system.img_llb (body)
   -- system.img_llw (spec)
   -- system.img_llw (body)
   -- system.img_wiu (spec)
   -- system.img_wiu (body)
   -- system.stream_attributes (spec)
   -- system.stream_attributes (body)
   -- system.finalization_implementation (spec)
   -- system.finalization_implementation (body)
   -- ada.finalization (spec)
   -- ada.finalization (body)
   -- ada.finalization.list_controller (spec)
   -- ada.finalization.list_controller (body)
   -- ada.strings.unbounded (spec)
   -- ada.strings.unbounded (body)
   -- system.file_control_block (spec)
   -- system.file_io (spec)
   -- system.file_io (body)
   -- ada.text_io (spec)
   -- ada.text_io (body)
   -- ada.text_io.generic_aux (spec)
   -- ada.text_io.generic_aux (body)
   -- ada.text_io.integer_aux (spec)
   -- ada.integer_text_io (spec)
   -- ada.integer_text_io (body)
   -- system.tasking.task_attributes (spec)
   -- system.tasking.task_attributes (body)
   -- system.tasking.initialization (body)
   -- system.tasking.protected_objects.entries (spec)
   -- system.tasking.protected_objects.entries (body)
   -- system.tasking.queuing (spec)
   -- system.tasking.queuing (body)
   -- system.tasking.utilities (body)
   -- system.tasking.rendezvous (spec)
   -- system.tasking.protected_objects.operations (spec)
   -- system.tasking.protected_objects.operations (body)
   -- system.tasking.rendezvous (body)
   -- system.tasking.entry_calls (body)
   -- system.tasking.stages (spec)
   -- system.tasking.stages (body)
   -- system.val_int (spec)
   -- system.val_lli (spec)
   -- ada.text_io.integer_aux (body)
   -- system.val_llu (spec)
   -- system.val_uns (spec)
   -- system.val_util (spec)
   -- system.val_util (body)
   -- system.val_uns (body)
   -- system.val_llu (body)
   -- system.val_lli (body)
   -- system.val_int (body)
   -- text_io (spec)
   -- karten (spec)
   -- karten (body)
   -- eingabe (spec)
   -- kommando (spec)
   -- kopiere (spec)
   -- leser (spec)
   -- ustrings (spec)
   -- ustrings (body)
   -- zeilen (spec)
   -- zeilen (body)
   -- drucker (spec)
   -- ausgabe (spec)
   -- bios (spec)
   -- kopiere (body)
   -- kommando (body)
   -- hardware (spec)
   -- hardware (body)
   -- ausgabe (body)
   -- drucker (body)
   -- leser (body)
   -- eingabe (body)
   -- seriell (body)
   -- END ELABORATION ORDER

end ada_main;
