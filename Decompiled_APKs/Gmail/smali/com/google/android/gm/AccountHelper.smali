.class public Lcom/google/android/gm/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;,
        Lcom/google/android/gm/AccountHelper$CredentialsCallback;,
        Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;,
        Lcom/google/android/gm/AccountHelper$AddAccountCallback;,
        Lcom/google/android/gm/AccountHelper$AccountResultsCallback;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/google/android/gm/RestrictedActivity;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/RestrictedActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    .line 96
    invoke-interface {p1}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AccountHelper;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "context"
    .parameter "accountString"

    .prologue
    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, currentAccount:Landroid/accounts/Account;
    if-eqz p1, :cond_0

    .line 53
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 54
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 55
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    move-object v3, v0

    .line 61
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-object v3

    .line 54
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 196
    return-void
.end method

.method public static mergeAccountLists(Ljava/util/List;[Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "accounts"
    .parameter "prioritizeAccountList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/accounts/Account;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, existingList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, newAccountList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 214
    aget-object v4, p1, v2

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 215
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 216
    .local v1, engine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->labelsSynced()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 217
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_3
    if-nez p2, :cond_4

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #engine:Lcom/google/android/gm/provider/MailEngine;
    :cond_5
    return-object v3
.end method

.method public static promptForCredentials(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V
    .locals 7
    .parameter "activity"
    .parameter "accountStr"
    .parameter "callback"

    .prologue
    .line 243
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v1, account:Landroid/accounts/Account;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v3, bundle:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "mail"

    new-instance v5, Lcom/google/android/gm/AccountHelper$2;

    invoke-direct {v5, p2}, Lcom/google/android/gm/AccountHelper$2;-><init>(Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 269
    return-void
.end method

.method public static showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
    .locals 9
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, options:Landroid/os/Bundle;
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 284
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #options:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v4       #options:Landroid/os/Bundle;
    const-string v0, "allowSkip"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    const-string v1, "introMessage"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c001d

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "pendingIntent"

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "mail"

    new-instance v6, Lcom/google/android/gm/AccountHelper$3;

    invoke-direct {v6, p1, v8}, Lcom/google/android/gm/AccountHelper$3;-><init>(Lcom/google/android/gm/AccountHelper$AddAccountCallback;Landroid/app/PendingIntent;)V

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 343
    return-void

    .line 287
    :cond_1
    const v0, 0x7f0c001c

    goto :goto_0
.end method

.method public static verifyAccountGmailFeatures(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 355
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mail"

    invoke-static {v3}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/google/android/gm/AccountHelper$4;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gm/AccountHelper$4;-><init>(Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;Landroid/accounts/Account;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 383
    return-void
.end method


# virtual methods
.method public asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gm/AccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/gm/AccountHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gm/AccountHelper$1;-><init>(Lcom/google/android/gm/AccountHelper;Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 130
    return-void
.end method

.method public chooseAccount(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 150
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 154
    const-string v2, "test-account"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    if-nez v0, :cond_1

    .line 158
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    .line 167
    const-string v2, "account-shortcut"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/google/android/gm/AccountHelper;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-static {v2}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Lcom/google/android/gm/RestrictedActivity;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_3
    if-eqz v0, :cond_4

    .line 175
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/AccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_4
    return-object v0
.end method

.method public validateAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountName"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/AccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gm/Utils;->isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
