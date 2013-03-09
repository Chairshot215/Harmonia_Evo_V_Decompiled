.class Lcom/google/android/voicesearch/util/AccountHelper$1;
.super Landroid/os/AsyncTask;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mSyncedAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/voicesearch/util/AccountHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    const-string v1, "com.android.contacts"

    #calls: Lcom/google/android/voicesearch/util/AccountHelper;->getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->access$000(Lcom/google/android/voicesearch/util/AccountHelper;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 380
    iget-object v7, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->mSyncedAccounts:[Landroid/accounts/Account;

    .local v7, arr$:[Landroid/accounts/Account;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v1, v7, v8

    .line 381
    .local v1, account:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    #getter for: Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->access$100(Lcom/google/android/voicesearch/util/AccountHelper;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "speechpersonalization"

    iget-object v4, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 380
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 386
    .end local v1           #account:Landroid/accounts/Account;
    .end local v7           #arr$:[Landroid/accounts/Account;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    #getter for: Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->access$200(Lcom/google/android/voicesearch/util/AccountHelper;)Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v2, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/voicesearch/util/AccountHelper$1;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    #calls: Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/voicesearch/util/AccountHelper;->access$300(Lcom/google/android/voicesearch/util/AccountHelper;)[Landroid/accounts/Account;

    move-result-object v3

    const-string v4, "speechpersonalization"

    #calls: Lcom/google/android/voicesearch/util/AccountHelper;->promptAuthToken(Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/voicesearch/util/AccountHelper;->access$400(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 389
    :cond_1
    return-void
.end method
