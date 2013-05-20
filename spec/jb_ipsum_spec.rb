require_relative "../lib/jb_ipsum"

describe JBIpsum do

  before :each do
    @baby = JBIpsum.new(3)
    @baby2 = JBIpsum.new(1)
  end

  describe "#new" do

    it "returns a new instance of JBIpsum" do
      @baby.should be_an_instance_of JBIpsum
    end

    it "throws an error when given two or more params" do
      lambda { JBIpsum.new(1,2) }.should raise_error ArgumentError
    end

  end

  describe "#random_phrase" do

    it "returns a random phrase from SWAG" do
      JBIpsum::SWAG.should include(@baby.random_phrase)
    end

  end

  describe "#period" do

    it "returns a string with a period on the end" do
      @baby.period.should match(/\A[\w\s,']{2,}\.\z/)
    end

  end

  describe "#capitalize" do

    it "returns a string with the first letter capitalized" do
      @baby.capitalize.should match(/\A[A-Z][\w\s,']{2,}\z/)
    end

  end

  describe "#make_a_sentence" do

    it "returns a full sentence with a capitalized letter in the front and a period on the end" do
      @baby.make_a_sentence.should match(/\A[A-Z][\w\s,']{5,}\.\z/)
    end

  end

  describe "#make_a_paragraph" do

    it "returns a paragraph made up of sentences" do
      @baby.make_a_paragraph.should match(/^[A-Z][\w\s',\.]{10,}\.$/)
    end

  end

  describe "#return_requested_paragraphs" do

    it "returns 3 paragraphs when passed 3 at initializtion" do
      @baby.return_requested_paragraphs.length.should eq(3)
    end

    it "limits the number of paragraphs to 10" do
      oh_baby = JBIpsum.new(20)
      oh_baby.return_requested_paragraphs.length.should eq(10)
    end

  end

end
