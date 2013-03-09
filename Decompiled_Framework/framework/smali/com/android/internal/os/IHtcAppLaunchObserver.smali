.class public interface abstract Lcom/android/internal/os/IHtcAppLaunchObserver;
.super Ljava/lang/Object;
.source "IHtcAppLaunchObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IHtcAppLaunchObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
