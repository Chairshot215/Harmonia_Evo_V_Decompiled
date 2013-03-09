.class public interface abstract Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
.super Ljava/lang/Object;
.source "UnlockArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/UnlockArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArcCallback"
.end annotation


# virtual methods
.method public abstract getHint()Ljava/lang/String;
.end method

.method public abstract getScrollHeight()I
.end method

.method public abstract isNeedScroll()Z
.end method

.method public abstract isResume()Z
.end method

.method public abstract isShowECallHint()Z
.end method

.method public abstract isShowHint()Z
.end method

.method public abstract isShowNotification()Z
.end method

.method public abstract onReset()V
.end method

.method public abstract onScroll(I)V
.end method

.method public abstract onShowHint(Z)V
.end method

.method public abstract onTouchDown(FF)V
.end method

.method public abstract onTouchUp(FF)V
.end method

.method public abstract unlock()V
.end method
