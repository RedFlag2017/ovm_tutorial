class tc01 extends ovm_test;
  
  `ovm_component_utils(tc01);
  
  function new(string name, ovm_component parent);
    super.new(name, parent);
  endfunction

  function void build();
    ovm_report_info("build", "");
  endfunction

  function void connect();
    ovm_report_info("connect", "");
  endfunction

  function void end_of_elaboration();
    ovm_report_info("end_of_elaboration", "");
  endfunction

  function void start_of_simulation();
    ovm_report_info("start_of_simulation", "");
  endfunction

  task run();
    ovm_report_info("tc01", "start");

    #100us;
    global_stop_request();
    ovm_report_info("tc01", "finish");
  endtask

  function void extract();
    ovm_report_info("extract", "");
  endfunction

  function void check();
    ovm_report_info("check", "");
  endfunction

  function void report();
    ovm_report_info("report", "");
  endfunction	
	
endclass