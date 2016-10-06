using System;

public interface IZipProvider {

    event EventHandler ZipHasChanged;

    string Zip { 
        get;
    }
}
