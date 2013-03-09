.class public interface abstract Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageStatusListener"
.end annotation


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;)V
.end method

.method public abstract onPackageAvailabilityChanged([Ljava/lang/String;Z)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;)V
.end method

.method public abstract onPackageFirstLaunch(Ljava/lang/String;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Z)V
.end method
