.class Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_ENOUGH_SPACE:I = 0x2

.field private static final NO_SDCARD:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2450
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v5, 0x2

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 2456
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "doInBackground: PurchaseItemTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2457
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->isExternalStorageNeeded(I)Z
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$9900(Lcom/htc/store/activity/detail/DetailInfo;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2458
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getFileSizeLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 2459
    .local v9, size:J
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask - content size: "

    aput-object v2, v1, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2460
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_0

    .line 2461
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask - content size is less than 0"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2462
    :cond_0
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2463
    invoke-static {v13, v9, v10}, Lcom/htc/store/util/StorageUtils;->isStorageFreeSpaceEnough(IJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2464
    new-array v0, v13, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->publishProgress([Ljava/lang/Object;)V

    .line 2465
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2522
    .end local v9           #size:J
    :goto_0
    return-object v0

    .line 2468
    .restart local v9       #size:J
    :cond_1
    new-array v0, v13, [Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->publishProgress([Ljava/lang/Object;)V

    .line 2469
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2472
    .end local v9           #size:J
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2522
    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2480
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2481
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$10000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$6902(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 2482
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask - item id = "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, ", sku id = "

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSkuId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2483
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/module/rest/RestHelper;->purchaseItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/store/module/rest/RestResult;

    move-result-object v8

    .line 2484
    .local v8, result:Lcom/htc/store/module/rest/RestResult;
    iget v0, v8, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    .line 2485
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseItemTask: purchase item - result is not success"

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2488
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask: purchase item - result is success"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2489
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSource()I

    move-result v0

    if-ne v0, v13, :cond_5

    .line 2490
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask: purchase item - source is android"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2491
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsNotDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2492
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2494
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    if-eq v0, v13, :cond_7

    .line 2495
    iget-object v6, v8, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2496
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2497
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseItemTask: purchase item - url is null"

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2500
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "PurchaseItemTask: purchase item - url is "

    aput-object v2, v1, v4

    aput-object v6, v1, v13

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2501
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v5

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_1

    .line 2503
    .end local v6           #url:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v11

    check-cast v11, Lcom/htc/store/module/vo/SoundsetItem;

    .line 2504
    .local v11, soundset:Lcom/htc/store/module/vo/SoundsetItem;
    iget-object v0, v8, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v11, v0}, Lcom/htc/store/util/MediaUtils;->parseSoundsetDownloadUrl(Lcom/htc/store/module/vo/SoundsetItem;Ljava/util/HashMap;)Z

    move-result v12

    .line 2505
    .local v12, success:Z
    if-eqz v12, :cond_8

    .line 2506
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v1

    invoke-static {v0, v11, v1}, Lcom/htc/store/util/DownloadUtils;->downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)V

    goto/16 :goto_1

    .line 2508
    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2515
    .end local v8           #result:Lcom/htc/store/module/rest/RestResult;
    .end local v11           #soundset:Lcom/htc/store/module/vo/SoundsetItem;
    .end local v12           #success:Z
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2516
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsDownloadingForUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2519
    :goto_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->sendBroadcastToPicker(Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2900(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V

    goto/16 :goto_1

    .line 2518
    :cond_9
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 2472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2450
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 2539
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: PurchaseItemTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2540
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2541
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_0
    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v1, v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$302(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 2543
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$10800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2544
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->updateActionButton(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$400(Lcom/htc/store/activity/detail/DetailInfo;I)V

    .line 2549
    :cond_0
    :goto_1
    return-void

    .line 2541
    :cond_1
    const/16 v0, 0xb

    goto :goto_0

    .line 2546
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5202(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2450
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2526
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "onProgressUpdate: PurchaseItemTask"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2527
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2528
    .local v0, status:I
    if-ne v0, v5, :cond_1

    .line 2529
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "PurchaseItemTask - no sdcard"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2530
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$10600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const v3, 0x7f0a0031

    invoke-virtual {v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2532
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2533
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "PurchaseItemTask - sdcard is full"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2534
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$10700(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2450
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
