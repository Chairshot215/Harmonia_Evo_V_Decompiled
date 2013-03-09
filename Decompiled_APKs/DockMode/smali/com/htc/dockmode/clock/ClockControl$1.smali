.class Lcom/htc/dockmode/clock/ClockControl$1;
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
    .line 181
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$1;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$1;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$000(Lcom/htc/dockmode/clock/ClockControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$1;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->loadFormatAndScale()V
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$100(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 186
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$1;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$300(Lcom/htc/dockmode/clock/ClockControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$1;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mRefreshTime:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$200(Lcom/htc/dockmode/clock/ClockControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
