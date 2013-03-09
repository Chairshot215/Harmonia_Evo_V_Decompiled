.class Lcom/sprint/ce/updater/UpdaterMain$4;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;
    .locals 1
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    new-instance v1, Lcom/sprint/ce/updater/UpdaterMain$4$1;

    invoke-direct {v1, p0}, Lcom/sprint/ce/updater/UpdaterMain$4$1;-><init>(Lcom/sprint/ce/updater/UpdaterMain$4;)V

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 553
    :cond_1
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SprintUpdater"

    const-string v1, "mUpdateCheckDoneAlt 2"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050015

    const v2, 0x104000a

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/sprint/ce/updater/UpdaterMain;->access$7(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 557
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050009

    const v2, 0x7f050018

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/sprint/ce/updater/UpdaterMain;->access$7(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 561
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveRetry:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$8(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
