.class public Lcom/htc/android/mail/mailservice/NetworkStateService;
.super Landroid/app/Service;
.source "NetworkStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityReceiver:Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "NetworkStateService"

    sput-object v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/NetworkStateService;->mConnectivityReceiver:Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;

    .line 94
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    sget-boolean v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/htc/android/mail/mailservice/NetworkStateService;->TAG:Ljava/lang/String;

    const-string v1, "start listen network changed"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    new-instance v0, Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;-><init>(Lcom/htc/android/mail/mailservice/NetworkStateService;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/NetworkStateService;->mConnectivityReceiver:Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;

    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/NetworkStateService;->mConnectivityReceiver:Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/mailservice/NetworkStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method
