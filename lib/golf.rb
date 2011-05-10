Golf=Hash
i=0
  %q^
    a.inject :*

    a.split.sort_by{|w|w[1]}*" "

    hole1 2..a

    a.map{ |b|
      b =~ /an/ ? "hat(#{b})" : (b =~ /at(.*)/ ? "dead"+$1 : (b[")"] = "(bone))"
      b))
    }

    (0...c=a.size).map{|b|
      (1..c-b).map{|d|
        a[b,d]
      }
    }.flatten(1).sort_by{|x|[x.size,x]}

    (1..a).map{|b|
      c = [b%3<1?:fizz: "",b%5<1?:buzz: ""]*""
      c == "" ? b : c
    }

    a.inject([]){|b,c|
      (b[-1]||[])[-1] == (c-1) ? b[-1] << c : b << [c]
      b
    }.map{|x|[x[0],x[-1]].uniq*"-"}

    a < 3 ? [1, 1] : (b = hole8 a - 1
    b + [b[-1] + b[-2]])

    b = File.readlines(a).map{|b|b.scan /\w+/}
    loop{
      e = b.inject(new 0){|h,c|d=c[0] or next
        h[d]+=1
        h
      }.sort_by &:last
      return e[-1][0] if e[-1][1] >= e.inject(0){|x,(y,z)|x+z}/2
      b.map!{|x|x-[e[0][0]]}
    }
  ^.split(/\n\n/).map{|$a|eval "def Golf.hole#{i+=1} a
#$a
  end"}
