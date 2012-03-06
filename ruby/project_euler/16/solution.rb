puts (2**1000).to_s.split('').inject(0) {|tot,n| tot += n.to_i; tot}
