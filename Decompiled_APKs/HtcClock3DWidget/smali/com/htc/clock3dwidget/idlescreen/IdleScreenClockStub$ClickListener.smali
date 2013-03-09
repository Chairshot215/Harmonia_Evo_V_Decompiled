.class Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleScreenClockStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;-><init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 164
    const-string v0, "Touch bounce clicked~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 165
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    #getter for: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxTimelineTouch:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->access$400(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    #getter for: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxTimelineTouch:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->access$400(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    const-string v1, "touch_bounce"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 162
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
