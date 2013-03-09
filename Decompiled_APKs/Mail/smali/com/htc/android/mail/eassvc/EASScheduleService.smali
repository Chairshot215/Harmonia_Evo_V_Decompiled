.class public Lcom/htc/android/mail/eassvc/EASScheduleService;
.super Landroid/app/Service;
.source "EASScheduleService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EASScheduleService"

.field public static mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

.field public static final object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static releaseScheduleWakeLock()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "EASScheduleService"

    const-string v1, "- releaseScheduleWakeLock()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/htc/android/mail/eassvc/EASScheduleService;->object:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "EASScheduleService"

    const-string v2, "- releaseScheduleWakeLock(): mWakeLock != null"

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 64
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
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
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    const-string v0, "EASScheduleService"

    const-string v1, "- onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 27
    const-string v0, "EASScheduleService"

    const-string v1, "- onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string v0, "EASScheduleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onStart(), intent = null , ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/eassvc/EASScheduleService;->stopSelf(I)V

    .line 50
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "EASScheduleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onStart(), intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/htc/android/mail/eassvc/EASScheduleService;->object:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-nez v0, :cond_1

    .line 43
    const-string v0, "ScheduleServiceLock"

    invoke-static {p0, v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASScheduleService;->mWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 45
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/EASScheduleService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/eassvc/EASScheduleService;->stopSelf(I)V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
