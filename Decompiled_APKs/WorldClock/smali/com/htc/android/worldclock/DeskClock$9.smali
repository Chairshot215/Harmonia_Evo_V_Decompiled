.class Lcom/htc/android/worldclock/DeskClock$9;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$9;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1404
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1405
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$9;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2800(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$9;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 1407
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$9;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->restoreScreen(Z)V
    invoke-static {v0, v2}, Lcom/htc/android/worldclock/DeskClock;->access$2900(Lcom/htc/android/worldclock/DeskClock;Z)V

    .line 1409
    :cond_0
    return v2
.end method
