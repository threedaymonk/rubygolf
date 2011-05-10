Golf={}
i=0
  %q^
    a.inject(1){|b,c|b*c}

    a.split.sort_by{|w|w[1,1]}*" "

    hole1 2..a

    a.map{ |b|
      b =~ /man/ ? "hat(#{b})" : (b =~ /cat(.*)/ ? "dead#{$1}" : (b[")"] = "(bone))"
      b))
    }

    (0...c=a.length).map{|b|
      (1..c-b).map{|d|
        a[b,d]
      }
    }.flatten(1).sort_by{|x|[x.length,x]}

    (1..a).map{|b|
      c = [b%3<1?:fizz: "",b%5<1?:buzz: ""]*""
      c == "" ? b : c
    }

    a.inject([]){|b,c|
      (b[-1]||[])[-1] == (c-1) ? b[-1] << c : b << [c]
      b
    }.map{|x|[x[0],x[-1]].uniq*"-"}

    (1...a).inject([1]){|b,c| b << b[-1]+(b[-2]||0) }

    b = File.readlines(a).map{|b|b.scan /\w+/}
    loop{
      e = b.inject({}){|h,c|d=c[0] or next
        h[d]||=0
        h[d]+=1
        h
      }.sort_by{|_,x|x}
      f = e.inject(0){|x,(y,z)|x+z}/2
      return e[-1][0] if f <= e[-1][1]
      b.map!{|x|x-[e[0][0]]}
    }
  ^.split(/\n\n/).map{|a|eval "def Golf.hole#{i+=1} a
"+a+"
end"}
