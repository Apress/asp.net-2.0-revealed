using System;
using System.Collections.Generic;

public class PersonCollection : List<Person> {

    public void Remove(int id) {
        Person person = this.FindPersonById(id);
        if (person != null) {
            base.Remove(person);
        }
    }

    public Person FindPersonById(int id) {
        foreach (Person person in this) {
            if (person.Id.Equals(id)) {
                return person;
            }
        }
        return null;
    }
}
