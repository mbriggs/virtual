require_relative './automated_init'

module Fixture
  module MethodWithBody
    class Example
      extend Virtual

      virtual :some_virtual_method do |*|
        :some_thing
      end
    end

    def self.example
      Example.new
    end
  end
end

context "Virtual" do
  test "Defines a method" do
    example = Fixture::MethodWithBody.example
    response = example.some_virtual_method

    assert(response == :some_thing)
  end
end
