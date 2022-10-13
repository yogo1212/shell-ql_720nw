require 'barby/outputter'

module Barby
	#Outputs an bool representation of the barcode.
	#True bool is a black pixel. Works only for 1D-barcodes.
	#
	#Registers to_bool
	class BoolOutputter < Outputter
		register :to_bool

		def to_bool()
			if barcode.two_dimensional?
				nil
			else
				booleans
			end
		end
	end
end
