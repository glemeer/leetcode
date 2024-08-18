***** Node/JS *****

arr = [
... [1,2,3],
... [1,2,3],
... [1,2,3]
... ]

1) Loop
arr.forEach((e,i) => {
... e.forEach((e2,j) => {
..... tr[j] = tr[j] || [];
..... tr[j].push(e2);
..... })
... })

2) Map
arr[0].map((col,i) => arr.map(row => row[i]));
arr[0].map((_,i) => arr.map(row => row[i]));


***** Ruby *****

1) Loop
arr.each do |row|
   row.each_with_index do |cell, i|
     tr[i] = tr[i] || []
     tr[i] << cell
   end
end

2) Map
arr[0].each_index.map { |i| arr.map { |row| row[i] } }


***** Python *****
arr=[
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

1) Loop
for i in range(len(arr[0])):
  row = []
  for item in arr:
    row.append(item[i])
  tr.append(row)

2) Comprehensions
[[row[i] for row in arr] for i in range(len(arr[0]))]