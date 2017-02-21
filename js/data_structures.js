var colors = ['red', 'green', 'blue', 'yellow'];
var names = ['Ed', 'Jerry', 'Latisha', 'Rob'];
colors.push('orange');
names.push('Donna');

horses = {};
if (colors.length === names.length) {
  for (var i = 0; i < colors.length; i++) {
    horses[names[i]] = colors[i];
  }
}
console.log(horses)

function Car(make, model, year, color, max_speed) {
  Car.numberOfStarts = 0;

  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;
  this.max_speed = max_speed;
  this.engineOn = false;


  this.startCar = function() {
    this.engineOn = true;
    Car.numberOfStarts += 1;
  }
  this.stopCar = function() {
    this.engineOn = false;
  }
}

mazda = new Car('mazda', 'protege', 2010, 'red', 120)
toyota = new Car('toyota', 'corolla', 2003, 'silver', 140)
tesla = new Car('tesla', 'model s', 2016, 'black', 180)

mazda.startCar()
tesla.startCar()
tesla.startCar()
tesla.engineOn

console.log(mazda, '\n', toyota, '\n', tesla)

console.log(toyota.model)

console.log(Car.numberOfStarts)

for (var key in tesla) {
  console.log(key + ":" + tesla[key])
}