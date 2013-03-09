.class Lcom/htc/omadm/gui/ext/ExistDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ExistDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/ExistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/ExistDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/ExistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$000(Lcom/htc/omadm/gui/ext/ExistDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$200(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BaseDialog onReceive -> Intent = "

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

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$1;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #calls: Lcom/htc/omadm/gui/ext/ExistDialog;->callDismissFinish()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$300(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    .line 68
    return-void
.end method
