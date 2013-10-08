require "./matriz.rb"

def mapmap(a)
  	a.map { |r| r.map { |e| yield e }}
end

def to_m(a)
  	a = a.split(/\n/)
  	a = a.map { |r| r.split(/\s+/) }
  	a = mapmap(a) { |x| x.to_f } 
end	



