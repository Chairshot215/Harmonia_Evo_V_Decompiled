.class Lcom/google/android/talk/AddAccountActivity$1;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AddAccountActivity;->checkForAccount()V
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
.field final synthetic this$0:Lcom/google/android/talk/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

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
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 82
    .local v1, bundleResult:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    move-object v2, v1

    .line 88
    .local v2, finalBundleResult:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    new-instance v4, Lcom/google/android/talk/AddAccountActivity$1$1;

    invoke-direct {v4, p0, v2}, Lcom/google/android/talk/AddAccountActivity$1$1;-><init>(Lcom/google/android/talk/AddAccountActivity$1;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/google/android/talk/AddAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void

    .line 85
    .end local v2           #finalBundleResult:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 84
    :catch_1
    move-exception v3

    goto :goto_0

    .line 83
    :catch_2
    move-exception v3

    goto :goto_0
.end method
