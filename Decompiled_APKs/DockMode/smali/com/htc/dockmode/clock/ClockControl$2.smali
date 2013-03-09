.class Lcom/htc/dockmode/clock/ClockControl$2;
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
    .line 190
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$2;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$2;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$000(Lcom/htc/dockmode/clock/ClockControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$2;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->resumeTime()V
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$400(Lcom/htc/dockmode/clock/ClockControl;)V

    goto :goto_0
.end method
