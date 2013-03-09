.class public Lcom/htc/android/mail/huxservice/HuxManagerService;
.super Landroid/app/Service;
.source "HuxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;,
        Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxManagerService"


# instance fields
.field private final mBinder:Lcom/htc/android/pim/hux/IHuxManager$Stub;

.field private mContext:Landroid/content/Context;

.field private mGetPinLock:Ljava/lang/Object;

.field public mRequestHandler:Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;

.field public mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;-><init>(Lcom/htc/android/mail/huxservice/HuxManagerService;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mBinder:Lcom/htc/android/pim/hux/IHuxManager$Stub;

    .line 28
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/huxservice/HuxManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/huxservice/HuxManagerService;)Lcom/htc/android/pim/hux/HuxProvResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxManagerService;->getPin()Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/huxservice/HuxManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;

    return-object v0
.end method

.method private failedResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Lcom/htc/android/pim/hux/HuxProvResult;
    .locals 4
    .parameter "context"
    .parameter "provResult"

    .prologue
    const/4 v2, -0x1

    .line 148
    if-eqz p2, :cond_0

    .line 149
    new-instance v0, Lcom/htc/android/pim/hux/HuxProvResult;

    iget v1, p2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    iget v2, p2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    iget-object v3, p2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/pim/hux/HuxProvResult;-><init>(IILjava/lang/String;)V

    .line 151
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/android/pim/hux/HuxProvResult;

    const-string v1, "Cannot connect to server. Your server is not responding."

    invoke-direct {v0, v2, v2, v1}, Lcom/htc/android/pim/hux/HuxProvResult;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getPin()Lcom/htc/android/pim/hux/HuxProvResult;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 76
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HuxManagerService"

    const-string v6, "getPIN()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 82
    .local v3, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/htc/android/mail/huxservice/HuxManagerService;->failedResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v4

    .line 108
    :cond_1
    :goto_0
    return-object v4

    .line 83
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-static {v5, v6}, Lcom/htc/android/mail/huxservice/HuxProvController;->getPin(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 85
    .local v1, getPinResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v5, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-nez v5, :cond_3

    .line 86
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1}, Lcom/htc/android/mail/huxservice/HuxManagerService;->failedResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v4

    goto :goto_0

    .line 90
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "HuxManagerService"

    const-string v7, "wait for pin : 20000ms"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;

    const-wide/16 v7, 0x4e20

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 93
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_1
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/Account;->getPIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/htc/android/mail/huxservice/HuxManagerService;->failedResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v4

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, ie:Ljava/lang/InterruptedException;
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_5

    .line 96
    const-string v5, "HuxManagerService"

    const-string v6, "getPIN timeout mechanism got interrupted"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->smsWaitTimeOut()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxManagerService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mBinder:Lcom/htc/android/pim/hux/IHuxManager$Stub;

    invoke-virtual {v0}, Lcom/htc/android/pim/hux/IHuxManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxManagerService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxManagerService;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxManagerService;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method
