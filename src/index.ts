import express from 'express'

const app = express();

const myForEach = <T>(datas: T[], callBack: (data: T) => void): T[] => {
  datas.forEach((data) => {
    callBack(data)
  })
  return datas
} 

const result1 = myForEach(["1", 2, "3"], (item) => {
  console.log(item)
})
console.log(result1)

const result2 = myForEach([1, 2, 3], (item) => {
  console.log(item)
})
console.log(result2)

app.get('/', (req, res) => {
    res.send('Hello World!')
    console.log(req)
})

app.listen(5000, () => {
  console.log('listening at *:5000');
})

