.class public Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.source "HtcWrapKeyguardUpdateMonitor.java"


# static fields
.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLock()Z

    move-result v0

    return v0
.end method

.method public getDeviceLockType()I
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFlyHeight()I

    move-result v0

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPasswordTimeout()Z

    move-result v0

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v0

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v0

    return v0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnlockType()I

    move-result v0

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isShowCallDeclinedAnimation()Z

    move-result v0

    return v0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isWaitFirstFrame()Z

    move-result v0

    return v0
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 26
    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 27
    return-void
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    .line 52
    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 115
    return-void
.end method

.method public setKeyboardFly(Z)V
    .locals 0
    .parameter "bFly"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    .line 107
    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPasswordTimeout(Z)V

    .line 88
    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowCallDeclinedAnimation(Z)V

    .line 103
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowing(Z)V

    .line 63
    return-void
.end method

.method public setUnlockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    .line 124
    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    .line 132
    return-void
.end method

.method public updateNetworkLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 44
    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 0
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 36
    return-void
.end method
