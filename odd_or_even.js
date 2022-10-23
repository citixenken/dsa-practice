function oddOrEven(array) {
  let initialValue = 0;
  return array.reduce((prev, curr) => prev + curr, initialValue) % 2
    ? "Odd"
    : "Even";
}

oddOrEven([1, 2, 3, 4]);
