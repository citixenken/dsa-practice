function betterThanAverage(classPoints, yourPoints) {
  let classAvg =
    classPoints.reduce((prev, curr) => prev + curr, 0) / classPoints.length;

  return classAvg < yourPoints ? true : false;
}
