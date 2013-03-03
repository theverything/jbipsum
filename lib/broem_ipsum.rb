class BroemIpsum

  attr_reader :swag, :paragraphs
  attr_accessor :number_of_paragraphs

  def initialize(number_of_paragraphs)
    @number_of_paragraphs = number_of_paragraphs
    @swag = ["come at me bro", "beer pong", "shotgun some beers", "wanna go", "hit the gym", "lets's get jacked", "I'm hammered", "polo shirts", "shots", "jager bombs", "nattie ice", "frat house", "pop my collar", "swag", "gotta take my shirt off to fight"]
    @paragraphs = []

  end

  def lets_do_this #final assembly of paragraphs
    @number_of_paragraphs.times { @paragraphs << make_a_paragraph }
  end

  def make_a_paragraph # assembly of sentences into a paragraph
    paragraph = []
    10.times { paragraph << make_a_sentence }
    paragraph.join(" ")
  end

  def make_a_sentence # capitalize, add phrases into sentence, period
    sentence = []
    sentence << capitalize
    2.times { sentence << random_phrase }
    sentence << period
    sentence.join(" ")
  end

  def capitalize # capitalize first letter of phrase
    phrase = random_phrase
    phrase[0].capitalize + phrase.slice(1..-1)
  end

  def period # add period to end of phrase
    random_phrase + "."
  end

  def random_phrase
    random_num = rand(0..(@swag.length - 1))
    @swag[random_num]
  end

end