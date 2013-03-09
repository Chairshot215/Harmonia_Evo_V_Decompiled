.class public Lcom/htc/idlescreen/base/widget/IdleView;
.super Lcom/htc/idlescreen/base/widget/AbstractIdleView;
.source "IdleView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleView"


# instance fields
.field protected mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

.field protected mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Lcom/htc/idlescreen/base/widget/IdleContainer;)V
    .locals 1
    .parameter "context"
    .parameter "scene"
    .parameter "container"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/widget/AbstractIdleView;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mResumed:Z

    .line 33
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 34
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/AbstractIdleView;->mContext:Landroid/content/Context;

    const v1, 0x7f04001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    return-object v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mResumed:Z

    return v0
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mResumed:Z

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleView;->mResumed:Z

    .line 69
    return-void
.end method

.method protected onRingAnimationEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 83
    const-string v0, "IdleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingAnimationEnd name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "drop_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "drop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :cond_0
    return-void
.end method

.method protected onRingAnimationStart(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 92
    const-string v0, "IdleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingAnimationStart name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "touch_bounce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :cond_0
    return-void
.end method

.method protected onRingDragEnd(Z)V
    .locals 3
    .parameter "unlock"

    .prologue
    .line 39
    const-string v0, "IdleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd unlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onRingDragStart()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "IdleView"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "drag"

    .prologue
    .line 56
    const-string v0, "IdleView"

    const-string v1, "onRingDropEnd"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "drag"

    .prologue
    .line 51
    const-string v0, "IdleView"

    const-string v1, "onRingDropStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onRingUnlockEnd()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onRingUnlockStart()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 120
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 117
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 123
    return-void
.end method

.method public popupMenu()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public unlockByRing()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
