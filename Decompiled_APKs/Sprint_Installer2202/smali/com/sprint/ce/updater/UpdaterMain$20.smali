.class Lcom/sprint/ce/updater/UpdaterMain$20;
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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$20;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1157
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$20;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$20;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$20;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v1, 0x7f050016

    const v2, 0x104000a

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 1160
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$20;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v1, "completed"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 1161
    return-void
.end method
