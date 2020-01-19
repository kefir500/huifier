import { Huifier } from './huifier';
let huifier = new Huifier();

let stdin = process.stdin;
stdin.setEncoding('utf-8');

console.log('Введите слово:');
stdin.on('data', data => {
  console.log(huifier.huify(data));
  process.exit();
});
