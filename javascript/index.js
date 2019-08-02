let huifier = require('./huifier');
let stdin = process.stdin;
stdin.setEncoding('utf-8');
console.log('Введите слово:');
stdin.on('data', function (data) {
  console.log(huifier(data));
  process.exit();
});
