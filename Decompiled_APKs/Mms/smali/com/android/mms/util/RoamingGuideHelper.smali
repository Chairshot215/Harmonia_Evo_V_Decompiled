.class public Lcom/android/mms/util/RoamingGuideHelper;
.super Ljava/lang/Object;
.source "RoamingGuideHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;
    }
.end annotation


# static fields
.field private static AUTO_SEND_MSG_SELECTION:Ljava/lang/String; = null

.field private static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RoamingGuideHelper"

.field public static bHasAutoSend:Z

.field private static sInstance:Lcom/android/mms/util/RoamingGuideHelper;


# instance fields
.field private mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/RoamingGuideHelper;->sInstance:Lcom/android/mms/util/RoamingGuideHelper;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/RoamingGuideHelper;->bHasAutoSend:Z

    .line 35
    const-string v0, " type = 200"

    sput-object v0, Lcom/android/mms/util/RoamingGuideHelper;->AUTO_SEND_MSG_SELECTION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/mms/util/RoamingGuideHelper;->mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    .line 39
    new-instance v0, Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;-><init>(Lcom/android/mms/util/RoamingGuideHelper;Lcom/android/mms/util/RoamingGuideHelper$1;)V

    iput-object v0, p0, Lcom/android/mms/util/RoamingGuideHelper;->mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    .line 41
    invoke-direct {p0}, Lcom/android/mms/util/RoamingGuideHelper;->registerNetworkListener()V

    .line 43
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/mms/util/RoamingGuideHelper;->AUTO_SEND_MSG_SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/RoamingGuideHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/mms/util/RoamingGuideHelper;->moveAutoSendMsg2Queue()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/RoamingGuideHelper;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/android/mms/util/RoamingGuideHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSprintRoamingGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/mms/util/RoamingGuideHelper;->sInstance:Lcom/android/mms/util/RoamingGuideHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/mms/util/RoamingGuideHelper;

    invoke-direct {v0}, Lcom/android/mms/util/RoamingGuideHelper;-><init>()V

    sput-object v0, Lcom/android/mms/util/RoamingGuideHelper;->sInstance:Lcom/android/mms/util/RoamingGuideHelper;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/mms/util/RoamingGuideHelper;->sInstance:Lcom/android/mms/util/RoamingGuideHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private moveAutoSendMsg2Queue()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "RoamingGuideHelper"

    const-string v1, "moveAutoSendMsg2Queue >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getLowPriorityHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/util/RoamingGuideHelper$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/RoamingGuideHelper$1;-><init>(Lcom/android/mms/util/RoamingGuideHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    const-string v0, "RoamingGuideHelper"

    const-string v1, "moveAutoSendMsg2Queue <<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method private registerNetworkListener()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/mms/util/RoamingGuideHelper;->mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/RoamingGuideHelper;->mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/RoamingGuideHelper;->mReceiver:Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public moveAutoSend2AutoSendType(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 70
    const-string v0, "RoamingGuideHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveAutoSend2AutoSendType >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput-boolean v5, Lcom/android/mms/util/RoamingGuideHelper;->bHasAutoSend:Z

    .line 72
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 73
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    return-void
.end method
