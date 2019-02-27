class Printer
  def initialize(text)
    @text = text
  end

  def text=(text)
    @text = text
  end

  def text
    @text
  end

  def print
    puts "mencetak : #{@text}"

  end
end

printer = Printer.new("Saya sedang belajar pemrograman Ruby")
printer.print
printer.text = "saya pusing"
printer.print
printer.text = 'setter dan getter'
puts printer.text
