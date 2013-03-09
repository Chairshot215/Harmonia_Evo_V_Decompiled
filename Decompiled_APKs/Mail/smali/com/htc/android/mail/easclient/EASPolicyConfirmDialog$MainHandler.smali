.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;
.super Landroid/os/Handler;
.source "EASPolicyConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    .line 250
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 255
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #calls: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$200(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$100(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 261
    monitor-enter p0

    .line 263
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$100(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->finish()V

    .line 269
    monitor-exit p0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Result"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, result:I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$400(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 276
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$100(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$400(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->disableEASAdmin(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 284
    :goto_2
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->setResult(I)V

    .line 285
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->broadcastPasswordSetupFinish(Z)V

    .line 292
    :goto_3
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->finish()V

    goto :goto_0

    .line 279
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$100(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->resetAdminPolicy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 281
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->setScreenLockImmediatlly()V

    .line 288
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->applyPolicy()V

    .line 289
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->setResult(I)V

    .line 290
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->broadcastPasswordSetupFinish(Z)V

    goto :goto_3

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
