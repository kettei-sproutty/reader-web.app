extern crate wasm_bindgen;

use wasm_bindgen::prelude::*;
use wasm_bindgen_test::console_log;
use web_sys::ReadableStream;

#[wasm_bindgen]
extern {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet(text: &str) {
    alert(text);
}

#[wasm_bindgen]
pub async fn log(file: ReadableStream) -> String {
  let _reader = file.get_reader();

  "Hello, World!".to_owned()
}
