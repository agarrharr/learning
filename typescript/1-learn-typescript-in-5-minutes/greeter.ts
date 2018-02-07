class Student {
    fullName: string;

    constructor(public firstName: string, public lastName: string) {
        this.fullName = `${firstName} ${lastName}`;
    }
}

interface Person {
  firstName: string,
  lastName: string,
}

function greeter(person: Person) {
  return `Hello, ${person.firstName} ${person.lastName}`;
}

let user = {
  firstName: `Jane`,
  lastName: `User`,
};

let userGreeter = greeter(user);

let person = new Student(`Jane`, `Doe`);

let personGreeter = greeter(person);
