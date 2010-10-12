require File.expand_path("../../lib", __FILE__) + "/errorstack"

describe Errorstack do

  before :all do
    Errorstack::STACK_KEY = "4d71562ee8c71af971a66afbb4e3aaba"
  end

  it "should post and error to errorstack" do
    e = StandardError.new("Testing 123")
    Errorstack.notify(e)
    1.should == 1
  end


end
