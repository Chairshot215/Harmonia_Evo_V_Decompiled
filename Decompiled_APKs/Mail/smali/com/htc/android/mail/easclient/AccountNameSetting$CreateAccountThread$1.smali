.class Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;
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
.field final synthetic this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 531
    const-string v7, "AccountNameSetting"

    const-string v8, "callback: finish account setup"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v3, 0x0

    .line 534
    .local v3, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    if-nez v3, :cond_0

    .line 540
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #bundle:Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 541
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v7, "extra.htc.eas.result"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    const-string v7, "extra.htc.eas.account_id"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 544
    :cond_0
    const-string v7, "extra.htc.eas.result"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 545
    .local v6, ret:I
    const-string v7, "extra.htc.eas.account_id"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 547
    .local v1, accountId:J
    const/4 v7, -0x6

    if-ne v6, v7, :cond_1

    .line 548
    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    iget-object v7, v7, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$600(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    :goto_1
    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    #setter for: Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mIsRunning:Z
    invoke-static {v7, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->access$902(Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;Z)Z

    .line 562
    return-void

    .line 535
    .end local v1           #accountId:J
    .end local v6           #ret:I
    :catch_0
    move-exception v4

    .line 536
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #accountId:J
    .restart local v6       #ret:I
    :cond_1
    if-gez v6, :cond_2

    .line 550
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 551
    .local v5, msg:Landroid/os/Message;
    iput v10, v5, Landroid/os/Message;->what:I

    .line 552
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 553
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    iget-object v7, v7, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$600(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 556
    .end local v5           #msg:Landroid/os/Message;
    :cond_2
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 557
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v5, Landroid/os/Message;->what:I

    .line 558
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    iget-object v7, v7, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$600(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
