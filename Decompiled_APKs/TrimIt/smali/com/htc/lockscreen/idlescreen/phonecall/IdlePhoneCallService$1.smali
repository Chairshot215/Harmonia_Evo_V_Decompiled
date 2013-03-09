.class Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;
.super Landroid/os/Handler;
.source "IdlePhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 34
    iget v1, p1, Landroid/os/Message;->what:I

    .line 35
    .local v1, what:I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 36
    .local v0, callId:I
    packed-switch v1, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->answerCall(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->rejectCall(I)V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->silentCall(I)V

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->sendMessage(I)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
