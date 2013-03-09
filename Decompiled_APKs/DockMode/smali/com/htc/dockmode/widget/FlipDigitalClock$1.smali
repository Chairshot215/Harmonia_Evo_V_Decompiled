.class Lcom/htc/dockmode/widget/FlipDigitalClock$1;
.super Landroid/os/Handler;
.source "FlipDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/widget/FlipDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    const-wide/32 v4, 0xea60

    .line 79
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$000(Lcom/htc/dockmode/widget/FlipDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->prepareAnimation()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-boolean v0, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onTimeChanged(Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$100(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    return-void
.end method
