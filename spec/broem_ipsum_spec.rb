require_relative "../lib/broem_ipsum"

describe BroemIpsum do

  before :each do
    @bro = BroemIpsum.new(3)
    @bro2 = BroemIpsum.new(1)
  end

  describe "#new" do

    it "should return a new instance of BroemIpsum" do
      @bro.should be_an_instance_of BroemIpsum
    end

    it "should throw an error when given two or more params" do
      lambda { BroemIpsum.new(1,2) }.should raise_error ArgumentError
    end

  end

  describe "#random_phrase" do

    it "should return a random phrase from @swag" do
      @bro.swag.should include(@bro.random_phrase)
    end

  end

  describe "#period" do

    it "should return a string with a period on the end" do
      @bro.period.should match(/\A[\w\s']{2,}\.\z/)
    end

    it "should not alter @swag" do
      @bro2.period
      @bro2.swag.should match_array(@bro.swag)
    end

  end

  describe "#capitalize" do

    it "should return a string with the first letter capitalized" do
      @bro.capitalize.should match(/\A[A-Z][\w\s']{2,}\z/)
    end

    it "should not alter @swag" do
      @bro2.capitalize
      @bro2.swag.should match_array(@bro.swag)
    end

  end

  describe "#make_a_sentence" do

    it "should return a full sentence with a capitalized letter in the front and a period on the end" do
      @bro.make_a_sentence.should match(/\A[A-Z][\w\s']{5,}\.\z/)
    end

    it "should not alter @swag" do
      @bro2.make_a_sentence
      @bro2.swag.should match_array(@bro.swag)
    end

  end

  describe "#make_a_paragraph" do

    it "should return a paragraph made up of sentences" do
      @bro.make_a_paragraph.should match(/^[A-Z][\w\s'\.]{10,}\.$/)
    end

    it "should not alter @swag" do
      @bro2.make_a_paragraph
      @bro2.swag.should match_array(@bro.swag)
    end

  end

  describe "#lets_do_this" do

    it "should return 3 paragraphs when passed 3 at initializtion" do
      @bro.lets_do_this
      @bro.paragraphs.length.should eq(3)
    end

  end

end

















