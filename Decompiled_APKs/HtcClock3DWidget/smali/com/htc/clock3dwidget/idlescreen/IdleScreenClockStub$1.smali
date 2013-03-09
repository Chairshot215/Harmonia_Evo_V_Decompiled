.class Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;
.super Landroid/os/Handler;
.source "IdleScreenClockStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    #calls: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doCreate()V
    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->access$100(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    #calls: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doResume()V
    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->access$200(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    #calls: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doPause()V
    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->access$300(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
