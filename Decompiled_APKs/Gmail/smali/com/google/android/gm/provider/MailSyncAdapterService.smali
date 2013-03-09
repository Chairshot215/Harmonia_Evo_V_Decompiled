.class public Lcom/google/android/gm/provider/MailSyncAdapterService;
.super Landroid/app/Service;
.source "MailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 35
    sget-object v1, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapter:Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    sget-object v1, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapter:Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->sSyncAdapter:Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;

    .line 31
    :cond_0
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
