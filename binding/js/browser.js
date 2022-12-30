// For more comments about what's going on here, check out the `hello_world`
// example
const rust = import('./pkg/index.js');
rust
    .then(m => {
        document.body.innerHTML = `reverse('apples') = ${m.reverse('apples')}`
    })
    .catch(console.error);