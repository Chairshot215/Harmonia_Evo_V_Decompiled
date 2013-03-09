.class Lcom/htc/syncagent/activity/HTCStatusActivity$4;
.super Ljava/lang/Object;
.source "HTCStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/syncagent/activity/HTCStatusActivity;->showStatusDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$4;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 233
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialog key press: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 236
    const-string v0, "FDUI"

    .line 237
    const-string v1, "back key is pressed."

    .line 236
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    .line 239
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    .line 240
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$4;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-virtual {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->finish()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
