// For more comments about what's going on here, check out the `hello_world`
// example
const rust = import('./pkg/index.js');
rust
    .then(m => {
        document.body.innerHTML = `1 + 2 = ${m.add(1, 2)}`
    })
    .catch(console.error);