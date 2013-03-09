.class Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;
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
    name = "GetSecurityQRunnable"
.end annotation


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field private mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 508
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 512
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->mEndMsg:Landroid/os/Message;

    .line 513
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 523
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 524
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 517
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 518
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 528
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 529
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1, v5}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage(I)V

    goto :goto_0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->isTtlExpired()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$200(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$300(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-ne v1, v7, :cond_6

    .line 542
    :cond_3
    const/4 v11, 0x0

    .line 543
    .local v11, time:I
    :goto_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x32

    if-ge v11, v1, :cond_4

    .line 544
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Updated = "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 546
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 548
    :catch_0
    move-exception v8

    .line 549
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage(I)V

    goto :goto_0

    .line 555
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 556
    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage(I)V

    goto :goto_0

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 561
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 567
    .end local v11           #time:I
    :cond_6
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1}, Lcom/htc/cs/util/CSDatabaseUtil;->updateURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 568
    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 572
    :cond_7
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getDeviceID()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1300(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/lang/String;

    move-result-object v10

    .line 573
    .local v10, temp:Ljava/lang/String;
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 576
    .local v4, deviceUUID:Ljava/util/UUID;
    :try_start_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getRegionForAccount()Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1400(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    move-result-object v9

    .line 577
    .local v9, region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v2, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 585
    .local v0, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    if-eqz v0, :cond_8

    .line 600
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetSecurityQuestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->securityQuestion:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1502(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 609
    :cond_8
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage()V

    goto/16 :goto_0

    .line 604
    .end local v0           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v9           #region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :catch_1
    move-exception v8

    .line 605
    .local v8, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 606
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;->sendMessage(I)V

    goto/16 :goto_0
.end method
