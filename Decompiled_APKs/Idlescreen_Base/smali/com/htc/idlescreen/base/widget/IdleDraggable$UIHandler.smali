.class Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;
.super Landroid/os/Handler;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    .line 555
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 556
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 559
    iget v2, p1, Landroid/os/Message;->what:I

    .line 560
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 577
    :goto_0
    :pswitch_0
    return-void

    .line 562
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .line 563
    .local v1, touchMsg:Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-virtual {v3, v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleTouchEvent(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    goto :goto_0

    .line 566
    .end local v1           #touchMsg:Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;

    .line 567
    .local v0, moveMsg:Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #calls: Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleMoveEvent(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    invoke-static {v3, v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$500(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V

    goto :goto_0

    .line 570
    .end local v0           #moveMsg:Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;
    :pswitch_3
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #calls: Lcom/htc/idlescreen/base/widget/IdleDraggable;->handleBackEvent()V
    invoke-static {v3}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$600(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    goto :goto_0

    .line 573
    :pswitch_4
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$UIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onEndBack()V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
