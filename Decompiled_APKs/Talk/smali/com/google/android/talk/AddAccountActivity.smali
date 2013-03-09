.class public Lcom/google/android/talk/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mCreatedAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/talk/AddAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/talk/AddAccountActivity;->mCreatedAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/AddAccountActivity;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method private checkForAccount()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 66
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 67
    .local v0, mgr:Landroid/accounts/AccountManager;
    const-string v1, "ac2dm"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 68
    .local v10, accounts:[Landroid/accounts/Account;
    if-eqz v10, :cond_0

    array-length v1, v10

    if-nez v1, :cond_1

    .line 70
    :cond_0
    const-string v9, "introMessage"

    .line 71
    .local v9, KEY_INTRO_MESSAGE:Ljava/lang/String;
    const-string v8, "pendingIntent"

    .line 73
    .local v8, KEY_CALLER_IDENTITY:Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v4, bundle:Landroid/os/Bundle;
    const-string v1, "introMessage"

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 76
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "pendingIntent"

    invoke-virtual {v4, v1, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    new-instance v6, Lcom/google/android/talk/AddAccountActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/talk/AddAccountActivity$1;-><init>(Lcom/google/android/talk/AddAccountActivity;)V

    .line 104
    .local v6, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const-string v1, "com.google"

    const-string v2, "ac2dm"

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 113
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v8           #KEY_CALLER_IDENTITY:Ljava/lang/String;
    .end local v9           #KEY_INTRO_MESSAGE:Ljava/lang/String;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method private checkForCreatedAccountCompleted()V
    .locals 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/talk/AddAccountActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 122
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 123
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v3, p0, Lcom/google/android/talk/AddAccountActivity;->mCreatedAccount:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 126
    invoke-static {v0, p0}, Lcom/google/android/talk/AccountSelectionActivity;->startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto :goto_0

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAccountIdUpdated(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 0
    .parameter "updatedAccountInfo"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->checkForCreatedAccountCompleted()V

    .line 138
    return-void
.end method

.method public onAccountListChanged()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->checkForCreatedAccountCompleted()V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->checkForAccount()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/AddAccountActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 63
    return-void
.end method
