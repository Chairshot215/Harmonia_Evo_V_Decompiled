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

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->answerCall(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->rejectCall(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->silentCall(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v2, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->sendMessage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
