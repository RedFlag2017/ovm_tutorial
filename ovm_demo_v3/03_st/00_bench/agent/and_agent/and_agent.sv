class and_agent extends ovm_component;
  
  `ovm_component_utils(and_agent);
  virtual and_if and_vif;
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
    ovm_report_info("run", "");

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