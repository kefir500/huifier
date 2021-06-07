const huify = require('./huifier');

const { stdin } = process;
stdin.setEncoding('utf-8');
console.log('Введите слово:');
stdin.on('data', (data) => {
  console.log(huify(data));
  process.exit();
});
