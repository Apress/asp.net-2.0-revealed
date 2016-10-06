<%@ application language="C#" %>

<script runat="server">

void Personalization_MigrateAnonymous(object sender, PersonalizationMigrateEventArgs e)
{
    HttpPersonalization oldProfile = ((HttpPersonalization) e.Context.Profile).GetProfile(e.AnonymousId);
    HttpPersonalization newProfile = (HttpPersonalization) e.Context.Profile;
    
    // Merging Bookmarks
    string[] bookmarks = new string[oldProfile.Bookmarks.Count];
    oldProfile.Bookmarks.CopyTo(bookmarks, 0);
    newProfile.Bookmarks.AddRange(bookmarks);
    
    // Merging Basket
    newProfile.Basket.AddRange(oldProfile.Basket);
}
       
</script>
