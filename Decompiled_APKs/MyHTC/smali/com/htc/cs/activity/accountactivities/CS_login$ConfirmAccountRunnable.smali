.class Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmAccountRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 287
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->mEndMessage:Landroid/os/Message;

    .line 288
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 297
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 299
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1, v2}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->sendMessage(I)V

    goto :goto_0

    .line 310
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The credentials are empty."

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 313
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->sendMessage(I)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 332
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->sendMessage(I)V

    goto :goto_0

    .line 316
    .end local v0           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->serviceBinder:Lcom/htc/cs/service/ConnectedService;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$600(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/service/ConnectedService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cs/service/ConnectedService;->readServerTime()V

    .line 319
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getAgreeTerm(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$700(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$800(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/cs/util/CloudProxyUtil;->bindService(Landroid/content/Context;Ljava/util/UUID;Ljava/util/List;Ljava/lang/String;)V

    .line 328
    :goto_1
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->sendMessage(I)V

    goto :goto_0

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$700(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/cs/util/CloudProxyUtil;->bindService(Landroid/content/Context;Ljava/util/UUID;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method sendMessage(I)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->mEndMessage:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 292
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;->mEndMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method
