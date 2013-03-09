.class Lcom/htc/store/activity/detail/DetailInfo$5;
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
    .line 588
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "click button - like"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1100(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->setAccount(Landroid/content/Context;)V

    .line 604
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1300(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HeaderBarImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1300(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HeaderBarImage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1400(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 599
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 601
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$5;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showNoNetworkDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1600(Lcom/htc/store/activity/detail/DetailInfo;)V

    goto :goto_0
.end method
