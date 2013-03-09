.class public interface abstract Lcom/android/internal/policy/impl/LockPatternKeyguardView$IKeyguardScreenCallback;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKeyguardScreenCallback"
.end annotation


# virtual methods
.method public abstract clearIdleScreen()V
.end method

.method public abstract getIdleScreenLabel()Ljava/lang/String;
.end method

.method public abstract hideIdleScreen()V
.end method

.method public abstract onScreenPause()V
.end method

.method public abstract onScreenRestart()V
.end method

.method public abstract setIdleScreen(Landroid/content/ComponentName;)V
.end method

.method public abstract showIdleScreen()V
.end method
