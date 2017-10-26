const SWAG = [
  'when I met you girl my heart went knock knock',
  'swag',
  'baby, baby, baby, oh',
  "I'ma make you shine bright like you're laying in the snow, burr",
  'swaggie',
  "swag swag swag, on you, chillin by the fire while we eaten' fondue",
  'I could be your Buzz Lightyear fly across the globe',
  "no matter how much I try, I can't figure out how to not be adorable",
  "it's a Bieber world live it or die",
  'smile on your face, even though your heart is frowning',
  "we don't need no wings to fly",
  'got your girlfriend at my crib watching Netflix',
  "man, we steppin' out like whoa",
  'no one can stop me',
  'I make good grilled cheese and I like girls',
  "I'd like to be an architect, that would be cool, cause I like drawing",
  'I like Sour Patch Kids',
  "baby know for sho', I'll never let you go",
  "I'm in pieces, so come fix me",
  'I like The Notebook',
  'worst birthday ever',
  'and all the haters I swear they look so small from up here',
  'I think older people can appreciate my music',
  "if I was your boyfriend, I'd never let you go",
  'but something would be nothing',
  "let the music blast we gon' do our dance",
  'ooh no, ooh no, ooh',
  'canada',
  "I'm all fancy, yeah I'm popping Pellegrino",
  "you know I'm a real OG and baby I ain't from the TO",
  "what you got, a billion could've never bought",
  "don't be so cold, we could be fire",
];

function randomPhrase() {
  return SWAG[Math.floor(Math.random() * SWAG.length)];
}

function period() {
  return randomPhrase() + '.';
}

function capitalize() {
  return randomPhrase().replace(/^[a-z]/, match => match[0].toUpperCase());
}

function sentence() {
  return [capitalize(), randomPhrase(), period()].join(' ');
}

function paragraph() {
  return Array(8)
    .fill()
    .map(sentence)
    .join(' ');
}

export default function jbIpsum(times) {
  return Array(times > 10 ? 10 : times)
    .fill()
    .map(paragraph);
}
