.class Lcom/htc/omadm/gui/ext/BaseDialog$5;
.super Landroid/telephony/PhoneStateListener;
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
    .line 187
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$5;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 204
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$5;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #setter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneMode:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$902(Lcom/htc/omadm/gui/ext/BaseDialog;Z)Z

    .line 193
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$5;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1000(Lcom/htc/omadm/gui/ext/BaseDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$5;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #setter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneMode:Z
    invoke-static {v0, v2}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$902(Lcom/htc/omadm/gui/ext/BaseDialog;Z)Z

    .line 198
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$5;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1000(Lcom/htc/omadm/gui/ext/BaseDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
