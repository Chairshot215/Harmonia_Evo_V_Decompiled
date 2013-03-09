.class Lcom/htc/dockmode/clock/ClockControl$4;
.super Ljava/lang/Object;
.source "ClockControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/clock/ClockControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/clock/ClockControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$4;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/32 v3, 0xea60

    .line 236
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$4;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$000(Lcom/htc/dockmode/clock/ClockControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$4;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshAlarm()V
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$600(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 239
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$4;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    rem-long/2addr v1, v3

    sub-long v1, v3, v1

    #calls: Lcom/htc/dockmode/clock/ClockControl;->scheduleAlarmDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/clock/ClockControl;->access$800(Lcom/htc/dockmode/clock/ClockControl;J)V

    goto :goto_0
.end method
