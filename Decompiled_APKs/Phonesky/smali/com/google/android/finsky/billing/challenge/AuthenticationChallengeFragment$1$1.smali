.class Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;
.super Ljava/lang/Object;
.source "AuthenticationChallengeFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
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
    .local p1, bundleAccountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 198
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$000(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    .line 216
    .end local v2           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 200
    .restart local v2       #result:Landroid/os/Bundle;
    :cond_0
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 202
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 206
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "OperationCanceledException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    goto :goto_0

    .line 204
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    .restart local v2       #result:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 209
    .end local v2           #result:Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    const-string v3, "IOException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 213
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "AuthenticatorException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;->this$1:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    iget-object v3, v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    goto :goto_0
.end method
