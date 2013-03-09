.class Lcom/htc/omadm/gui/ext/BaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseDialog onReceive -> Intent = "

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

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.andorid.omadm.gui.inform.normal.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.close"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 121
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 122
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V
    invoke-static {v0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$300(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    .line 123
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->clearShowingDialog()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$400(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.andorid.omadm.gui.inform.high.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.high.close"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 127
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 128
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V
    invoke-static {v0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$300(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    .line 129
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->clearShowingDialog()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$400(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.andorid.omadm.gui.inform.progressbar.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.progressbar.close"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 132
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 133
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V
    invoke-static {v0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$300(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    .line 134
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$1;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->clearProgressBarDialog()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$500(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    goto :goto_0
.end method
