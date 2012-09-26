module Libratonator
  class CLI
    attr_reader :parser, :queue

    def initialize
      Librato::Metrics.authenticate ENV['LIBRATO_EMAIL'], ENV['LIBRATO_KEY']
      @parser = Parser.new
      @queue = Librato::Metrics::Queue.new(:autosubmit_interval => 60, :autosubmit_count => 400)
    end

    def run
      ARGF.each_line do |l|
        queue.add parser.parse(l)	
      end
      queue.submit unless queue.size.zero?
    end
  end
end
