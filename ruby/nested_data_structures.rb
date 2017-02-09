freeway = {
    trucks:{
        number: 8000,
        models: ['Peterbilt', 'Mack', 'Volvo']
    },
    cars:{
        number:2000,
        models:['Mercedes', 'BMW', 'Jaguar']
    }
}

p freeway[:cars][:number]
p freeway[:trucks][:models].last
p freeway[:trucks][:models].last.length
