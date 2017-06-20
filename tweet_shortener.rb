def dictionary
    dictionary =
    {"hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"}
end

def word_substituter(tweet_one)
    split = tweet_one.split(" ")
    split.collect do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
            else
            word
        end
        
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.collect do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweets)
    if tweets.length > 140
        word_substituter(tweets)
    else
        tweets
    end
end

def shortened_tweet_truncator(tweets)
    if selective_tweet_shortener(tweets).length > 140
        tweets[0..136] << "..."
    else
    tweets
    end
end
