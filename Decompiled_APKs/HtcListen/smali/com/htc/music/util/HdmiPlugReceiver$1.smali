.class Lcom/htc/music/util/HdmiPlugReceiver$1;
.super Landroid/os/Handler;
.source "HdmiPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HdmiPlugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HdmiPlugReceiver;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HdmiPlugReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/HdmiPlugReceiver$1;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/util/HdmiPlugReceiver$1;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    iget-object v1, v1, Lcom/htc/music/util/HdmiPlugReceiver;->mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/HdmiPlugReceiver$1;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    iget-object v2, v1, Lcom/htc/music/util/HdmiPlugReceiver;->mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$1;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    const-string v1, "PLUG-IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;->OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
