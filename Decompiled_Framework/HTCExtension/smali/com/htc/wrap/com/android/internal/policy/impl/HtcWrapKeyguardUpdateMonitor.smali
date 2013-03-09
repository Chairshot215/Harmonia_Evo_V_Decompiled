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

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAvailableTimeStamp()J
    .locals 2

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceLock()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLock()Z

    move-result v0

    return v0
.end method

.method public getDeviceLockType()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFlyHeight()I

    move-result v0

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPasswordTimeout()Z

    move-result v0

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v0

    return v0
.end method

.method public getShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v0

    return v0
.end method

.method public getUnlockType()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnlockType()I

    move-result v0

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isShowCallDeclinedAnimation()Z

    move-result v0

    return v0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isWaitFirstFrame()Z

    move-result v0

    return v0
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 0

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    return-void
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    return-void
.end method

.method public setKeyboardFly(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPasswordTimeout(Z)V

    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowCallDeclinedAnimation(Z)V

    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowing(Z)V

    return-void
.end method

.method public setUnlockType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    return-void
.end method

.method public updateNetworkLockType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    return-void
.end method
