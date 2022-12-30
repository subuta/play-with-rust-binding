use pyo3::prelude::*;

mod shared;

#[pyfunction]
fn reverse(input: &str) -> PyResult<String> {
    Ok((shared::do_reverse(&input.to_string())).to_string())
}

/// A Python module implemented in Rust.
#[pymodule]
fn python_binding(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(reverse, m)?)?;
    Ok(())
}
