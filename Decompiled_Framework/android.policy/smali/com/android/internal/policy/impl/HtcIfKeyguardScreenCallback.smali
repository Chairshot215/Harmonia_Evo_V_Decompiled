.class public interface abstract Lcom/android/internal/policy/impl/HtcIfKeyguardScreenCallback;
.super Ljava/lang/Object;
.source "HtcIfKeyguardScreenCallback.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;
.implements Lcom/android/internal/policy/impl/HtcIfKeyguardViewCallback;


# virtual methods
.method public abstract forceStopFaceLock()V
.end method

.method public abstract goToUnlockScreen(I)V
.end method

.method public abstract isLockScreen()Z
.end method

.method public abstract recreateAll(Landroid/content/res/Configuration;)V
.end method

.method public abstract setPokeWakeLockTime(I)V
.end method

.method public abstract setScreenOrientation(I)V
.end method

.method public abstract setShowAnimation(Z)V
.end method

.method public abstract setShowLiveWallpaper(Z)V
.end method

.method public abstract showUnlockScreen(ZZ)V
.end method
