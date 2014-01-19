
class MessageFilter

  # def initialize(word)
  def initialize(*words)
    @words = words
  end

  def detect?(text)
    # text.include?(@word)
    # @words.each do |w|
    #   return true if text.include?(w)
    # end
    # false
    @words.any? { |w| text.include?(w) }
  end

end

