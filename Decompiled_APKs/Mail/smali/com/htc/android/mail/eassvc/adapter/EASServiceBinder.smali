.class public Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;
.super Ljava/lang/Object;
.source "EASServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder$BindCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EASServiceBinder"

.field private static bindLock:Ljava/lang/Object;

.field private static bindServiceBlock:Landroid/os/ConditionVariable;

.field private static isBind:Z

.field private static mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private static mSvcConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->DEBUG:Z

    .line 27
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindServiceBlock:Landroid/os/ConditionVariable;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindLock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->isBind:Z

    .line 36
    new-instance v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mSvcConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    sput-object p0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindServiceBlock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    sput-boolean p0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->isBind:Z

    return p0
.end method

.method public static bindService(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 53
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASServiceBinder"

    const-string v1, "bindService()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    sget-object v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindServiceBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    sget-boolean v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EASServiceBinder"

    const-string v2, "Fail to bind EAS AppSvc!"

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getEASService()Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindServiceBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 84
    sget-object v0, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method public static unbindService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    sget-boolean v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASServiceBinder"

    const-string v2, "unbindService()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    sget-object v2, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindLock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    sget-boolean v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->isBind:Z

    if-eqz v1, :cond_1

    .line 69
    sget-object v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindServiceBlock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->isBind:Z

    .line 77
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 79
    :cond_1
    monitor-exit v2

    .line 80
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
