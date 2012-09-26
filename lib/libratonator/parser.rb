module Libratonator
  class Parser
    def parse(s)
      parts = s.split(' ')
      {parts[0] => {'value' => parts[1], 'measure_time' => parts[2]}}
    end
  end
end
