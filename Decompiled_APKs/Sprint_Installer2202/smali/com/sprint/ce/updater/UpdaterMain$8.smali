.class Lcom/sprint/ce/updater/UpdaterMain$8;
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 718
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "mUpdateCheckDone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 720
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 721
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 723
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 733
    :goto_1
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterMain;->access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050015

    const v2, 0x104000a

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/sprint/ce/updater/UpdaterMain;->access$7(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 731
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$8;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
