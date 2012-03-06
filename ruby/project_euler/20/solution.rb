puts (1..100).inject(:*).to_s.split('').inject(0) {|tot,n| tot += n.to_i; tot}
