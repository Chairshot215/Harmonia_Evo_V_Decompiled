.class Lcom/htc/omadm/gui/ext/BaseDialog$2;
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
    .line 139
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$2;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$2;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const/4 v1, 0x1

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->onChangeCallState(Z)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$600(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$2;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const/4 v1, 0x0

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->onChangeCallState(Z)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$600(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
