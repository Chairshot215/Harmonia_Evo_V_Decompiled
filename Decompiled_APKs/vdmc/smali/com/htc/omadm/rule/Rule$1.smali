.class Lcom/htc/omadm/rule/Rule$1;
.super Landroid/content/BroadcastReceiver;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/rule/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/rule/Rule;


# direct methods
.method constructor <init>(Lcom/htc/omadm/rule/Rule;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/omadm/rule/Rule$1;->this$0:Lcom/htc/omadm/rule/Rule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BROADCAST_KEYEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BROADCAST_MOTIONEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BROADCAST_TRACKBALLEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule$1;->this$0:Lcom/htc/omadm/rule/Rule;

    iget-boolean v0, v0, Lcom/htc/omadm/rule/Rule;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRL: onReceive -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule$1;->this$0:Lcom/htc/omadm/rule/Rule;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisplayDialog(Z)V

    .line 267
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule$1;->this$0:Lcom/htc/omadm/rule/Rule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/rule/Rule;->turnOnOffBroadcastKeyMotionEvent(Z)V

    .line 268
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule$1;->this$0:Lcom/htc/omadm/rule/Rule;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-static {v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showHiddenDialog(Lcom/htc/omadm/gui/SprintGuiPrototype;)V

    .line 270
    :cond_2
    return-void
.end method
