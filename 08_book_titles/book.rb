
class Book
    attr_accessor :title
    
    def title
        words = @title
        little_words = %w(and in the of a an over)
        words.capitalize.split.map{|w| little_words.include?(w) ? w : w.capitalize}.join(' ')
    end
end