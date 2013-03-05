
class Week3
  $global_var = "I'm a Global!"
  A_CONSTANT = "I'm a class CONSTANT"



  def initialize
    @name = 'Brandon'
  end

  def name
    @name
  end

  def name= input
    @name = input
  end

  def halve input
    input[0, input.count/2]
  end

  def halve! input
    input.slice!(input.count/2, input.count)
    input
  end

  def actual a
    a.slice![a.count/2, a.count]
  end

  def even?(x)
    input = x.to_i
    input %2 == 0 ? true : false
  end

  def run_me
    yield (@name)
  end

  def each_odd input
    yield (input)
  end

  def configure input_hash = {}
    default = {  :path => './',
                 :version => '0.1.0',
                 :mode => 'production',}
    default.merge(input_hash)

  end
end

A_CONSTANT = "I'm a CONSTANT"
