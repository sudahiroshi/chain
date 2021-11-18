#import Pkg
#Pkg.add("MD5")
using MD5
old_hash = ""
data = "ogino: 10000\nmiyamizu: 10000"
zeros = 6
start = 0
for nonce in start:start+10000000
  base = old_hash * data * string(nonce)
  hash = base |> md5 |> bytes2hex
  if( hash[1:zeros] == "0" ^ zeros )
    string(nonce) * " : " * hash |> println
  end
end
