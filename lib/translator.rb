require 'yaml'


def load_library(file)
  emotes = YAML.load_file(file)
  meaning = emotes.keys
  cons = emotes.values
  america = []
  japan = []
  mean_hash = {}
  emo_hash = {}
  x = 0
  cons.each do |group|
    america = group[0]
    japan = group[1]
    mean_hash[japan] = meaning[x]
    emo_hash[america] = japan
    x += 1
  end

  [[:get_meaning, emotes], [:get_emoticon, emotes]].to_h
end

def get_japanese_emoticon

end

def get_english_meaning

end
