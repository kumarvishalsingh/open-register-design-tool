//   Ordt 160905.01 autogenerated file 
//   Input: ./rdl_iwrap/test.rdl
//   Parms: ./rdl_iwrap/test.parms
//   Date: Mon Sep 05 18:11:26 EDT 2016
//

import uvm_pkg::*;
import ordt_uvm_reg_pkg::*;

// Register reg_none
class reg_top_regs_none_reg_none extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl fld_none;
  rand uvm_reg_field_rdl fld_gen;
  rand uvm_reg_field_rdl fld_ext;
  rand uvm_reg_field_rdl fld_int;
  
  function new(string name = "reg_top_regs_none_reg_none");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.fld_none = new("fld_none");
    this.fld_none.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_none.configure(this, 1, 0, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_gen = new("fld_gen");
    this.fld_gen.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_gen.configure(this, 1, 1, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_ext = new("fld_ext");
    this.fld_ext.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_ext.configure(this, 1, 2, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_int = new("fld_int");
    this.fld_int.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_int.configure(this, 1, 3, "RW", 1, 1'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "fld_none"}, 0, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_gen"}, 1, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_ext"}, 2, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_int"}, 3, 1);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_top_regs_none_reg_none

// Register reg_int
class reg_top_regs_none_reg_int extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl fld_none;
  rand uvm_reg_field_rdl fld_gen;
  rand uvm_reg_field_rdl fld_ext;
  rand uvm_reg_field_rdl fld_int;
  
  function new(string name = "reg_top_regs_none_reg_int");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.fld_none = new("fld_none");
    this.fld_none.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_none.configure(this, 1, 0, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_gen = new("fld_gen");
    this.fld_gen.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_gen.configure(this, 1, 1, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_ext = new("fld_ext");
    this.fld_ext.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_ext.configure(this, 1, 2, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_int = new("fld_int");
    this.fld_int.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_int.configure(this, 1, 3, "RW", 1, 1'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "fld_none"}, 0, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_gen"}, 1, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_ext"}, 2, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_int"}, 3, 1);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_top_regs_none_reg_int

// Block regs_none
class block_top_regs_none extends uvm_reg_block_rdl;
  rand reg_top_regs_none_reg_none reg_none;
  rand reg_top_regs_none_reg_int reg_int;
  
  function new(string name = "block_top_regs_none");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.reg_none = new("reg_none");
    this.reg_none.configure(this, null, "");
    this.reg_none.set_rdl_tag("reg_none_");
    this.reg_none.set_reg_test_info(0, 0, 0);
    this.reg_none.build();
    this.default_map.add_reg(this.reg_none, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    this.reg_int = new("reg_int");
    this.reg_int.configure(this, null, "");
    this.reg_int.set_rdl_tag("reg_int_");
    this.reg_int.set_reg_test_info(0, 0, 0);
    this.reg_int.build();
    this.default_map.add_reg(this.reg_int, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
  endfunction: build
  
  `uvm_object_utils(block_top_regs_none)
endclass : block_top_regs_none

// Register reg_none
class reg_top_regs_ext_reg_none extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl fld_none;
  rand uvm_reg_field_rdl fld_gen;
  rand uvm_reg_field_rdl fld_ext;
  rand uvm_reg_field_rdl fld_int;
  
  function new(string name = "reg_top_regs_ext_reg_none");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.fld_none = new("fld_none");
    this.fld_none.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_none.configure(this, 1, 0, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_gen = new("fld_gen");
    this.fld_gen.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_gen.configure(this, 1, 1, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_ext = new("fld_ext");
    this.fld_ext.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_ext.configure(this, 1, 2, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_int = new("fld_int");
    this.fld_int.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_int.configure(this, 1, 3, "RW", 1, 1'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "fld_none"}, 0, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_gen"}, 1, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_ext"}, 2, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_int"}, 3, 1);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_top_regs_ext_reg_none

// Register reg_int
class reg_top_regs_ext_reg_int extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl fld_none;
  rand uvm_reg_field_rdl fld_gen;
  rand uvm_reg_field_rdl fld_ext;
  rand uvm_reg_field_rdl fld_int;
  
  function new(string name = "reg_top_regs_ext_reg_int");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.fld_none = new("fld_none");
    this.fld_none.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_none.configure(this, 1, 0, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_gen = new("fld_gen");
    this.fld_gen.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_gen.configure(this, 1, 1, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_ext = new("fld_ext");
    this.fld_ext.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_ext.configure(this, 1, 2, "RW", 1, 1'h0, 1, 1, 0);
    this.fld_int = new("fld_int");
    this.fld_int.set_rdl_access_info(1, 1, 1, 1, 1, 0);
    this.fld_int.configure(this, 1, 3, "RW", 1, 1'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "fld_none"}, 0, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_gen"}, 1, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_ext"}, 2, 1);
    add_hdl_path_slice({rdl_reg_name, "fld_int"}, 3, 1);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_top_regs_ext_reg_int

// Block regs_ext
class block_top_regs_ext extends uvm_reg_block_rdl;
  rand reg_top_regs_ext_reg_none reg_none;
  rand reg_top_regs_ext_reg_int reg_int;
  
  function new(string name = "block_top_regs_ext");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.reg_none = new("reg_none");
    this.reg_none.configure(this, null, "");
    this.reg_none.set_rdl_tag("reg_none_");
    this.reg_none.set_reg_test_info(0, 0, 0);
    this.reg_none.build();
    this.default_map.add_reg(this.reg_none, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    this.reg_int = new("reg_int");
    this.reg_int.configure(this, null, "");
    this.reg_int.set_rdl_tag("reg_int_");
    this.reg_int.set_reg_test_info(0, 0, 0);
    this.reg_int.build();
    this.default_map.add_reg(this.reg_int, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
  endfunction: build
  
  `uvm_object_utils(block_top_regs_ext)
endclass : block_top_regs_ext

// Base block
class block_top extends uvm_reg_block_rdl;
  rand block_top_regs_none regs_none;
  rand block_top_regs_ext regs_ext;
  
  function new(string name = "block_top");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", `UVM_REG_ADDR_WIDTH'h0, 4, UVM_LITTLE_ENDIAN, 1);
    this.set_rdl_address_map(1);
    this.set_rdl_address_map_hdl_path({`TOP_PIO_INSTANCE_PATH, ".pio_logic"});
    this.regs_none = block_top_regs_none::type_id::create("regs_none",, get_full_name());
    this.regs_none.configure(this, "");
    this.regs_none.set_rdl_tag("regs_none_");
    this.regs_none.build();
    this.default_map.add_submap(this.regs_none.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.regs_ext = block_top_regs_ext::type_id::create("regs_ext",, get_full_name());
    this.regs_ext.configure(this, "");
    this.regs_ext.set_rdl_tag("regs_ext_");
    this.regs_ext.build();
    this.default_map.add_submap(this.regs_ext.default_map, `UVM_REG_ADDR_WIDTH'h8);
    set_hdl_path_root({`TOP_PIO_INSTANCE_PATH, ".pio_logic"});
    this.add_callbacks();
  endfunction: build
  
  `uvm_object_utils(block_top)
endclass : block_top
