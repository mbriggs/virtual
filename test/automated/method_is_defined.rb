require_relative './automated_init'

module Fixture
  module MethodIsDefined
    class Example
      extend Virtual

      virtual :some_virtual_method
    end

    def self.example
      Example.new
    end
  end
end

context "Virtual" do
  test "Defines a method" do
    example = Fixture::MethodIsDefined.example
    example.respond_to? :some_virtual_method
  end
end
