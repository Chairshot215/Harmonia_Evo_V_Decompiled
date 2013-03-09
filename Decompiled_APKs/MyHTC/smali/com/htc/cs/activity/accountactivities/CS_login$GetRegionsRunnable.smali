.class Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;
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
    name = "GetRegionsRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 398
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    .line 399
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 409
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 410
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 403
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 404
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v5, 0x0

    .line 414
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 415
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v4, v5}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 421
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V

    goto :goto_0

    .line 427
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg1:I

    const v5, 0x7f0b0033

    if-ne v4, v5, :cond_9

    .line 429
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->isTtlExpired()Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$200(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$300(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-ne v4, v6, :cond_7

    .line 433
    :cond_4
    const/4 v3, 0x0

    .line 434
    .local v3, time:I
    :goto_1
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x32

    if-ge v3, v4, :cond_5

    .line 435
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Update = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 437
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x4

    :try_start_2
    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 491
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #time:I
    :catch_1
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 493
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4, v9}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 494
    invoke-direct {p0, v8}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #time:I
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 447
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 495
    .end local v3           #time:I
    :catch_2
    move-exception v1

    .line 496
    .local v1, error:Ljava/lang/OutOfMemoryError;
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4, v1}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 497
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4, v9}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 498
    invoke-direct {p0, v8}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 451
    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    .restart local v3       #time:I
    :cond_6
    :try_start_4
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 452
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 459
    .end local v3           #time:I
    :cond_7
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v4}, Lcom/htc/cs/util/CSDatabaseUtil;->updateURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 460
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Update URL failed."

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 461
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 465
    :cond_8
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1000(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v4

    if-nez v4, :cond_9

    .line 466
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getRegions(Ljava/lang/String;Z)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v2

    .line 471
    .local v2, temp:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getLocationService()V
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1100(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    .line 479
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    invoke-static {v4, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1002(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cscore/restapi/json/SearchResults;)Lcom/htc/cscore/restapi/json/SearchResults;

    .line 485
    .end local v2           #temp:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    :cond_9
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getPendingLegalDocumentId "

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 486
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->mEndMsg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg1:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 487
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getPendingLegalDocumentId()V
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1200(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    .line 490
    :cond_a
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;->sendMessage()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method
