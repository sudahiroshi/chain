using SHA
old_hash = ""
data = "ogino: 10000
miyamizu: 10000
"
zeros = 6
start = 0
for nonce in start:start+100000000
  base = old_hash * data * string(nonce)
  hash = base |> sha2_256 |> bytes2hex
  if( hash[1:zeros] == "0" ^ zeros )
    string(nonce) * " : " * hash |> println
    break
  end
  if( nonce%1000000 == 0 )
     nonce |> string |> println
  end
end

