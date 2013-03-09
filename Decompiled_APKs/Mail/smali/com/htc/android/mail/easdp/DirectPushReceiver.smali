.class public Lcom/htc/android/mail/easdp/DirectPushReceiver;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;
    }
.end annotation


# static fields
.field public static final ACTION_DP_CONNECT_TIMEOUT_DEF:Ljava/lang/String; = "com.htc.eas.directpush.connect_timeout.action"

.field public static final ACTION_DP_HB_INTERVAL_DEF:Ljava/lang/String; = "com.htc.eas.directpush.heartbeat.interval.action"

.field public static final ACTION_DP_KILL_SELF_CHECK_DEF:Ljava/lang/String; = "com.htc.eas.directpush.kill_self_check.action"

.field private static final DEBUG:Z = false

.field private static final DPR_ABORT_TIMEOUT:J = 0x2710L

.field private static final DPR_CONNECTION_RETRY_BOUND:J = 0x1d4c0L

.field private static final DPR_KILL_SELF_TIMEOUT:J = 0xea60L

.field private static final DPR_PING_FAIL_TRY_INTVAL:I = 0x2bf20

.field public static final EXTRA_DIRECTPUSH_TYPE:Ljava/lang/String; = "com.htc.eas.directpush.type.extra"

.field private static final MAXIMUM_HEARTBEAT_INTERVAL:I = 0x708

.field private static final MINUTE_HEARTBEAT_INTERVAL:I = 0x258

.field public static final TAG:Ljava/lang/String; = "EAS_DPReceiver"

.field private static mHttpClient:Landroid/net/http/AndroidHttpClient;

.field private static mHttpPostLock:Ljava/lang/Object;


# instance fields
.field ACTION_DP_CONNECT_TIMEOUT:Ljava/lang/String;

.field ACTION_DP_HB_INTERVAL:Ljava/lang/String;

.field ACTION_DP_KILL_SELF_CHECK:Ljava/lang/String;

.field private abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

.field dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

.field private mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field mCancelByAbort:Z

.field private mChangedCollections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

.field private mContext:Landroid/content/Context;

.field mDoingAbortHttp:Z

.field private mForceShutdown:Z

.field private mHBIntervalDynamicGap:I

.field public mHeartBeatInterval:I

.field mHeartbeatIntervalIntent:Landroid/app/PendingIntent;

.field private mHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field mIintentFilter:Landroid/content/IntentFilter;

.field mKillSelfIntent:Landroid/app/PendingIntent;

.field private mLoginCredential:Ljava/lang/String;

.field mNetworkTimeoutIntent:Landroid/app/PendingIntent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private networkLock:Ljava/lang/Object;

.field private networkWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/content/Context;)V
    .locals 6
    .parameter "exAccount"
    .parameter "context"

    .prologue
    const/high16 v5, 0x800

    const/4 v4, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mChangedCollections:Ljava/util/ArrayList;

    .line 81
    const/16 v1, 0xf0

    iput v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I

    .line 82
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 84
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mCancelByAbort:Z

    .line 85
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mDoingAbortHttp:Z

    .line 97
    new-instance v1, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    .line 377
    new-instance v1, Lcom/htc/android/mail/easdp/DirectPushReceiver$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$2;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    .line 403
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->networkLock:Ljava/lang/Object;

    .line 420
    new-instance v1, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->init(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.htc.eas.directpush.connect_timeout.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_CONNECT_TIMEOUT:Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.htc.eas.directpush.heartbeat.interval.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_HB_INTERVAL:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.htc.eas.directpush.kill_self_check.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_KILL_SELF_CHECK:Ljava/lang/String;

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mIintentFilter:Landroid/content/IntentFilter;

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mIintentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_CONNECT_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mIintentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_HB_INTERVAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mIintentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_KILL_SELF_CHECK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_CONNECT_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mNetworkTimeoutIntent:Landroid/app/PendingIntent;

    .line 126
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_HB_INTERVAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartbeatIntervalIntent:Landroid/app/PendingIntent;

    .line 134
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_KILL_SELF_CHECK:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mKillSelfIntent:Landroid/app/PendingIntent;

    .line 142
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setKillSelfTimerChecker()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setConnectStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setConnectFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easdp/DirectPushReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I

    return v0
.end method

.method static synthetic access$900()Landroid/net/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object p0
.end method

.method private cancelRunning()V
    .locals 4

    .prologue
    .line 347
    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 348
    .local v1, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartbeatIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 349
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    .local v0, abortConnThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method private cleanHeartbeatTimeoutChecker()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 504
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartbeatIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 505
    return-void
.end method

.method private cleanKillSelfTImerChecker()V
    .locals 3

    .prologue
    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mDoingAbortHttp:Z

    .line 491
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 492
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mKillSelfIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 493
    return-void
.end method

.method private createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .parameter "syncCmd"
    .parameter "strProtocal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-boolean v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "https"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, targetURL:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v2, "MS-ASProtocolVersion"

    invoke-virtual {v0, v2, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-object v0

    .line 575
    .end local v0           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v1           #targetURL:Ljava/lang/String;
    :cond_0
    const-string v2, "http"

    goto/16 :goto_0
.end method

.method private createPingWBXMLOutput([Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;)[B
    .locals 10
    .parameter "srcList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 510
    iget v5, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    if-gtz v5, :cond_0

    .line 512
    const/16 v5, 0x4b0

    iput v5, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 514
    :cond_0
    const-string v5, "EAS_DPReceiver"

    iget-object v6, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " (use heartbeat) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, listenList:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 518
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;

    invoke-direct {v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;-><init>()V

    .line 520
    .local v3, serializer:Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;
    const/16 v5, 0xd

    sget-object v6, Lcom/htc/android/mail/easdp/Common;->EAS_PING_TBL:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3, v0, v9}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 524
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5, v9}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 526
    const-string v5, "Ping"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    const-string v5, "HeartbeatInterval"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    iget v5, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    const-string v5, "HeartbeatInterval"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    const-string v5, "Folders"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_6

    .line 535
    aget-object v4, p1, v1

    .line 536
    .local v4, src:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    const-string v5, "Folder"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    const-string v5, "Id"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-object v5, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->collectionId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    const-string v5, "Id"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const-string v5, "Class"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    iget v5, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 543
    const-string v5, "Contacts"

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    :cond_1
    :goto_1
    const-string v5, "Class"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const-string v5, "Folder"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    if-nez v2, :cond_5

    .line 554
    iget-object v2, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->collectionId:Ljava/lang/String;

    .line 534
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_2
    iget v5, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 545
    const-string v5, "Calendar"

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 546
    :cond_3
    iget v5, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 547
    const-string v5, "Email"

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 548
    :cond_4
    iget v5, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 549
    const-string v5, "Tasks"

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 556
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->collectionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 560
    .end local v4           #src:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    :cond_6
    const-string v5, "Folders"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    const-string v5, "Ping"

    invoke-virtual {v3, v9, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endDocument()V

    .line 566
    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->flush()V

    .line 568
    const-string v5, "EAS_DPReceiver"

    iget-object v6, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startPing listen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private setConnectFinish()V
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 392
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mNetworkTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 394
    invoke-direct {p0, v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setNetworkLock(Landroid/app/AlarmManager;)V

    .line 395
    return-void
.end method

.method private setConnectStart()V
    .locals 7

    .prologue
    .line 397
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 400
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 401
    .local v1, firstTime:J
    const/4 v3, 0x0

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v1

    iget-object v6, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mNetworkTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 402
    return-void
.end method

.method private setHeartbeatTimeoutChecker()V
    .locals 7

    .prologue
    .line 496
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 497
    .local v1, firstTime:J
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 498
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    add-int/lit8 v4, v4, 0x1e

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v1

    iget-object v6, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartbeatIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 500
    return-void
.end method

.method private setKillSelfTimerChecker()V
    .locals 7

    .prologue
    .line 483
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mDoingAbortHttp:Z

    .line 484
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 485
    .local v1, firstTime:J
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 486
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v1

    iget-object v6, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mKillSelfIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 488
    return-void
.end method

.method private setNetworkLock()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 407
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setNetworkLock(Landroid/app/AlarmManager;)V

    .line 408
    return-void
.end method

.method private setNetworkLock(Landroid/app/AlarmManager;)V
    .locals 4
    .parameter "am"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->networkWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->isPowerLockHeld(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->networkWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    const-string v1, "NetworkLock"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLockTimeout(Landroid/content/Context;Ljava/lang/String;J)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->networkWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 416
    return-void
.end method


# virtual methods
.method public getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 4

    .prologue
    .line 600
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 601
    sget-object v0, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->createHttpClient(Ljava/lang/String;JLcom/htc/android/mail/easdp/util/ConnectCallback;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 605
    :cond_0
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method public init(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 2
    .parameter "exAccount"

    .prologue
    .line 626
    iget v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    iput v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 627
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 629
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mLoginCredential:Ljava/lang/String;

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mLoginCredential:Ljava/lang/String;

    .line 639
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mLoginCredential:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCancelByAbort()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mCancelByAbort:Z

    return v0
.end method

.method public isForceShutdown()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cancelRunning()V

    .line 331
    return-void
.end method

.method public releaseHttpClient()V
    .locals 2

    .prologue
    .line 611
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easdp/DirectPushReceiver$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$4;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 623
    :goto_0
    return-void

    .line 619
    :cond_0
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 620
    sget-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 621
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    .line 326
    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mCancelByAbort:Z

    .line 327
    return-void
.end method

.method public startPing([Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)I
    .locals 30
    .parameter "srcList"
    .parameter
    .parameter "wakeLock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    .local p2, changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    const-string v27, "> SP() "

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 147
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mCancelByAbort:Z

    .line 148
    const/16 v17, 0x8

    .line 149
    .local v17, ret:I
    const/4 v7, -0x1

    .line 150
    .local v7, heartBeatInterval:I
    const/4 v9, 0x0

    .line 151
    .local v9, isHeartBeatOutRange:Z
    const/4 v8, 0x0

    .line 152
    .local v8, inputStream:Ljava/io/InputStream;
    const-wide/high16 v21, -0x8000

    .line 154
    .local v21, startTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 156
    const/16 v17, 0x14

    .line 157
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    move/from16 v18, v17

    .line 322
    .end local v17           #ret:I
    .local v18, ret:I
    :goto_0
    return v18

    .line 160
    .end local v18           #ret:I
    .restart local v17       #ret:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mChangedCollections:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 162
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_1b

    .line 164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mIintentFilter:Landroid/content/IntentFilter;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    sget-object v26, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    monitor-enter v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    const-string v25, "Ping"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 167
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->createPingWBXMLOutput([Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;)[B

    move-result-object v14

    .line 170
    .local v14, reqData:[B
    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v15, v14}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 171
    .local v15, reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 174
    .local v3, c:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.socket.timeout"

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 177
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.connection.timeout"

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x7530

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 181
    const/16 v24, 0x0

    .line 182
    .local v24, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.route.default-proxy"

    invoke-interface/range {v25 .. v26}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    const/16 v13, 0x1bb

    .line 184
    .local v13, port:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    const-string v20, "https"

    .line 185
    .local v20, scheme:Ljava/lang/String;
    :goto_2
    new-instance v24, Lorg/apache/http/HttpHost;

    .end local v24           #targetHost:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    .end local v13           #port:I
    .end local v20           #scheme:Ljava/lang/String;
    .restart local v24       #targetHost:Lorg/apache/http/HttpHost;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setNetworkLock()V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->setHeartbeatTimeoutChecker()V

    .line 190
    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 192
    invoke-static/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 194
    if-eqz v24, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 199
    .local v16, resp:Lorg/apache/http/HttpResponse;
    :goto_3
    invoke-static/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cleanHeartbeatTimeoutChecker()V

    .line 201
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    const-string v27, "SP(), got HttpResponse."

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 203
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    .line 204
    .local v23, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 205
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 206
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0x190

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 207
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Bad request:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 209
    :cond_2
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0x190

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 210
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Directpush connection response a error 400."

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    .end local v3           #c:Landroid/net/http/AndroidHttpClient;
    .end local v14           #reqData:[B
    .end local v15           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    .end local v24           #targetHost:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v6

    .line 259
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 260
    invoke-static/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 262
    const/16 v19, 0x0

    .line 263
    .local v19, retryNow:Z
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 264
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    const-string v26, "I/O error during system call, Broken pipe"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    const-string v26, "I/O error during system call, Connection reset by peer"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 266
    :cond_3
    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 267
    .local v10, nowTime:J
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RETRY_NOW: time pass "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v10, v21

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 268
    sub-long v25, v10, v21

    const-wide/32 v27, 0x1d4c0

    cmp-long v25, v25, v27

    if-lez v25, :cond_4

    .line 269
    const/16 v17, 0xb

    .line 270
    const/16 v19, 0x1

    .line 274
    .end local v10           #nowTime:J
    :cond_4
    if-nez v19, :cond_1d

    .line 275
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    .end local v6           #e:Ljava/lang/Exception;
    .end local v19           #retryNow:Z
    :catchall_0
    move-exception v25

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cleanKillSelfTImerChecker()V

    .line 279
    sget-object v26, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    monitor-enter v26

    .line 280
    const/16 v27, 0x0

    :try_start_4
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 281
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 283
    if-eqz v8, :cond_5

    .line 284
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 288
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 290
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 294
    :cond_6
    const/16 v26, 0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->addStatus(I)V

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v26, v0

    const/16 v27, 0x708

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 298
    const/16 v26, 0x708

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 307
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    throw v25

    .line 167
    :catchall_1
    move-exception v25

    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v25

    .line 183
    .restart local v3       #c:Landroid/net/http/AndroidHttpClient;
    .restart local v14       #reqData:[B
    .restart local v15       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v24       #targetHost:Lorg/apache/http/HttpHost;
    :cond_8
    const/16 v13, 0x50

    goto/16 :goto_1

    .line 184
    .restart local v13       #port:I
    :cond_9
    const-string v20, "http"

    goto/16 :goto_2

    .line 197
    .end local v13           #port:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .restart local v16       #resp:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 211
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    :cond_b
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0x191

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 212
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Directpush connection response a error 401."

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 214
    :cond_c
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "HTTP Status(): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 218
    :cond_d
    new-instance v12, Lcom/htc/android/mail/eassvc/core/WbxmlParser;

    invoke-direct {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;-><init>()V

    .line 220
    .local v12, parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    const/16 v25, 0xd

    sget-object v26, Lcom/htc/android/mail/easdp/Common;->EAS_PING_TBL:[Ljava/lang/String;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 221
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v12, v8, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, curTagName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 226
    .local v5, curTagVal:Ljava/lang/String;
    :goto_5
    const/16 v25, 0x1

    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    .line 227
    const/16 v25, 0x2

    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 228
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 252
    :cond_e
    :goto_6
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    goto :goto_5

    .line 229
    :cond_f
    const/16 v25, 0x3

    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    .line 230
    const/16 v25, 0x4

    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 231
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 232
    const-string v25, "Status"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 233
    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 234
    const/16 v17, 0x1

    goto :goto_6

    .line 235
    :cond_10
    const-string v25, "2"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 236
    const/16 v17, 0x2

    goto :goto_6

    .line 237
    :cond_11
    const-string v25, "7"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 238
    const/16 v17, 0x7

    goto :goto_6

    .line 239
    :cond_12
    const-string v25, "5"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 240
    const/4 v9, 0x1

    .line 241
    const/16 v17, 0x5

    goto :goto_6

    .line 244
    :cond_13
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EAS Status: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 245
    :cond_14
    const-string v25, "Folder"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mChangedCollections:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 247
    :cond_15
    const-string v25, "HeartbeatInterval"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_6

    .line 254
    :cond_16
    if-eqz v9, :cond_17

    .line 255
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 256
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " mHeartBeatInterval = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " (OutOfRange)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 278
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cleanKillSelfTImerChecker()V

    .line 279
    sget-object v26, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    monitor-enter v26

    .line 280
    const/16 v25, 0x0

    :try_start_8
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 281
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 283
    if-eqz v8, :cond_18

    .line 284
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 288
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 290
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 294
    :cond_19
    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->addStatus(I)V

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v25, v0

    const/16 v26, 0x708

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1a

    .line 298
    const/16 v25, 0x708

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 307
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    .end local v3           #c:Landroid/net/http/AndroidHttpClient;
    .end local v4           #curTagName:Ljava/lang/String;
    .end local v5           #curTagVal:Ljava/lang/String;
    .end local v12           #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .end local v14           #reqData:[B
    .end local v15           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    .end local v24           #targetHost:Lorg/apache/http/HttpHost;
    :goto_8
    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 313
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    const-string v27, "SP(), ForceShutdown! 2 "

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 314
    const/16 v17, 0x14

    .line 317
    :cond_1c
    const-string v25, "EAS_DPReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< SP() "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mChangedCollections:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v18, v17

    .line 322
    .end local v17           #ret:I
    .restart local v18       #ret:I
    goto/16 :goto_0

    .line 285
    .end local v18           #ret:I
    .restart local v17       #ret:I
    :catch_1
    move-exception v6

    .line 286
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 281
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v25

    :try_start_a
    monitor-exit v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v25

    .line 278
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v19       #retryNow:Z
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cleanKillSelfTImerChecker()V

    .line 279
    sget-object v26, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPostLock:Ljava/lang/Object;

    monitor-enter v26

    .line 280
    const/16 v25, 0x0

    :try_start_b
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 281
    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 283
    if-eqz v8, :cond_1e

    .line 284
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 288
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 290
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 294
    :cond_1f
    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->addStatus(I)V

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    move/from16 v25, v0

    const/16 v26, 0x708

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_20

    .line 298
    const/16 v25, 0x708

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 307
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    goto/16 :goto_8

    .line 285
    :catch_2
    move-exception v6

    .line 286
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 281
    :catchall_3
    move-exception v25

    :try_start_d
    monitor-exit v26
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v25

    .line 285
    .end local v6           #e:Ljava/lang/Exception;
    .end local v19           #retryNow:Z
    .restart local v3       #c:Landroid/net/http/AndroidHttpClient;
    .restart local v4       #curTagName:Ljava/lang/String;
    .restart local v5       #curTagVal:Ljava/lang/String;
    .restart local v12       #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .restart local v14       #reqData:[B
    .restart local v15       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v16       #resp:Lorg/apache/http/HttpResponse;
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v24       #targetHost:Lorg/apache/http/HttpHost;
    :catch_3
    move-exception v6

    .line 286
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 281
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v25

    :try_start_e
    monitor-exit v26
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v25
.end method

.method public stopPing()V
    .locals 3

    .prologue
    .line 340
    const-string v0, "EAS_DPReceiver"

    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "Stop DirectPush."

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mForceShutdown:Z

    .line 343
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->cancelRunning()V

    .line 344
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V

    .line 345
    return-void
.end method
