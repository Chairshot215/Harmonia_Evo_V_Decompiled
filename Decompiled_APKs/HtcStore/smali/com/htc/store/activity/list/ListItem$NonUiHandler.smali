.class Lcom/htc/store/activity/list/ListItem$NonUiHandler;
.super Landroid/os/Handler;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    .line 467
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 471
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 474
    :pswitch_0
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$300(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {v10}, Lcom/htc/store/activity/list/ListItem;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 475
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Update status."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateItemStatus()V
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$400(Lcom/htc/store/activity/list/ListItem;)V

    .line 477
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v10}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-eqz v10, :cond_0

    .line 478
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getItemItem(I)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 479
    .local v5, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v5, :cond_0

    .line 480
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesForUIUpdate()Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/store/provider/AccessHelper;->updateItemItem(JLandroid/content/ContentValues;)Z

    goto :goto_0

    .line 487
    .end local v5           #item:Lcom/htc/store/module/vo/ItemItem;
    :pswitch_1
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$500(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {v10}, Lcom/htc/store/activity/list/ListItem;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-eqz v10, :cond_0

    .line 488
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Check package manager."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v11, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v11, v11, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/htc/store/provider/AccessHelper;->getItemItemsByCategory(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 490
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    if-eqz v6, :cond_0

    .line 491
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/ItemItem;

    .line 492
    .restart local v5       #item:Lcom/htc/store/module/vo/ItemItem;
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$600(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {v10}, Lcom/htc/store/activity/list/ListItem;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$700(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 495
    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, packageName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_2
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$800(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 499
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$900(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 508
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v8           #packageName:Ljava/lang/String;
    :pswitch_2
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v10}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasToDownload()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 509
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Get items to insert."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :try_start_0
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v2

    .line 512
    .local v2, headerCount:I
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v1, v10, v2

    .line 513
    .local v1, first:I
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v10

    sub-int v7, v10, v2

    .line 514
    .local v7, last:I
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 515
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "first: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "last: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v9, toDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    move v3, v1

    .local v3, i:I
    :goto_2
    if-gt v3, v7, :cond_5

    .line 519
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v10, v3}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getItemItem(I)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 520
    .restart local v5       #item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v5, :cond_4

    .line 521
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v10, v10, Lcom/htc/store/activity/list/ListItem;->mScrollState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$1000(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 527
    .end local v5           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "mScrollState: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v13, v13, Lcom/htc/store/activity/list/ListItem;->mScrollState:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 529
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v10, v10, Lcom/htc/store/activity/list/ListItem;->mScrollState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v10}, Lcom/htc/store/activity/list/ListItem;->access$1100(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 530
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Insert to download."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v10, v9}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->insertItems(Ljava/util/ArrayList;)V

    .line 533
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 535
    .end local v1           #first:I
    .end local v2           #headerCount:I
    .end local v3           #i:I
    .end local v7           #last:I
    .end local v9           #toDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 518
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #first:I
    .restart local v2       #headerCount:I
    .restart local v3       #i:I
    .restart local v5       #item:Lcom/htc/store/module/vo/ItemItem;
    .restart local v7       #last:I
    .restart local v9       #toDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
