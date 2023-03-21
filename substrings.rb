def substrings(word, array)
    # create empty hash for matches
    hash = {}
    # split word argument into array 
    words = word.split(" ")
    # check for matches
    words.each do |x|
        if array.include? x
            if hash.key?(x)
                hash[x] += 1
            else
                hash[x] = 1
            end
        end
    end
    return hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("down below go down going", dictionary)