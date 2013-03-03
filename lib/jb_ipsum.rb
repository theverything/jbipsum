class JBIpsum

  attr_reader :swag

  def initialize(number_of_paragraphs) @number_of_paragraphs = number_of_paragraphs 
  @swag = [
    "when I met you girl my heart went knock knock",
    "swag",
    "baby, baby, baby, oh",
    "I'ma make you shine bright like you're laying in the snow, burr",
    "swaggie",
    "swag swag swag, on you, chillin by the fire why we eaten' fondue",
    "I could be your Buzz Lightyear fly across the globe",
    "no matter how much I try, I can't figure out how to not be adorable",
    "it's a Bieber world live it or die",
    "smile on your face, even though your heart is frowning",
    "we don't need no wings to fly",
    "I don't know if this makes sense but, you're my hallelujah",
    "man, we steppin' out like whoa",
    "no one can stop me",
    "I make good grilled cheese and I like girls",
    "I'd like to be an architect, that would be cool, cause I like drawing",
    "I like Sour Patch Kids",
    "baby know for sho', I'll never let you go",
    "I'm in pieces, so come fix me",
    "I like The Notebook",
    "worst birthday ever",
    "and all the haters I swear they look so small from up here",
    "I think older people can appreciate my music",
    "if I was your boyfriend, I'd never let you go",
    "but something would be nothing",
    "let the music blast we gon' do our dance",
    "ooh no, ooh no, ooh"
    ] 
    @paragraphs = []

  end

  def lets_do_this #final assembly of paragraphs
    if @number_of_paragraphs > 10
      10.times { @paragraphs << make_a_paragraph }
    else
      @number_of_paragraphs.times { @paragraphs << make_a_paragraph }
    end
    @paragraphs
  end

  def make_a_paragraph # assembly of sentences into a paragraph
    paragraph = []
    8.times { paragraph << make_a_sentence }
    paragraph.join(" ")
  end

  def make_a_sentence # capitalize, add phrases into sentence, period
    sentence = []
    sentence << capitalize
    sentence << random_phrase
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