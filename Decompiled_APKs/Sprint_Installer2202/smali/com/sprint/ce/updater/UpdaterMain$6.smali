.class Lcom/sprint/ce/updater/UpdaterMain$6;
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 690
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "mDownloadAndInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    .line 692
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 693
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 694
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050023

    const v2, 0x7f050011

    const v3, 0x7f050003

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 695
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdatesAsync()V

    .line 696
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$6;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    return-void
.end method
