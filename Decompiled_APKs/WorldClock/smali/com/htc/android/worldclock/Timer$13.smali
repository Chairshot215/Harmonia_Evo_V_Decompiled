.class Lcom/htc/android/worldclock/Timer$13;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$13;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu()V
    .locals 0

    .prologue
    .line 963
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 964
    return-void
.end method

.method public onReset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 956
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 957
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$13;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0, p1}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$13;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mTimerResUtils:Lcom/htc/android/worldclock/TimerResUtils;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$3200(Lcom/htc/android/worldclock/Timer;)Lcom/htc/android/worldclock/TimerResUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimerResUtils;->resetLayout()V

    .line 959
    return-void
.end method
