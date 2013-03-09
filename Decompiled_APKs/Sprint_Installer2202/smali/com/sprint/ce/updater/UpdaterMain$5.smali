.class Lcom/sprint/ce/updater/UpdaterMain$5;
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 627
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 628
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 629
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$5;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 631
    :cond_0
    return-void
.end method
