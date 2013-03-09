.class public Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SearchSettingsActivity.java"


# instance fields
.field private mContext:Lcom/google/android/googlequicksearchbox/QsbContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method protected getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
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
    .line 60
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f070003

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 40
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->allowSuggestionLogicCreation()V

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 66
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHelp()Lcom/google/android/googlequicksearchbox/Help;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/googlequicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;Z)V

    .line 67
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchSettingsActivity;->finish()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
