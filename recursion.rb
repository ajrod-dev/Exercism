def fibs(n)
  arr = [0, 1]
  start = 0
  last = (start + 1)
  until arr.size == n
    arr.push(arr[start] + arr[last])
    start += 1
    last += 1
  end 
  arr
end

def fibs_rec(n, seq = [0,1])
  return seq[0, n+1] if seq.size > n
  seq.push(seq[-1] + seq[-2])
  fibs_rec(n, seq)

end

p fibs_rec(8)

# p fibs(8)