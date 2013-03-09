.class public interface abstract Lcom/htc/lockscreen/app/LSState$Callback;
.super Ljava/lang/Object;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract backToLock()V
.end method

.method public abstract getLockScreenScreenState()Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
.end method

.method public abstract getLockScreenViewMode()I
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isKeyguardShow()Z
.end method

.method public abstract onUIReady()V
.end method

.method public abstract recreatMe()V
.end method

.method public abstract unlock(I)V
.end method
