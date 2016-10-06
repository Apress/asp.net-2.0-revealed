using System;

public class TitledPage : System.Web.UI.Page {

	private string title;


	public string Title {
		get { return this.title; }
		set { this.title = value; }
	}
}
