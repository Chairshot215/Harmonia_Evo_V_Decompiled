.class public Lcom/google/android/gm/preference/GmailPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GmailPreferenceActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AddAccountCallback;
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# static fields
.field private static sCreatedAccount:Z


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartAccountQuery:Z

.field private mSynced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->sCreatedAccount:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mSynced:Z

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mRestartAccountQuery:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/preference/GmailPreferenceActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/preference/GmailPreferenceActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method private addAccountHeaders(Ljava/util/List;)V
    .locals 7
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
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v6, 0x1

    .line 177
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    .line 180
    iget-boolean v4, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mSynced:Z

    if-nez v4, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->asyncInitAccounts()V

    .line 182
    iput-boolean v6, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mSynced:Z

    .line 198
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, account:Ljava/lang/String;
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 189
    .local v2, accountHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 190
    const-string v4, "com.google.android.gm.preference.AccountPreferenceFragment"

    iput-object v4, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 192
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v1, accountBundle:Landroid/os/Bundle;
    const-string v4, "account"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object v1, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 195
    invoke-interface {p1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private asyncInitAccounts()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;-><init>(Lcom/google/android/gm/preference/GmailPreferenceActivity;)V

    .line 226
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 227
    return-void
.end method

.method private getInitialHeader(JLjava/util/List;)Landroid/preference/PreferenceActivity$Header;
    .locals 4
    .parameter "fragmentId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 99
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 104
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHeaders(Ljava/util/List;)V
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
    .line 140
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 141
    .local v1, useGoogleMail:Z
    if-eqz v1, :cond_0

    const v0, 0x7f070004

    .line 143
    .local v0, headers:I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->addAccountHeaders(Ljava/util/List;)V

    .line 150
    return-void

    .line 141
    .end local v0           #headers:I
    :cond_0
    const v0, 0x7f070006

    goto :goto_0
.end method

.method private loadInitialHeader(J)V
    .locals 7
    .parameter "initialFragmentId"

    .prologue
    .line 72
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, headerList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->loadHeaders(Ljava/util/List;)V

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getInitialHeader(JLjava/util/List;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 76
    .local v1, initialHeader:Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->isMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    iget-object v3, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget v5, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v2

    .line 87
    .local v2, preferenceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    .line 95
    .end local v2           #preferenceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "gm_settings"

    return-object v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
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
    .line 136
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->loadHeaders(Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x4

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 52
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "initial_fragment_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "initial_fragment_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 56
    .local v1, initialFragmentId:J
    cmp-long v4, v1, v6

    if-eqz v4, :cond_0

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->loadInitialHeader(J)V

    .line 61
    :cond_0
    const-string v4, "initial_fragment_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 64
    .end local v1           #initialFragmentId:J
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 69
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 155
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 172
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_0
    return v0

    .line 163
    :sswitch_0
    invoke-static {p0, p0}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    goto :goto_0

    .line 169
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f00f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mRestartAccountQuery:Z

    .line 113
    return-void
.end method

.method public onResult(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->sCreatedAccount:Z

    .line 246
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 121
    sget-boolean v2, Lcom/google/android/gm/preference/GmailPreferenceActivity;->sCreatedAccount:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->mRestartAccountQuery:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 122
    .local v0, requeryAccountManager:Z
    :goto_0
    sput-boolean v1, Lcom/google/android/gm/preference/GmailPreferenceActivity;->sCreatedAccount:Z

    .line 123
    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->asyncInitAccounts()V

    .line 127
    :cond_1
    return-void

    .end local v0           #requeryAccountManager:Z
    :cond_2
    move v0, v1

    .line 121
    goto :goto_0
.end method
