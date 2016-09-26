def dictionary
  hashdic = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    'be' => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&"

  }
end



def word_substituter(tweet)
  dictionary
  tweetarray= tweet.split(" ")
  tweetarray.each do |word|
    dictionary.each do |orig, abbr|
      if orig.upcase == word.upcase
        word.replace(abbr)
      end
    end
  end
  newtweet= tweetarray.join(" ")
end



def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
  array
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet= tweet
  end

end



def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    newtweet=word_substituter(tweet)
    if newtweet.length > 140
      newtweet = newtweet[0..136] + "..."
    end
  end
end
