.class Lcom/sprint/ce/updater/UpdaterMain$14$1;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/ce/updater/UpdaterMain$14;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "performUpdateCheck:connectionerror"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 795
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 796
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 797
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v1

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveRetry:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$8(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 799
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$14;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$14;->access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 800
    return-void
.end method
