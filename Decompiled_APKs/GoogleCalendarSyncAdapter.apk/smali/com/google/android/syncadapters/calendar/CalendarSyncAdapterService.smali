.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 36
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    .line 40
    :cond_0
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
