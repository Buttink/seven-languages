
Matrix

data := matrix(3,3)
data set(1,1, 10)

file := File with("data.ser")
file open
file write(data serialized)
file close

read := doString(
    File with("data.ser") open readLines join
)
read println
