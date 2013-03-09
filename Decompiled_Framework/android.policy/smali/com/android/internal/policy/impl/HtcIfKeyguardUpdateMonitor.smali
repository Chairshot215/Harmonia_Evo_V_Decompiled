.class public interface abstract Lcom/android/internal/policy/impl/HtcIfKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "HtcIfKeyguardUpdateMonitor.java"


# static fields
.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I


# virtual methods
.method public abstract getAvailableTimeStamp()J
.end method

.method public abstract getDeviceLock()Z
.end method

.method public abstract getDeviceLockType()I
.end method

.method public abstract getIccDetailStatus()[I
.end method

.method public abstract getKeyboardFly()Z
.end method

.method public abstract getNetowrkServiceStatus()I
.end method

.method public abstract getNetworkLockType()I
.end method

.method public abstract getPasswordTimeout()Z
.end method

.method public abstract getPinEnable()Z
.end method

.method public abstract getShowing()Z
.end method

.method public abstract getUnlockType()I
.end method

.method public abstract isShowCallDeclinedAnimation()Z
.end method

.method public abstract isWaitFirstFrame()Z
.end method

.method public abstract registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
.end method

.method public abstract reportAvailableTimeStamp(J)V
.end method

.method public abstract setKeyboardFly(I)V
.end method

.method public abstract setKeyboardFly(Z)V
.end method

.method public abstract setPasswordTimeout(Z)V
.end method

.method public abstract setShowCallDeclinedAnimation(Z)V
.end method

.method public abstract setShowing(Z)V
.end method

.method public abstract setUnlockType(I)V
.end method

.method public abstract setWaitFirstFrame(Z)V
.end method

.method public abstract updateNetworkLockType(I)V
.end method

.method public abstract updateSimDetailStatus(II)V
.end method
