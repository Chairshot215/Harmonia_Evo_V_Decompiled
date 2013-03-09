.class Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;
.super Landroid/os/Handler;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cleareMessage()V
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1689
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1690
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1691
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1692
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1693
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1694
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1695
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1696
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1697
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v3, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 1419
    .local v3, featuredItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v8, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1421
    .local v8, naviItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const/4 v1, 0x0

    .line 1422
    .local v1, amount:I
    const/4 v6, 0x0

    .line 1424
    .local v6, isMassed:Z
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1684
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1685
    return-void

    .line 1426
    :pswitch_0
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_INITIALIZED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    .line 1428
    .local v10, promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1429
    if-eqz v10, :cond_0

    .line 1430
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1431
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 1432
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1434
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1435
    .local v11, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    if-nez v11, :cond_2

    .line 1436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x1

    const/4 v14, 0x1

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(ZZ)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3000(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V

    .line 1440
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto :goto_0

    .line 1438
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->isExpired()Z

    move-result v13

    const/4 v14, 0x1

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(ZZ)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3000(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V

    goto :goto_2

    .line 1449
    .end local v4           #i:I
    .end local v10           #promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :pswitch_1
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_FINISHED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 1452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 1453
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1454
    .restart local v11       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getPosition()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v13, v12, :cond_3

    .line 1455
    const/4 v6, 0x1

    .line 1457
    :cond_3
    if-eqz v6, :cond_4

    .line 1458
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    .line 1459
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "something in promo is wrong"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1461
    :cond_4
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getStatus()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    .line 1468
    :sswitch_0
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->isInitializationEvent()Z

    move-result v5

    .line 1469
    .local v5, isInitializationEvent:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updatePromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;Z)V
    invoke-static {v12, v13, v5}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3300(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/view/PromoSwitcher;Z)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updatePromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;Z)V
    invoke-static {v12, v13, v5}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3300(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/view/PromoSwitcher;Z)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3400(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1474
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "all promo previews are downloaded"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1463
    .end local v5           #isInitializationEvent:Z
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->reOrgnizeDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3100(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1464
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "download promo preview failed, reorganize"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1476
    .restart local v5       #isInitializationEvent:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1487
    .end local v5           #isInitializationEvent:Z
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :pswitch_2
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_RESUMED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedPort()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1400(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedLand()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1500(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoView()Lcom/htc/store/module/view/PromoSwitcher;
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3500(Lcom/htc/store/activity/landing/LandingNavigation;)Lcom/htc/store/module/view/PromoSwitcher;

    move-result-object v2

    .line 1491
    .local v2, currentSwither:Lcom/htc/store/module/view/PromoSwitcher;
    if-eqz v2, :cond_6

    .line 1492
    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 1494
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    .line 1495
    .restart local v10       #promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1496
    if-eqz v10, :cond_0

    .line 1497
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v12}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v12, v13, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v12}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v12, v13, :cond_9

    .line 1499
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1500
    :cond_9
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v1, :cond_a

    .line 1501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1503
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(ZZ)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3000(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto/16 :goto_0

    .line 1513
    .end local v2           #currentSwither:Lcom/htc/store/module/view/PromoSwitcher;
    .end local v4           #i:I
    .end local v10           #promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    :pswitch_3
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_INITIALIZED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v3, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 1515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1516
    if-eqz v3, :cond_0

    .line 1517
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1518
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v1, :cond_b

    .line 1519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1522
    :cond_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1523
    .restart local v11       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    if-nez v11, :cond_c

    .line 1524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x1

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    .line 1528
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto/16 :goto_0

    .line 1526
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->isExpired()Z

    move-result v13

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto :goto_5

    .line 1537
    .end local v4           #i:I
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :pswitch_4
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_FINISHED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 1540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 1541
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1542
    .restart local v11       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getPosition()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v13, v12, :cond_d

    .line 1543
    const/4 v6, 0x1

    .line 1546
    :cond_d
    if-eqz v6, :cond_e

    .line 1547
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "feature data are in-consistent"

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    :cond_e
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getStatus()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_0

    .line 1555
    :sswitch_2
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->isInitializationEvent()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1564
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoFeatured()Landroid/view/View;
    invoke-static {v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3700(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3800(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3900(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;

    move-result-object v15

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v12, v13, v14, v15}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4000(Lcom/htc/store/activity/landing/LandingNavigation;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1567
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getPosition()I

    move-result v13

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateFeaturedLayout(I)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4100(Lcom/htc/store/activity/landing/LandingNavigation;I)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3400(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1571
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "all featured icons are downloaded"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1551
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->reOrgnizeDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3100(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1573
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1584
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :pswitch_5
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_RESUMED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedPort()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1400(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedLand()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1500(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v3, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 1588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoFeatured()Landroid/view/View;
    invoke-static {v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3700(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3800(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3900(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;

    move-result-object v15

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v12, v13, v14, v15}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4000(Lcom/htc/store/activity/landing/LandingNavigation;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1591
    if-eqz v3, :cond_0

    .line 1592
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1593
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    if-ge v4, v1, :cond_11

    .line 1594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1597
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto/16 :goto_0

    .line 1607
    .end local v4           #i:I
    :pswitch_6
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_INITIALIZED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v8, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1610
    if-eqz v8, :cond_15

    .line 1611
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1612
    if-nez v1, :cond_12

    .line 1613
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "navi items is empty"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-ge v4, v1, :cond_13

    .line 1616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1618
    :cond_13
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1619
    .restart local v11       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    if-nez v11, :cond_14

    .line 1620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x1

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    .line 1624
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mIsNaviFetched:Z

    .line 1625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto/16 :goto_0

    .line 1622
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->isExpired()Z

    move-result v13

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto :goto_8

    .line 1627
    .end local v4           #i:I
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :cond_15
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "no navi, close it"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4300(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto/16 :goto_0

    .line 1632
    :pswitch_7
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_FINISHED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 1635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 1636
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    .line 1637
    .restart local v11       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getPosition()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v13, v12, :cond_16

    .line 1638
    const/4 v6, 0x1

    .line 1641
    :cond_16
    if-eqz v6, :cond_17

    .line 1642
    const/4 v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    .line 1643
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "navi data are in-consistent"

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1645
    :cond_17
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getStatus()I

    move-result v12

    sparse-switch v12, :sswitch_data_2

    goto/16 :goto_0

    .line 1656
    :sswitch_4
    invoke-virtual {v11}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->getPosition()I

    move-result v9

    .line 1657
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v9, :cond_18

    .line 1658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/CategoryItem;

    .line 1659
    .local v7, naviItem:Lcom/htc/store/module/vo/CategoryItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/htc/store/module/vo/CategoryItem;->toContentValuesForUIUpdate()Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/htc/store/provider/AccessHelper;->updateCategoryItemByOnlinId(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3400(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1664
    .end local v7           #naviItem:Lcom/htc/store/module/vo/CategoryItem;
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v12}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1666
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "all navi icons are downloaded"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1647
    .end local v9           #position:I
    :sswitch_5
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "download navi icon fail, reorganize"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v13, v13, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v14, v14, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->reOrgnizeDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    invoke-static {v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$3100(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1662
    .restart local v9       #position:I
    :cond_18
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_FINISHED : queue and data inconsistent"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 1668
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1679
    .end local v9           #position:I
    .end local v11           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :pswitch_8
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_RESUMED"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mIsNaviFetched:Z

    .line 1681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v13, 0x0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V
    invoke-static {v12, v13}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0

    .line 1424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1461
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1549
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x8 -> :sswitch_3
    .end sparse-switch

    .line 1645
    :sswitch_data_2
    .sparse-switch
        0x3 -> :sswitch_4
        0x8 -> :sswitch_5
    .end sparse-switch
.end method
