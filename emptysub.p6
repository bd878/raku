#!/usr/bin

sub caller {
  try {
    CATCH { default { put "Caught {.^name} with {.message}" } }
    empty()
  }
}

sub empty { X::StubCode.new( payload => "failed state" ).throw; }

caller();