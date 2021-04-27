// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMG_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A1;
reg A2;
wire Q1;
integer errors_Q1;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMG_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMG_DESIGN DUT(
`endif
   .A1(A1),
   .A2(A2),
   .Q1(Q1)
);

// monitor the I/O
initial
  begin
    $display( "COMPILATION OK" );
    $display( "Simulation Begins" );
    $display ( "  AA  Q" );
    $display ( "  12  1" );
    $display ( "       " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A1,
      A2,
      "  ",
      Q1,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q1 = 0;
    $display ( "v 00  0");
    apply_vector ( 2'b00,1'b0,
                   2'b11,1'b1);
    $display ( "v 11  X");
    apply_vector ( 2'b11,1'bX,
                   2'b11,1'b0);
    $display ( "v 10  0");
    apply_vector ( 2'b10,1'b0,
                   2'b11,1'b1);
    $display ( "v 11  0");
    apply_vector ( 2'b11,1'b0,
                   2'b11,1'b1);
    $display ( "v 00  0");
    apply_vector ( 2'b00,1'b0,
                   2'b11,1'b1);
    $display ( "v 11  X");
    apply_vector ( 2'b11,1'bX,
                   2'b11,1'b0);
    if ( errors == 0 )
      begin
        $display( "SIMULATION OK" );
        $display( "All vectors passed" );
      end
    else
      begin
        $display( "" );
        $display( "SIMULATION Failed" );
        $display( "" );
        if (  errors_Q1 > 0 )
          $display ( "       ", errors_Q1, " errors with Q1",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [1:0] stimulus_vector;
  input [0:0] expected_vector;
  input [1:0] stimulus_mask;
  input [0:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A1,A2} = stimulus_vector & stimulus_mask ;
    `else
      {A1,A2} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [0:0] expected_vector;
  input [0:0] mask_vector;

  reg [0:0] received_vector;
  reg [0:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q1};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r     %b", received_vector );
    $display( "      %s", error_point( difference_vector ) );
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q1)
        begin
          $display( "error with Q1 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q1 = errors_Q1 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [7:0] error_point;

  input [0:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

