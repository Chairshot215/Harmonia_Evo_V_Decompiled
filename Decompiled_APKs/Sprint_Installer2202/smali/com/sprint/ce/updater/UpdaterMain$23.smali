.class Lcom/sprint/ce/updater/UpdaterMain$23;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->initProgressBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;

.field private final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput p2, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->val$length:I

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1306
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1307
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->val$length:I

    if-lez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1309
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->val$length:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1310
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1311
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1316
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1314
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$23;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method
