.class final Lcom/google/android/gm/AccountHelper$3;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper$AddAccountCallback;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    iput-object p2, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 340
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    .line 313
    .local v0, accountResult:Landroid/accounts/Account;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 314
    .local v5, result:Landroid/os/Bundle;
    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, addName:Ljava/lang/String;
    const-string v6, "accountType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, addType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 319
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    .end local v0           #accountResult:Landroid/accounts/Account;
    .local v1, accountResult:Landroid/accounts/Account;
    :try_start_1
    const-string v6, "gmail-ls"

    invoke-static {v1, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, isSyncable:I
    if-gez v4, :cond_2

    .line 326
    const-string v6, "gmail-ls"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move-object v0, v1

    .line 335
    .end local v1           #accountResult:Landroid/accounts/Account;
    .end local v4           #isSyncable:I
    .restart local v0       #accountResult:Landroid/accounts/Account;
    :cond_3
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_4

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_4
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 331
    .end local v2           #addName:Ljava/lang/String;
    .end local v3           #addType:Ljava/lang/String;
    .end local v5           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 335
    :goto_1
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_5

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_5
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 332
    :catch_1
    move-exception v6

    .line 335
    :goto_2
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_6

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_6
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 333
    :catch_2
    move-exception v6

    .line 335
    :goto_3
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_7

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_7
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v6

    :goto_4
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v7, :cond_8

    .line 336
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v7, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_8
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    throw v6

    .line 335
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    .restart local v2       #addName:Ljava/lang/String;
    .restart local v3       #addType:Ljava/lang/String;
    .restart local v5       #result:Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_4

    .line 333
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_3
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_3

    .line 332
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_2

    .line 331
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_1
.end method
