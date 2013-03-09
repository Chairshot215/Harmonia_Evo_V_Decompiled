.class public Lcom/htc/resetnotify/ResetNotifyService;
.super Landroid/app/Service;
.source "ResetNotifyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/resetnotify/ResetNotifyService$1;,
        Lcom/htc/resetnotify/ResetNotifyService$Runner;,
        Lcom/htc/resetnotify/ResetNotifyService$FLOG;
    }
.end annotation


# static fields
.field private static final LAST_KMSG_PATH:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LOCAL_LOGV:Z = false

.field static final TAG:Ljava/lang/String; = "ResetNotifyService"

.field private static isRadioCrash:Z


# instance fields
.field private final ZIP_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/resetnotify/ResetNotifyService;->isRadioCrash:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const-string v0, "KernelFeedback.zip"

    iput-object v0, p0, Lcom/htc/resetnotify/ResetNotifyService;->ZIP_FILE_NAME:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/resetnotify/ResetNotifyService;->isRadioCrash:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-boolean p0, Lcom/htc/resetnotify/ResetNotifyService;->isRadioCrash:Z

    return p0
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
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "ResetNotifyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "com.htc.resetnotify.resetnotifyservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/resetnotify/ResetNotifyService$Runner;

    invoke-direct {v2, p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;-><init>(Lcom/htc/resetnotify/ResetNotifyService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
