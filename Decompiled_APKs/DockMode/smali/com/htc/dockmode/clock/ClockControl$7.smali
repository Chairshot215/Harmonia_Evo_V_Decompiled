.class Lcom/htc/dockmode/clock/ClockControl$7;
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
    .line 360
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$7;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$7;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->getAllDisplayAlarm()V
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$1000(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 366
    return-void
.end method
