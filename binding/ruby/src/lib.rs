#[macro_use]
extern crate rutie;

mod shared;

use rutie::{Class, Object, RString, VM};

class!(RubyExample);

methods!(
    RubyExample,
    _rtself,
    fn pub_reverse(input: RString) -> RString {
        let ruby_string = input.map_err(|e| VM::raise_ex(e)).unwrap();

        RString::new_utf8(&shared::do_reverse(&ruby_string.to_string()))
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_ruby_binding() {
    Class::new("RubyExample", None).define(|klass| {
        klass.def_self("reverse", pub_reverse);
    });
}
