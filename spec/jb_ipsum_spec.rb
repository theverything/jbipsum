require_relative "../lib/jb_ipsum"

describe JBIpsum do

  before :each do
    @baby = JBIpsum.new(3)
    @baby2 = JBIpsum.new(1)
  end

  describe "#new" do

    it "should return a new instance of JBIpsum" do
      @baby.should be_an_instance_of JBIpsum
    end

    it "should throw an error when given two or more params" do
      lambda { JBIpsum.new(1,2) }.should raise_error ArgumentError
    end

  end

  describe "#random_phrase" do

    it "should return a random phrase from @swag" do
      @baby.swag.should include(@baby.random_phrase)
    end

  end

  describe "#period" do

    it "should return a string with a period on the end" do
      @baby.period.should match(/\A[\w\s,']{2,}\.\z/)
    end

    it "should not alter @swag" do
      @baby2.period
      @baby2.swag.should match_array(@baby.swag)
    end

  end

  describe "#capitalize" do

    it "should return a string with the first letter capitalized" do
      @baby.capitalize.should match(/\A[A-Z][\w\s,']{2,}\z/)
    end

    it "should not alter @swag" do
      @baby2.capitalize
      @baby2.swag.should match_array(@baby.swag)
    end

  end

  describe "#make_a_sentence" do

    it "should return a full sentence with a capitalized letter in the front and a period on the end" do
      @baby.make_a_sentence.should match(/\A[A-Z][\w\s,']{5,}\.\z/)
    end

    it "should not alter @swag" do
      @baby2.make_a_sentence
      @baby2.swag.should match_array(@baby.swag)
    end

  end

  describe "#make_a_paragraph" do

    it "should return a paragraph made up of sentences" do
      @baby.make_a_paragraph.should match(/^[A-Z][\w\s',\.]{10,}\.$/)
    end

    it "should not alter @swag" do
      @baby2.make_a_paragraph
      @baby2.swag.should match_array(@baby.swag)
    end

  end

  describe "#lets_do_this" do

    it "should return 3 paragraphs when passed 3 at initializtion" do
      @baby.lets_do_this.length.should eq(3)
    end

    it "sould limit the number of paragraphs to 10" do
      oh_baby = JBIpsum.new(20)
      oh_baby.lets_do_this.length.should eq(10)
    end

  end

end

















