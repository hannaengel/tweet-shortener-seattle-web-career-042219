def dictionary
  dictionary = {"hello"=>'hi',
  "to" => '2',
  "two"=> '2',
  "too" => '2',
  "for, four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"}
 end

def word_substituter(tweet)
  dic = dictionary
  tweetArray = tweet.split
  editedTweet = []
  tweetArray.each do |word|
    if dic.has_key?(word)== true
      editedTweet << dic[word]
    else
    editedTweet<< word
    end
  end
  editedTweet.join(" ")
end
def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
