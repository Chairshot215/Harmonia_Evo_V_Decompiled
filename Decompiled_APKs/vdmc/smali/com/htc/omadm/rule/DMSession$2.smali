.class Lcom/htc/omadm/rule/DMSession$2;
.super Landroid/os/Handler;
.source "DMSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/rule/DMSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/rule/DMSession;


# direct methods
.method constructor <init>(Lcom/htc/omadm/rule/DMSession;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 839
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 841
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    goto :goto_0

    .line 846
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showConnecting()V

    goto :goto_0

    .line 851
    :pswitch_2
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession$2;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v0, v0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showFail()V

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
