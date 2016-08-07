
(1..16).each_slice(4) { |x| puts x.map { |y| y.to_s }.reduce { |init, z| init + ", " + z } }
