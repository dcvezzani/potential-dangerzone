include Java

import "org.reliacode.Sandwich"

describe Sandwich do
  context "meal time" do

    it "should each a sandwich" do
      sandwich = Sandwich.new
      # before expectation/stub, this works as expected
      puts ">>> makes? #{sandwich.makes('roast beef')}"
      
      sandwich.expects(:makes).returns(false)
      # after expectation/stub, this works as expected
      puts ">>> makes? #{sandwich.makes('toasted cheese')}"

      # this doesn't seem to work as expected
      # once the java code is entered, it acts as though there
      # was never a stub; what gives?!
      sandwich.eat.should == false
    end

  end
end
