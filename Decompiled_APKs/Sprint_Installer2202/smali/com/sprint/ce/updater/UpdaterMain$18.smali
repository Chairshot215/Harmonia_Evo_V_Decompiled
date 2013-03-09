.class Lcom/sprint/ce/updater/UpdaterMain$18;
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

.field private final synthetic val$downloadException:Z


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-boolean p2, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->val$downloadException:Z

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->clearProgressBar()V
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$16(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 977
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 978
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadStatusMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadStatusMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadStatusMsg:Ljava/lang/String;

    .line 986
    :goto_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mDownloadAndInstall:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$6(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 990
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->val$downloadException:Z

    if-eqz v0, :cond_3

    .line 991
    const v0, 0x7f05000a

    .line 990
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 993
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 994
    return-void

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain$18;->val$downloadException:Z

    if-eqz v0, :cond_2

    .line 983
    const v0, 0x7f05000b

    .line 982
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 984
    :cond_2
    const v0, 0x7f05000d

    goto :goto_2

    .line 992
    :cond_3
    const v0, 0x7f05000c

    goto :goto_1
.end method
