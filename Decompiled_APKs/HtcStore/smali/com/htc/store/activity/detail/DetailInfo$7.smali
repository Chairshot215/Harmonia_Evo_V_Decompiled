.class Lcom/htc/store/activity/detail/DetailInfo$7;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "click button - update"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2000(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->setAccount(Landroid/content/Context;)V

    .line 650
    :cond_0
    :goto_1
    return-void

    .line 621
    :cond_1
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "click button - download"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2200(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 628
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 643
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v0, v1, v5}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 631
    :pswitch_0
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v0, v1, v5}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 632
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSource()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/ActivityUtils;->detailMarketApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/detail/DetailInfo;->showDialog(I)V

    goto :goto_1

    .line 639
    :cond_3
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v0, v1, v5}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 647
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$7;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showNoNetworkDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2500(Lcom/htc/store/activity/detail/DetailInfo;)V

    goto/16 :goto_1

    .line 628
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
