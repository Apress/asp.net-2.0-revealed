using System;

public class Person {

    private int id;
    private string firstname;
    private string lastname;

    public Person(int id, string firstname, string lastname) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public int Id {
        get { return this.id; }
        set { this.id = value; }
    }

    public string Firstname {
        get { return this.firstname; }
        set { this.firstname = value; }
    }

    public string Lastname {
        get { return this.lastname; }
        set { this.lastname = value; }
    }
}
