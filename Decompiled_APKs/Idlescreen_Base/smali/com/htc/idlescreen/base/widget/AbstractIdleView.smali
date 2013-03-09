.class public abstract Lcom/htc/idlescreen/base/widget/AbstractIdleView;
.super Ljava/lang/Object;
.source "AbstractIdleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "AbstractIdleView"

.field protected static final WHAT_MESSAGE_END:I = 0x3e8


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mScene:Lcom/htc/fusion/fx/FxScene;

.field private mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;->NONE:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    .line 38
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 39
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "AbstractIdleView"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 48
    :cond_0
    return-void
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public gotoPause(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;->PAUSE:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    if-eq v0, v1, :cond_0

    .line 63
    sget-object v0, Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;->PAUSE:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->onPause(Landroid/content/Context;I)V

    .line 66
    :cond_0
    return-void
.end method

.method public gotoResume(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;->RESUME:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    if-eq v0, v1, :cond_0

    .line 56
    sget-object v0, Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;->RESUME:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mState:Lcom/htc/idlescreen/base/widget/AbstractIdleView$ViewState;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->onResume(Landroid/content/Context;I)V

    .line 59
    :cond_0
    return-void
.end method

.method public abstract isResume()Z
.end method

.method protected abstract onPause()V
.end method

.method protected onPause(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->onPause()V

    .line 71
    return-void
.end method

.method protected abstract onResume()V
.end method

.method protected onResume(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->reset()V

    .line 76
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->onResume()V

    .line 77
    return-void
.end method

.method protected abstract onRingAnimationEnd(Ljava/lang/String;)V
.end method

.method protected abstract onRingAnimationStart(Ljava/lang/String;)V
.end method

.method protected abstract onRingDragEnd(Z)V
.end method

.method protected abstract onRingDragStart()V
.end method

.method protected abstract onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
.end method

.method protected abstract onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
.end method

.method protected abstract onRingUnlockEnd()V
.end method

.method protected abstract onRingUnlockStart()V
.end method

.method public onTouchEvent(III)V
    .locals 0
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 83
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
