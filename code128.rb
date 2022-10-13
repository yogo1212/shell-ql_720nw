#!/usr/bin/ruby

require 'barby/barcode/code_128'
load 'bool_outputter.rb'


require 'barby/outputter/ascii_outputter'

barcode = Barby::Code128B.new(ARGV[0].to_s)

puts barcode.to_bool.map{|b| (b ? "1" : "0")}.to_s
