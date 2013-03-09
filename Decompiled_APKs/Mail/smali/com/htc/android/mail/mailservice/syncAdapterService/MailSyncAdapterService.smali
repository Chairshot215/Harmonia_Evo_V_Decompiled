.class public Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;
.super Landroid/app/Service;
.source "MailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;,
        Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailSyncAdapterService"

.field private static sSyncAdapter:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->DEBUG:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 54
    new-instance v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    sget-object v1, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->sSyncAdapter:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;

    .line 48
    :cond_0
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
