.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    return-void
.end method

.method public static getOrMakeContactsSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
    .locals 2
    .parameter "applicationContext"

    .prologue
    .line 40
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    .line 44
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->getOrMakeContactsSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
