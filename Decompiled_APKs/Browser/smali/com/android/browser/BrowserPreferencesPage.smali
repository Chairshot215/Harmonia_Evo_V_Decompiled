.class public Lcom/android/browser/BrowserPreferencesPage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesPage.java"


# static fields
.field public static final CURRENT_PAGE:Ljava/lang/String; = "currentPage"


# instance fields
.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v1, 0x7f060008

    invoke-virtual {p0, v1, p1}, Lcom/android/browser/BrowserPreferencesPage;->loadHeadersFromResource(ILjava/util/List;)V

    .line 53
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 55
    .local v0, debug:Landroid/preference/PreferenceActivity$Header;
    const v1, 0x7f0c00d6

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 56
    const-class v1, Lcom/android/browser/preferences/DebugPreferencesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v0           #debug:Landroid/preference/PreferenceActivity$Header;
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserPreferencesPage;->mHeaders:Ljava/util/List;

    .line 60
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, url:Ljava/lang/String;
    const-string v2, "currentPage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 44
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-class v4, Lcom/android/browser/preferences/BandwidthPreferencesFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, fragName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserPreferencesPage;->mHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 68
    .local v2, h:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    .end local v1           #fragName:Ljava/lang/String;
    .end local v2           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 85
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->finish()V

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
