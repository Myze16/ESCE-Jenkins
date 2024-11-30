const soma = require("../index");

test("soma 2 + 3 deve ser 5", () => {
    expect(soma(2, 3)).toBe(5);
});

test("soma 2 + 6 dever ser 8 ", () => {
    expect(soma(2, 7)).toBe(8);
});