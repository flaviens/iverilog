// Check that an error is reported when trying to bind the same argument by name
// multiple times.

module test;

  function f(integer a, integer b);
    $display("FAILED");
  endfunction

  initial begin
    integer x;
    x = f(.a(1), .a(2)); // This should fail. `a` is provided twice as a named
                         // argument.
  end

endmodule
