.class final Lcom/google/android/finsky/services/ContentSyncService$4;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncService;->setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 121
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    .line 122
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 136
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    .line 137
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 132
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 142
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    .line 127
    return-void
.end method
