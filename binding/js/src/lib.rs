use wasm_bindgen::prelude::*;

mod shared;

#[wasm_bindgen]
pub fn reverse(input: &str) -> String {
    shared::do_reverse(&input.to_string())
}
