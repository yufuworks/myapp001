module ApplicationHelper
  require 'base64'

  def make_poet(image, poet_id, user_id)
    # TODO 画像のbase64とuser_idだけで変化をつけたいがうまく変化が作れない、計算式要検討
    poet_b64 = Base64.strict_encode64("#{image}")
    keys = []
    poet_keys = []
    for i in 90..100
      key = poet_b64[((user_id * poet_id + i) % 20)].unpack('c')[0]
      poet_key = (key + 100 * user_id + i ** -i)  % 64
      keys << poet_key
    end
    poet_keys = keys.map{|key| (key * key + key) % 64 + 1}
    word_first = WordsFirst.find(poet_keys[3])
    word_second = WordsSecond.find(poet_keys[5])
    word_third = WordsThird.find(poet_keys[7])
    words = [word_first[:word], word_second[:word], word_third[:word]]
    return "#{words[0]} \r #{words[1]} \r #{words[2]}"

  end

  def image_from_base64(b64)
    bin = Base64.decode64(b64)
    file = Poet.new('image')
    file.binmode
    file << bin
    file.rewind
  
    self.image = file
  end

end
