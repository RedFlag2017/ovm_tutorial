class tc01 extends ovm_test;
  
  `ovm_component_utils(tc01);
  tb o_tb;
  
  function new(string name, ovm_component parent);
    super.new(name, parent);
  endfunction

  function void build();
    ovm_report_info("build", "");
    o_tb = new("o_tb",this);
    o_tb.and_vif = harness.u_and_vif;
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
		o_tb.tb_func();
    #10000ps;
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