using System;
using System.Web;

public class PersonManager {

    private const string personsKey = "persons";

    public PersonCollection SelectPersons() {
        HttpContext context = HttpContext.Current;

        if (context.Application[personsKey] == null) {
            PersonCollection persons = new PersonCollection();

            persons.Add(new Person(0, "Patrick", "Lorenz"));
            persons.Add(new Person(1, "Micha", "Brunnhuber"));
            persons.Add(new Person(2, "Thomas", "Ballmeier"));
            context.Application[personsKey] = persons;
        }

        return (context.Application[personsKey] as PersonCollection);
    }
}
