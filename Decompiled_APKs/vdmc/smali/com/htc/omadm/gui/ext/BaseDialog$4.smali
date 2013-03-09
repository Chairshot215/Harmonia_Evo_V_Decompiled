.class Lcom/htc/omadm/gui/ext/BaseDialog$4;
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
    .line 172
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$4;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const-string v0, "libgo"

    const-string v1, "Cancel DialogMessageChangeTimer."

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$4;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$800(Lcom/htc/omadm/gui/ext/BaseDialog;)Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->cancel()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
