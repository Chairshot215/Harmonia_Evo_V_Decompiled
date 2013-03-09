.class Lcom/google/android/voicesearch/util/AccountHelper$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/util/AccountHelper;

.field final synthetic val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->this$0:Lcom/google/android/voicesearch/util/AccountHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    const/4 v3, 0x0

    new-array v0, v3, [Landroid/accounts/Account;

    .line 409
    .local v0, accounts:[Landroid/accounts/Account;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    .local v2, result:[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 411
    move-object v0, v2

    .line 420
    .end local v2           #result:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/voicesearch/util/AccountHelper$2;->val$callback:Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;

    invoke-interface {v3, v0}, Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;->onAccountsAvailable([Landroid/accounts/Account;)V

    .line 421
    return-void

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to retrieve Gmail account for send email action"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 416
    .local v1, e:Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to retrieve Gmail account for send email action"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 417
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    .line 418
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/voicesearch/util/AccountHelper;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to retrieve Gmail account for send email action"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
