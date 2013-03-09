.class Lcom/htc/android/worldclock/Stopwatch$13;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$13;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public onReset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 733
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 734
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$13;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-static {v0, p1}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 735
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$13;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStopwatchResUtils:Lcom/htc/android/worldclock/StopwatchResUtils;
    invoke-static {v0}, Lcom/htc/android/worldclock/Stopwatch;->access$2000(Lcom/htc/android/worldclock/Stopwatch;)Lcom/htc/android/worldclock/StopwatchResUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/worldclock/StopwatchResUtils;->resetLayout()V

    .line 736
    return-void
.end method
