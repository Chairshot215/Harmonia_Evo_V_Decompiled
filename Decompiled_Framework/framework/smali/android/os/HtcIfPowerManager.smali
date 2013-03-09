.class public interface abstract Landroid/os/HtcIfPowerManager;
.super Ljava/lang/Object;
.source "HtcIfPowerManager.java"


# static fields
.field public static final HTC_DVCS_PREFIX:Ljava/lang/String; = "HTC_DVCS_"


# virtual methods
.method public abstract getProximitySensorActive()Z
.end method

.method public abstract preventScreenOn(Z)V
.end method

.method public abstract setAttentionLight(ZI)V
.end method

.method public abstract setAutoBrightnessOffset(ILjava/lang/String;)V
.end method

.method public abstract setBacklightBrightness(I)V
.end method

.method public abstract setNightMode(Z)V
.end method

.method public abstract setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract timeSinceScreenOn()J
.end method

.method public abstract userActivityWithForce(JZZ)V
.end method

.method public abstract userActivityWithScreenDelay(JZIII)V
.end method
