require 'sinatra'
require 'json'

QUOTES = [
  "The Christian in the one whose imagination should fly beyond the stars.",
  "Biblical orthodoxy without compassion is surely the ugliest thing in the world.",
  "A Christian should use these arts to the glory of God, not just as tracts, mind you, but as things of beauty to the praise of God. An art work can be a doxology in itself.",
  "One of the greatest injustices we do to our young people is to ask them to be conservative. Christianity is not conservative, but revolutionary.",
  "Christian art is the expression of the whole life of the whole person as a Christian. What a Christian portrays in his art is the totality of life. Art is not to be solely a vehicle for some sort of self-conscious evangelism.",
  "The basic problem of the Christians in this country in the last eighty years or so, in regard to society and in regard to government, is that they have seen things in bits and pieces instead of totals.",
  "A compassionate open home is part of Christian responsibility, and should be practiced up to the level of capacity.",
  "Truth carries with it confrontation. Truth demands confrontation; loving confrontation, but confrontation nevertheless.",
  "When a man comes under the blood of Christ, his whole capacity as a man is refashioned. His soul is saved, yes, but so are his mind and his body. True spirituality means the lordship of Christ over the total man.",
  "The Christian should be the person who is alive, whose imagination absolutely boils, which moves, which produces something a bit different from God's world because God made us to be creative.",
  "There is nothing more ugly than an orthodoxy without understanding or without compassion.",
  "If you demand perfection or nothing, you will always end up with nothing.",
  "In a fallen world, we must be willing to face the fact that however lovingly we preach the gospel, if a man rejects it he will be miserable. It is dark out there.",
  "Each generation of the church in each setting has the responsibility of communicating the gospel in understandable terms, considering the language and thought-forms of that setting.",
  "A quiet disposition and a heart giving thanks at any given moment is the real test of the extent to which we love God at that moment.",
  "The principle of saying no to self lies at the heart of my attitude toward the world as it maintains its alien stand in rebellion against the Creator.",
  "The Christian should be the man with the flaming imagination and the beauty of creation."
]

post '/bot' do
  content_type :json

  {
    "text" => QUOTES.shuffle.first
  }.to_json
end
