class Calculator
  def penjumlahan(a, b)
    a + b
  end

  def pengurangan(a, b)
    a - b
  end
end

class CalculatorKool
  def initialize(a, b)
    @parameter_a = a
    @parameter_b = b
  end

  def penjumlahan
    @parameter_a + @parameter_b
  end

  def pengurangan
    @parameter_a - @parameter_b
  end
end

calc = CalculatorKool.new(20, 5)
hasil_penjumlahan = calc.penjumlahan
puts hasil_penjumlahan
hasil_pengurangan = calc.pengurangan
puts hasil_pengurangan
