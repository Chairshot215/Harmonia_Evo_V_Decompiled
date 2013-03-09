.class Lcom/sprint/ce/updater/UpdaterMain$17;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdates()V
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$15(Lcom/sprint/ce/updater/UpdaterMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-boolean v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    .line 930
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 931
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 932
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 933
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 942
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 937
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 938
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 939
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 940
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$17;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "installing"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    goto :goto_0
.end method
