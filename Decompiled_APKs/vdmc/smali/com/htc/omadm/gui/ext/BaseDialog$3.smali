.class Lcom/htc/omadm/gui/ext/BaseDialog$3;
.super Landroid/os/Handler;
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
    .line 155
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$3;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const-string v0, "libgo"

    const-string v1, "Cancel AutoResumeForegroundTimer."

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$3;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$700(Lcom/htc/omadm/gui/ext/BaseDialog;)Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$3;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$700(Lcom/htc/omadm/gui/ext/BaseDialog;)Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->cancel()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
