.class Lcom/htc/store/activity/detail/DetailInfo$2;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/detail/DetailInfo;->getDialogHomeResetWidget(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;

.field final synthetic val$toUpdate:Z


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iput-boolean p2, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->val$toUpdate:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->val$toUpdate:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$2;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/InstallationUtils;->unInstallApk(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V

    goto :goto_0
.end method
