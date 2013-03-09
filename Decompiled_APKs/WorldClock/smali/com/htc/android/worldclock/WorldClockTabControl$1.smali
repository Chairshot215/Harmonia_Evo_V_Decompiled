.class Lcom/htc/android/worldclock/WorldClockTabControl$1;
.super Ljava/lang/Object;
.source "WorldClockTabControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClockTabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClockTabControl;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/WorldClockTabControl;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClockTabControl$1;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 411
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 412
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl$1;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    #getter for: Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->access$100(Lcom/htc/android/worldclock/WorldClockTabControl;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl$1;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    #getter for: Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->access$100(Lcom/htc/android/worldclock/WorldClockTabControl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 420
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 421
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 425
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 426
    return-void
.end method
