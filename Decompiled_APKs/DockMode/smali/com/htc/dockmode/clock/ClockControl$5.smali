.class Lcom/htc/dockmode/clock/ClockControl$5;
.super Ljava/lang/Object;
.source "ClockControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 296
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$5;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl$5;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->goToClock()V
    invoke-static {v0}, Lcom/htc/dockmode/clock/ClockControl;->access$900(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 300
    return-void
.end method
