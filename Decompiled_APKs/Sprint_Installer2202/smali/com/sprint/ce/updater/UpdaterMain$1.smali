.class Lcom/sprint/ce/updater/UpdaterMain$1;
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 453
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "mUpdateLauncher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "initialized"

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "downloading"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z
    invoke-static {v0, v2}, Lcom/sprint/ce/updater/UpdaterMain;->access$0(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    .line 457
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 458
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 459
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050023

    const v2, 0x7f050011

    const v3, 0x7f050003

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 460
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdatesAsync()V

    .line 470
    :goto_0
    return-void

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 464
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 465
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z
    invoke-static {v0, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$0(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    .line 467
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$1;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPackageName:Ljava/lang/String;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->removeUpdatePackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$2(Lcom/sprint/ce/updater/UpdaterMain;Ljava/lang/String;)V

    goto :goto_0
.end method
