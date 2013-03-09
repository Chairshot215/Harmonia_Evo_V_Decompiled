.class public Lcom/google/android/talk/GTalkPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "GTalkPreferencesActivity.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# instance fields
.field private mAccountId:J

.field private mActiveAccount:Landroid/preference/PreferenceActivity$Header;

.field private mApp:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createOpenSourceLicensesDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 204
    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 206
    const v1, 0x7f10006c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/licenses.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 134
    return-void
.end method

.method private shouldShowNewAccount()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 138
    return-void
.end method


# virtual methods
.method public onAccountListChanged()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->finish()V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->invalidateHeaders()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 9
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
    .line 154
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v5, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v3

    .line 155
    .local v3, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-nez v3, :cond_0

    .line 181
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    .line 161
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 162
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 165
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 166
    .local v2, accountHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iput-object v5, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 167
    const-string v5, "com.google.android.talk.fragments.SettingsFragment"

    iput-object v5, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v1, accountBundle:Landroid/os/Bundle;
    const-string v5, "accountId"

    iget-wide v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    iput-object v1, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 171
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v7, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mAccountId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 175
    iput-object v2, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    goto :goto_1

    .line 180
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #accountBundle:Landroid/os/Bundle;
    .end local v2           #accountHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_2
    const v5, 0x7f060001

    invoke-virtual {p0, v5, p1}, Lcom/google/android/talk/GTalkPreferencesActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    .line 44
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mAccountId:J

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 52
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 192
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->createOpenSourceLicensesDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 75
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    const/4 v1, 0x1

    return v1
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 106
    :sswitch_0
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->finish()V

    goto :goto_0

    .line 116
    :sswitch_2
    const-string v1, "talk_settings"

    invoke-static {p0, v1}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f100014 -> :sswitch_0
        0x7f1000b5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 81
    const v2, 0x7f100014

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    .local v0, addAccountItem:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->shouldShowNewAccount()Z

    move-result v1

    .line 83
    .local v1, visible:Z
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->registerForAccountListChanged()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 69
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->unregisterForAccountListChanged()V

    .line 70
    return-void
.end method
