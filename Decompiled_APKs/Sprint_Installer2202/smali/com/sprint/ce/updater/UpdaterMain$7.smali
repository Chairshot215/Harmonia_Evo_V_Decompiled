.class Lcom/sprint/ce/updater/UpdaterMain$7;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 703
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "mInteractiveRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 705
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 706
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050017

    const/high16 v2, 0x104

    const/4 v3, 0x0

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 707
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mResponse:Lcom/sprint/ce/updater/Response;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterMain;->access$9(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->access$10(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V

    .line 710
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$7;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    return-void
.end method
