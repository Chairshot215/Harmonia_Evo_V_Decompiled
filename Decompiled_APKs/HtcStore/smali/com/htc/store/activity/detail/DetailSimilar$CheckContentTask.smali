.class Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;
.super Landroid/os/AsyncTask;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsForceUpdate:Z

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;Z)V
    .locals 3
    .parameter
    .parameter "isForceUpdate"

    .prologue
    const/4 v2, 0x0

    .line 509
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 507
    iput-boolean v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->mIsForceUpdate:Z

    .line 510
    iput-boolean p2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->mIsForceUpdate:Z

    .line 511
    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 512
    return-void
.end method

.method private updateItemStatus()V
    .locals 9

    .prologue
    .line 598
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 599
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 600
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 601
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 606
    :goto_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 607
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 611
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/MyActivityItem;

    .line 612
    .local v2, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, onlineId:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 615
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 604
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v3           #onlineId:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2802(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 609
    :cond_1
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2902(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_1

    .line 617
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/htc/store/module/vo/MyActivityItem;
    .restart local v3       #onlineId:Ljava/lang/String;
    .restart local v4       #packageName:Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 618
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 620
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Both onlineId and packageName are empty."

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 626
    .end local v0           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v3           #onlineId:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 516
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "CheckContentTask : doInBackground"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    const/4 v0, -0x1

    .line 518
    .local v0, action:I
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v2, Lcom/htc/store/provider/AccessHelper;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1500(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$502(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v2

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1602(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 525
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1602(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->updateItemStatus()V

    .line 531
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->isItemDataExpired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    const/4 v0, 0x1

    .line 533
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "similar item is expired"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 534
    :cond_3
    iget-boolean v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->mIsForceUpdate:Z

    if-eqz v1, :cond_4

    .line 535
    const/4 v0, 0x1

    .line 536
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "similar item is not expired, but force updated"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->isSimilarItemsClean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 540
    const/4 v0, 0x1

    .line 541
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "not expired, but not clean, re-get"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/store/provider/AccessHelper;->getSimilarItemsByOnlineId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1702(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 544
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v1

    if-nez v1, :cond_6

    .line 545
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v2, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;I)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1802(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    .line 547
    :cond_6
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 548
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, " similar items are retrieved from database"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->insertItems(Ljava/util/ArrayList;)V

    .line 550
    const/4 v0, 0x2

    .line 551
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "not expired, but clean; just download it"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CheckContentTask : onCancelled"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    aput-boolean v3, v0, v3

    .line 592
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 593
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 594
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 595
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 561
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "CheckContentTask : onPostExecute, action is "

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    aput-boolean v5, v0, v5

    .line 563
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1900(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2000(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2100(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 565
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2202(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;)Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    .line 566
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2200(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 567
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 568
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 586
    return-void

    .line 569
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 570
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadIcon()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2300(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->start()V

    .line 572
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 573
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2400(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadCommentLikeInfo()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2500(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2602(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    .line 577
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2600(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 578
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 579
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
