.class Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;
.super Landroid/os/Handler;
.source "FxIdleScreenEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;->this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x186a1

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;->this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->updateRenderable()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
    .end packed-switch
.end method
