<%@ application language="C#" %>

<script runat="server">

void Personalization_MigrateAnonymous(object sender, 
    AnonymousIdentificationEventArgs e)
{
    HttpPersonalization anonProfile = ((HttpPersonalization)
        e.Context.Profile).GetProfile(e.AnonymousId);
    HttpPersonalization currentProfile = 
        (HttpPersonalization) e.Context.Profile;
    //Profile.PostalCode = Profile.GetProfile(e.AnonymousId).PostalCode;
}
       
</script>
