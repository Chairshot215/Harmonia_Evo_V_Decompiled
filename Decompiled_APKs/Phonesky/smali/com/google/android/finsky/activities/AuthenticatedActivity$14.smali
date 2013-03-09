.class Lcom/google/android/finsky/activities/AuthenticatedActivity$14;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V
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
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 942
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 943
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 944
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/16 v4, 0x15

    invoke-virtual {v3, v2, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 945
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v4, 0x1

    #setter for: Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$502(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 957
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v1

    .line 947
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "Account add canceled. Finishing."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    .line 949
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 950
    .local v1, e:Ljava/io/IOException;
    const-string v3, "IOException while adding account: %s. Finishing."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    .line 952
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 953
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "AuthenticatorException while adding account: %s. Finishing."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0
.end method
