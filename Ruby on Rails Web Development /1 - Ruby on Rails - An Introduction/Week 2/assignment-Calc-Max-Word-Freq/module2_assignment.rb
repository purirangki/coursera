#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  attr_accessor :highest_wf_count, :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency
  end

  def calculate_word_frequency
    h = {}
    words = @content.split
    words.each { |w|
      if h.has_key?(w)
        h[w] += 1
      else
        h[w] = 1
      end
    }

    h2 = h.sort_by { |k, v| v }.reverse
    @highest_wf_count = h2[0][1]
    @highest_wf_words = h.select { |k, v| v == h2[0][1] }.keys
  end

end

#  Implement a class called Solution. 
class Solution
  attr_accessor :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  def initialize
    @analyzers = []
  end

  def analyze_file
    File.foreach 'test.txt' do |line|
      line.downcase!
      @analyzers << LineAnalyzer.new(line, 2)
    end
  end

  def calculate_line_with_highest_frequency
    arr = []
    @highest_count_words_across_lines = []
    @analyzers.each { |a|
      a.calculate_word_frequency
      arr << a.highest_wf_count
    }

    @highest_count_across_lines = arr.max

    @highest_count_words_across_lines = []

    @analyzers.each { |a|
      @highest_count_words_across_lines << a if a.highest_wf_count == @highest_count_across_lines
    }
  end

  def print_highest_word_frequency_across_lines
    @analyzers.each { |a|
      puts "#{a.highest_wf_words} (appears in line #{a.line_number})"
    }
  end
end
