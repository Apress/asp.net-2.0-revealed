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

    public Person SelectPerson(int id) {
        return this.SelectPersons().FindPersonById(id);
    }

    public void DeletePerson(int Id) {
        HttpContext context = HttpContext.Current;
        PersonCollection persons = (context.Application[personsKey] as PersonCollection);

        persons.Remove(Id);
    }

    public void Update(int Id, string Firstname, string Lastname) {
        HttpContext context = HttpContext.Current;
        PersonCollection persons = (context.Application[personsKey] as PersonCollection);
        Person person = persons.FindPersonById(Id);

        if (person != null) {
            person.Firstname = Firstname;
            person.Lastname = Lastname;
        }
    }

    public void Insert(int Id, string Firstname, string Lastname) {
        HttpContext context = HttpContext.Current;
        PersonCollection persons = (context.Application[personsKey] as PersonCollection);

        persons.Add(new Person(Id, Firstname, Lastname));
    }
}
