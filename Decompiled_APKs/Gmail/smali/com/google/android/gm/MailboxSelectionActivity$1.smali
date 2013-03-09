.class Lcom/google/android/gm/MailboxSelectionActivity$1;
.super Ljava/lang/Object;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MailboxSelectionActivity;->setupWithAccounts()V
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
.field final synthetic this$0:Lcom/google/android/gm/MailboxSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MailboxSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/gm/MailboxSelectionActivity$1;->this$0:Lcom/google/android/gm/MailboxSelectionActivity;

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
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    const/4 v7, 0x0

    .line 161
    new-array v1, v7, [Landroid/accounts/Account;

    .line 163
    .local v1, accounts:[Landroid/accounts/Account;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Landroid/accounts/Account;

    move-object v1, v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    :goto_0
    iget-object v5, p0, Lcom/google/android/gm/MailboxSelectionActivity$1;->this$0:Lcom/google/android/gm/MailboxSelectionActivity;

    #calls: Lcom/google/android/gm/MailboxSelectionActivity;->completeSetupWithAccounts([Landroid/accounts/Account;)V
    invoke-static {v5, v1}, Lcom/google/android/gm/MailboxSelectionActivity;->access$000(Lcom/google/android/gm/MailboxSelectionActivity;[Landroid/accounts/Account;)V

    .line 175
    return-void

    .line 164
    :catch_0
    move-exception v4

    .line 166
    .local v4, oce:Landroid/accounts/OperationCanceledException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 167
    .end local v4           #oce:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 169
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v3, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 170
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 172
    .local v2, ae:Landroid/accounts/AuthenticatorException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
