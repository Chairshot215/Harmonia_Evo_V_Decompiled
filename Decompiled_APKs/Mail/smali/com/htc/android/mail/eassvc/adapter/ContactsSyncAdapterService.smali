.class public Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "htc_EAS_ContactsSyncAdapterService"

.field private static sSyncAdapter:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->DEBUG:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 145
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 125
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "htc_EAS_ContactsSyncAdapterService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 127
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;

    .line 128
    sget-object v1, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 132
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindService(Landroid/content/Context;)V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "htc_EAS_ContactsSyncAdapterService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->unbindService(Landroid/content/Context;)V

    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    return-void
.end method
