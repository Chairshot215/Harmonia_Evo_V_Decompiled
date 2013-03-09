.class Lcom/sprint/ce/updater/UpdaterMain$21;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1176
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->clearProgressBar()V
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$16(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 1177
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1179
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mDownloadAndInstall:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$6(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$21;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 1183
    return-void
.end method
