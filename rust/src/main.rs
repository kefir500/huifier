extern crate huifier;

use std::io;
use std::io::prelude::*;

fn main() {
    println!("Введите слово:");
    let stdin = io::stdin();
    for line in stdin.lock().lines() {
        println!("{}", huifier::huify(&line.unwrap()));
    }
}
