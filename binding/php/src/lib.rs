#![cfg_attr(windows, feature(abi_vectorcall))]
use ext_php_rs::prelude::*;

mod shared;

#[php_function]
pub fn reverse(input: &str) -> String {
    shared::do_reverse(&input.to_string())
}

#[php_module]
pub fn get_module(module: ModuleBuilder) -> ModuleBuilder {
    module
}
