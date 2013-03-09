.class Lcom/htc/omadm/gui/ext/DMGui$1;
.super Landroid/os/Handler;
.source "DMGui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/DMGui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/DMGui;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/DMGui;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x1388

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 74
    :pswitch_0
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_START_UI_ACTIVITY:Z

    if-ne v1, v3, :cond_0

    .line 76
    const-string v1, "libgo"

    const-string v2, "DMGui: mUIRetryHandler retryStartUI"

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    iget-object v1, v1, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mUIRetryIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMGui;->access$000(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMGui;->access$100(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMGui;->access$100(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 84
    :pswitch_1
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    if-ne v1, v3, :cond_1

    .line 86
    const-string v1, "libgo"

    const-string v2, "DMGui: mUIRetryHandler resumeUI"

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, sendIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    iget-object v1, v1, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    iget-object v1, v1, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMGui;->access$100(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 95
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui$1;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMGui;->access$100(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
