.class Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;
.super Ljava/lang/Object;
.source "HtcAccountUnlockScreen.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcAccountUnlockScreen;->asyncCheckPassword()V
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
.field final synthetic this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
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
    .line 319
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 320
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 321
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 322
    .local v2, verified:Z
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 330
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 336
    .end local v1           #result:Landroid/os/Bundle;
    .end local v2           #verified:Z
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/accounts/OperationCanceledException;
    :try_start_1
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 327
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 328
    .local v0, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    iget-object v3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;

    invoke-direct {v5, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method
