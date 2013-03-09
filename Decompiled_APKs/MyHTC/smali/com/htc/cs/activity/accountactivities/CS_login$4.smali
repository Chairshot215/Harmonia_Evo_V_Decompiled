.class Lcom/htc/cs/activity/accountactivities/CS_login$4;
.super Landroid/os/Handler;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 1
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1343
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1347
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1496
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1349
    :pswitch_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_REQUEST_BINDING"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1350
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1351
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1356
    :sswitch_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto :goto_0

    .line 1362
    :pswitch_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_RETRIEVE_PASSWORD"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1363
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1364
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_1

    .line 1371
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto :goto_0

    .line 1368
    :sswitch_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto :goto_0

    .line 1377
    :pswitch_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_CONFIRM_ACCOUNT"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1378
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1379
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_2

    goto :goto_0

    .line 1383
    :sswitch_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto :goto_0

    .line 1386
    :sswitch_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->processProvisioning(Z)V
    invoke-static {v1, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    .line 1389
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x403

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1391
    .local v0, msgProv:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2800(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1393
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1403
    .end local v0           #msgProv:Landroid/os/Message;
    :pswitch_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_POST_PROVISIONING"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1404
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1405
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_0

    .line 1409
    :sswitch_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1412
    :sswitch_5
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->hasLocationService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->locateConfirmUi()V
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2900(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    goto/16 :goto_0

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setResult(I)V

    .line 1416
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto/16 :goto_0

    .line 1425
    :pswitch_5
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_ALMOST_DONE"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1426
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->almostDone()V
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3000(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    goto/16 :goto_0

    .line 1432
    :pswitch_6
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_GET_REGION"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1433
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_0

    .line 1449
    :sswitch_6
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1435
    :sswitch_7
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1000(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1000(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v1

    iget v1, v1, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    if-lez v1, :cond_2

    .line 1436
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->createNameUi(Z)V
    invoke-static {v1, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3100(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    goto/16 :goto_0

    .line 1438
    :cond_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1445
    :sswitch_8
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->phoneNumberSigninUI(Z)V
    invoke-static {v1, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3200(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    goto/16 :goto_0

    .line 1456
    :pswitch_7
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_GET_SECURITYQ"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1457
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_5

    .line 1464
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->securityUi()V
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3300(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    goto/16 :goto_0

    .line 1461
    :sswitch_9
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1468
    :pswitch_8
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_HANDSET_CHECK_MISSING_DEVICE"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1469
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1471
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_6

    goto/16 :goto_0

    .line 1476
    :sswitch_a
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1483
    :pswitch_9
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "MESSAGE_SEND_DELETE_ACCOUNT"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1484
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_3

    .line 1486
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 1488
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1491
    :cond_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$4;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto/16 :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_9
    .end packed-switch

    .line 1351
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xc -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 1364
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch

    .line 1379
    :sswitch_data_2
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x3eb -> :sswitch_3
    .end sparse-switch

    .line 1405
    :sswitch_data_3
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x8 -> :sswitch_4
        0x3e9 -> :sswitch_5
    .end sparse-switch

    .line 1433
    :sswitch_data_4
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7f0b0033 -> :sswitch_7
    .end sparse-switch

    .line 1457
    :sswitch_data_5
    .sparse-switch
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x14 -> :sswitch_9
    .end sparse-switch

    .line 1471
    :sswitch_data_6
    .sparse-switch
        0x3 -> :sswitch_a
        0x4 -> :sswitch_a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_a
    .end sparse-switch
.end method
