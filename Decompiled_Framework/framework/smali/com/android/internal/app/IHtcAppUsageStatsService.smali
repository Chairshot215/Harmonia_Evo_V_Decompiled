.class public interface abstract Lcom/android/internal/app/IHtcAppUsageStatsService;
.super Ljava/lang/Object;
.source "IHtcAppUsageStatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteAppDied(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notePauseActivity(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteResumeActivity(ILjava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
