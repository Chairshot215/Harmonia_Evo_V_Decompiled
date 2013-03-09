.class public Lcom/htc/android/mail/easdp/EASDirectpush;
.super Landroid/app/Service;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;,
        Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;,
        Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;,
        Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
    }
.end annotation


# static fields
.field public static final ACNT_SETTING_UI_CLASSNAME:Ljava/lang/String; = "com.htc.android.mail.easclient.ExchangeSvrSetting"

.field public static final CLIENT_UI_CLASSNAME:Ljava/lang/String; = "com.htc.android.mail.easclient.EASClient"

.field public static final CLIENT_UI_PACKAGE:Ljava/lang/String; = "com.htc.android.mail"

.field private static final DEBUG:Z = false

.field private static final DP_GENERAL_RETRY:I = 0x2bf20

.field private static final DP_NET_ERR_RETRY:I = 0x1d4c0

.field private static final DP_SYNC_ERR_RETRY:I = 0x493e0

.field private static final DP_USER_CANCEL_RETRY:I = 0xea60

.field private static final MSG_DPR_START:I = 0x1

.field private static final MSG_NETWORK_STATE_CHANGED:I = 0x3e8

.field private static final MSG_SERVICE_ON_CREATE:I = 0x1

.field private static final MSG_SERVICE_ON_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EASDirectpush"

.field private static mIsScreenOff:Z

.field static mQueueStartService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callbackAfterChangeOccur:Lcom/htc/android/pim/eas/EASEventCallback;

.field private mContext:Landroid/content/Context;

.field mDirectpushHandlerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

.field mObjectInitLock:Ljava/lang/Object;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mReceiverRegistered:Z

.field mRegReceiverLock:Ljava/lang/Object;

.field mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

.field mWakelockLock:Ljava/lang/Object;

.field serviceRelease:Z

.field serviceStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/easdp/EASDirectpush;->mIsScreenOff:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    .line 80
    iput-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    .line 81
    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mObjectInitLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mRegReceiverLock:Ljava/lang/Object;

    .line 85
    iput-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    .line 87
    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceStart:Z

    .line 88
    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    .line 226
    new-instance v0, Lcom/htc/android/mail/easdp/EASDirectpush$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easdp/EASDirectpush$2;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 819
    new-instance v0, Lcom/htc/android/mail/easdp/EASDirectpush$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easdp/EASDirectpush$4;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->callbackAfterChangeOccur:Lcom/htc/android/pim/eas/EASEventCallback;

    .line 863
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/easdp/EASDirectpush;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/easdp/EASDirectpush;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/easdp/EASDirectpush;->syncMailFolderAndUpdAccount(JZ)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-boolean p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mIsScreenOff:Z

    return p0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easdp/EASDirectpush;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkAccountData(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getDirectpushItems(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->updateHeartbeat(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easdp/EASDirectpush;->processDPChangeList(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkAccountData(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 2
    .parameter "srcAcc"
    .parameter "newAcc"

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    move-object p1, p2

    .line 1194
    :cond_0
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1195
    :cond_1
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 1197
    :cond_2
    iget-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iget-boolean v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-eq v0, v1, :cond_3

    .line 1198
    iget-boolean v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iput-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 1200
    :cond_3
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1201
    :cond_4
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 1204
    :cond_5
    iget-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    iget-boolean v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    if-eq v0, v1, :cond_6

    .line 1205
    iget-boolean v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    iput-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    .line 1207
    :cond_6
    iget-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->directpushEnabled:Z

    iget-boolean v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->directpushEnabled:Z

    if-ne v0, v1, :cond_7

    .line 1208
    iget-boolean v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->directpushEnabled:Z

    iput-boolean v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->directpushEnabled:Z

    .line 1210
    :cond_7
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1211
    :cond_8
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    .line 1213
    :cond_9
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1214
    :cond_a
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    .line 1216
    :cond_b
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1217
    :cond_c
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    .line 1220
    :cond_d
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    .line 1221
    return-void
.end method

.method private createDirectPushHandler(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    .locals 5
    .parameter "account"

    .prologue
    .line 841
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EASDPRThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 843
    .local v0, DPRThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 844
    new-instance v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;Landroid/content/Context;Landroid/os/Looper;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 845
    .local v1, directPushHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    return-object v1
.end method

.method private createMainHandler()Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
    .locals 4

    .prologue
    .line 856
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DPMainThread"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 858
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 859
    new-instance v0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;Landroid/content/Context;Landroid/os/Looper;)V

    .line 860
    .local v0, handler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
    return-object v0
.end method

.method private getDirectpushItems(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .locals 8
    .parameter "exAccount"

    .prologue
    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v2, dpItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;>;"
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 713
    new-instance v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->contactCollId:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;ILjava/lang/String;)V

    .line 714
    .local v4, item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v4           #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    :cond_0
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 717
    new-instance v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->calendarCollId:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;ILjava/lang/String;)V

    .line 718
    .restart local v4       #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v4           #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    :cond_1
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 721
    new-instance v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    const/4 v6, 0x4

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->taskCollId:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;ILjava/lang/String;)V

    .line 722
    .restart local v4       #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v4           #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    :cond_2
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 725
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->mailCollId:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 726
    .local v1, collId:Ljava/lang/String;
    new-instance v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6, v1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;ILjava/lang/String;)V

    .line 727
    .restart local v4       #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 730
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #collId:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v5           #len$:I
    :cond_3
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    return-object v6
.end method

.method public static getErrorCode(Ljava/lang/Exception;)I
    .locals 11
    .parameter "ex"

    .prologue
    const/16 v8, 0x203

    const/16 v7, 0x1c2

    .line 1066
    move-object v6, p0

    .line 1067
    .local v6, thr:Ljava/lang/Throwable;
    :goto_0
    if-eqz v6, :cond_7

    .line 1068
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.security.cert.CertificateException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1069
    new-instance v9, Ljava/security/cert/CertificateException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1090
    :catch_0
    move-exception v2

    .line 1091
    .local v2, e:Ljava/security/cert/CertificateExpiredException;
    const/16 v7, 0x206

    .line 1122
    .end local v2           #e:Ljava/security/cert/CertificateExpiredException;
    :cond_0
    :goto_1
    return v7

    .line 1070
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.security.cert.CertificateNotYetValidException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1071
    new-instance v9, Ljava/security/cert/CertificateNotYetValidException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1092
    :catch_1
    move-exception v2

    .line 1093
    .local v2, e:Ljava/security/cert/CertificateNotYetValidException;
    const/16 v7, 0x207

    goto :goto_1

    .line 1072
    .end local v2           #e:Ljava/security/cert/CertificateNotYetValidException;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.security.cert.CertificateExpiredException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1073
    new-instance v9, Ljava/security/cert/CertificateExpiredException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1094
    :catch_2
    move-exception v2

    .line 1095
    .local v2, e:Ljava/security/cert/CertificateException;
    const/16 v7, 0x204

    goto :goto_1

    .line 1074
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.NullPointerException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1075
    const/4 v1, 0x0

    .line 1076
    .local v1, bProxyNetworkError:Z
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v3, v0, v4

    .line 1077
    .local v3, element:Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DefaultRequestDirector"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "execute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1079
    const/4 v1, 0x1

    .line 1083
    .end local v3           #element:Ljava/lang/StackTraceElement;
    :cond_4
    if-eqz v1, :cond_6

    .line 1084
    new-instance v9, Ljava/net/SocketException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1096
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #bProxyNetworkError:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_3
    move-exception v2

    .line 1097
    .local v2, e:Lorg/apache/http/HttpException;
    goto :goto_1

    .line 1076
    .end local v2           #e:Lorg/apache/http/HttpException;
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v1       #bProxyNetworkError:Z
    .restart local v3       #element:Ljava/lang/StackTraceElement;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1087
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #bProxyNetworkError:Z
    .end local v3           #element:Ljava/lang/StackTraceElement;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto/16 :goto_0

    .line 1089
    :cond_7
    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 1098
    :catch_4
    move-exception v2

    .line 1099
    .local v2, e:Ljava/net/UnknownHostException;
    const/16 v7, 0x1c4

    goto/16 :goto_1

    .line 1100
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_5
    move-exception v2

    .line 1101
    .local v2, e:Ljava/net/SocketException;
    const/16 v7, 0x1fc

    goto/16 :goto_1

    .line 1102
    .end local v2           #e:Ljava/net/SocketException;
    :catch_6
    move-exception v2

    .line 1103
    .local v2, e:Ljava/net/SocketTimeoutException;
    const/16 v7, 0x1fd

    goto/16 :goto_1

    .line 1104
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v2

    .local v2, e:Ljavax/net/ssl/SSLException;
    move v7, v8

    .line 1105
    goto/16 :goto_1

    .line 1106
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catch_8
    move-exception v2

    .line 1107
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Socket"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_8

    .line 1108
    const/16 v7, 0x1fb

    goto/16 :goto_1

    .line 1109
    :cond_8
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SSL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v7, v8

    .line 1110
    goto/16 :goto_1

    .line 1111
    :cond_9
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Connection"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1114
    :cond_a
    const/16 v7, 0x322

    goto/16 :goto_1

    .line 1116
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 1117
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Directpush connection response a error 400."

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1118
    const/16 v7, 0x190

    goto/16 :goto_1

    .line 1119
    :cond_b
    const-string v7, "Directpush connection response a error 401."

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1120
    const/16 v7, 0x191

    goto/16 :goto_1

    .line 1122
    :cond_c
    const/16 v7, 0x320

    goto/16 :goto_1
.end method

.method private declared-synchronized init()V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->initMainHandler()V

    .line 279
    iget-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easdp/EASDirectpush$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/EASDirectpush$3;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    .local v0, threadRegReceiver:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 297
    .end local v0           #threadRegReceiver:Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized initMainHandler()V
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->createMainHandler()Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isNetworkException(I)Z
    .locals 2
    .parameter "errorCode"

    .prologue
    const/16 v1, 0x203

    .line 1126
    const/16 v0, 0x1c2

    if-lt p0, v0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v0, 0x2be

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1fd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1fc

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_2

    .line 1131
    :cond_1
    const/4 v0, 0x1

    .line 1133
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenOff()Z
    .locals 1

    .prologue
    .line 1224
    sget-boolean v0, Lcom/htc/android/mail/easdp/EASDirectpush;->mIsScreenOff:Z

    return v0
.end method

.method private pauseDirectPush(Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;Z)V
    .locals 6
    .parameter "dpHandler"
    .parameter "stopPing"

    .prologue
    const/4 v5, 0x1

    .line 798
    const-string v1, "EASDirectpush"

    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseDirectPush().mPauseDirectpush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 799
    iput-boolean v5, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    .line 800
    invoke-virtual {p1, v5}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 801
    iget-object v1, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 802
    iget-object v1, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->stopPing()V

    .line 804
    :cond_0
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 805
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 806
    return-void
.end method

.method private processDPChangeList(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "exAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 1137
    const-string v2, "EASDirectpush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processDPChangeList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 1141
    .local v0, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 1145
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.startSync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v1, service:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const-string v2, "accountId"

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1148
    const-string v3, "syncColls"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v2, "extra.isDirectpush"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1151
    return-void
.end method

.method private release()V
    .locals 5

    .prologue
    .line 507
    iget-object v3, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    monitor-enter v3

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 509
    .local v0, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    invoke-direct {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopDpHandler(Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;)V

    goto :goto_0

    .line 512
    .end local v0           #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 511
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 512
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->uninitMainHandler()V

    .line 517
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mRegReceiverLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 518
    :try_start_3
    iget-boolean v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    if-eqz v2, :cond_1

    .line 519
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    .line 520
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 522
    :cond_1
    monitor-exit v3

    .line 526
    :goto_1
    return-void

    .line 522
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 523
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private restartDirectpush()V
    .locals 3

    .prologue
    .line 1170
    const-string v1, "EASDirectpush"

    const-string v2, "restartDirectpush()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.dp.restart"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, service:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1175
    return-void
.end method

.method private resumeDirectPush(Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;)V
    .locals 4
    .parameter "dpHandler"

    .prologue
    .line 808
    const-string v0, "EASDirectpush"

    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDirectPush().mPauseDirectpush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    .line 814
    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 817
    :cond_0
    return-void
.end method

.method private startDPCheck()V
    .locals 3

    .prologue
    .line 1183
    const-string v1, "EASDirectpush"

    const-string v2, "queueDPCheck()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.dp.check"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, service:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.easdp.EASDirectpush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1188
    return-void
.end method

.method private startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 13
    .parameter "exAccount"

    .prologue
    .line 650
    const-string v9, "EASDirectpush"

    const-string v10, "startDirectPush()"

    invoke-static {v9, p1, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getAccountStatus(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I

    move-result v9

    if-nez v9, :cond_0

    .line 653
    const-string v9, "EASDirectpush"

    const-string v10, "startDirectPush - Account not configured, Stop service"

    invoke-static {v9, p1, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkStopSelf()V

    .line 708
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    iget-boolean v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 665
    const-string v9, "EASDirectpush"

    const-string v10, "startDirectPush() - Network not ok!"

    invoke-static {v9, p1, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    monitor-enter v10

    .line 669
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 670
    .local v4, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-nez v4, :cond_4

    .line 671
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->createDirectPushHandler(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    move-result-object v4

    .line 672
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->waitRestartAlarm:Z

    .line 679
    iget-object v9, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v9, :cond_2

    .line 680
    iget-object v9, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v9}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->reset()V

    .line 682
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getDirectpushItems(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    move-result-object v3

    .line 684
    .local v3, directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v9, v11, v12}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, accountConfigPath:Ljava/lang/String;
    if-eqz v3, :cond_6

    array-length v9, v3

    if-lez v9, :cond_6

    .line 686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v2, collList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v3

    .local v1, arr$:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v6, v1, v5

    .line 688
    .local v6, item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "in_sync_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v6, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->syncSourceType:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_fail"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v8, tempFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 692
    iget-object v9, v6, Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;->collectionId:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 674
    .end local v0           #accountConfigPath:Ljava/lang/String;
    .end local v1           #arr$:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v2           #collList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v5           #i$:I
    .end local v6           #item:Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v7           #len$:I
    .end local v8           #tempFile:Ljava/io/File;
    :cond_4
    iget-object v9, v4, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {p0, v9, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkAccountData(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto :goto_1

    .line 707
    .end local v4           #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 695
    .restart local v0       #accountConfigPath:Ljava/lang/String;
    .restart local v1       #arr$:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .restart local v2       #collList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .restart local v4       #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 699
    invoke-direct {p0, p1, v2}, Lcom/htc/android/mail/easdp/EASDirectpush;->processDPChangeList(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V

    .line 700
    monitor-exit v10

    goto/16 :goto_0

    .line 704
    .end local v1           #arr$:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v2           #collList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 705
    const-string v9, "EASDirectpush"

    const-string v11, "mDirectPushHandler.sendEmptyMessage"

    invoke-static {v9, p1, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 706
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->sendEmptyMessage(I)Z

    .line 707
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    .locals 6
    .parameter "exAccount"
    .parameter "delayMillis"

    .prologue
    .line 733
    const-string v2, "EASDirectpush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDirectPush("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 736
    .local v1, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-nez v1, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->createDirectPushHandler(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    move-result-object v1

    .line 738
    iget-object v3, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    monitor-enter v3

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getAccountStatus(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I

    move-result v2

    if-nez v2, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkStopSelf()V

    .line 768
    :goto_1
    return-void

    .line 740
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 742
    :cond_0
    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {p0, v2, p1}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkAccountData(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto :goto_0

    .line 758
    :cond_1
    if-eqz v1, :cond_2

    .line 759
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 763
    :goto_2
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easdp/EASDirectpush;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 764
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 765
    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    add-long/2addr v3, p2

    iget-object v5, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 761
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_2
    const-string v2, "EASDirectpush"

    const-string v3, "stopDirectPush(): no mapping dpHandler"

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startEASByNetworkChange()V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.networkChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, service:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    return-void
.end method

.method private stopDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 6
    .parameter "exAccount"

    .prologue
    .line 770
    iget-object v3, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    monitor-enter v3

    .line 771
    :try_start_0
    const-string v2, "EASDirectpush"

    const-string v4, "stopDirectPush()"

    invoke-static {v2, p1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 774
    .local v1, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-eqz v1, :cond_1

    .line 775
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 776
    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v2}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->stopPing()V

    .line 778
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    .line 780
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easdp/EASDirectpush;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 781
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 782
    invoke-direct {p0, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopDpHandler(Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;)V

    .line 786
    .end local v0           #am:Landroid/app/AlarmManager;
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkStopSelf()V

    .line 793
    monitor-exit v3

    .line 794
    return-void

    .line 784
    :cond_1
    const-string v2, "EASDirectpush"

    const-string v4, "stopDirectPush(): no mapping dpHandler"

    invoke-static {v2, p1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    .end local v1           #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopDpHandler(Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;)V
    .locals 1
    .parameter "dpHandler"

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 850
    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->stop()V

    .line 851
    invoke-virtual {p1}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 852
    const/4 p1, 0x0

    .line 853
    return-void
.end method

.method private syncMailFolderAndUpdAccount(JZ)V
    .locals 5
    .parameter "accountId"
    .parameter "resetHttp"

    .prologue
    const/4 v4, 0x1

    .line 1154
    const-string v2, "EASDirectpush"

    const-string v3, "syncMailFolderAndUpdAccount()"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1157
    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 1158
    .local v0, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {v0, v4}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->removeMessages(I)V

    .line 1162
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.folderUpdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v1, service:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1165
    const-string v2, "resetHttp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1167
    return-void
.end method

.method private declared-synchronized uninitMainHandler()V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    invoke-virtual {v0}, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateHeartbeat(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 8
    .parameter "exAccount"

    .prologue
    .line 614
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v5

    const-string v6, "dp_config.prefs"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    .local v1, dpPrefFile:Ljava/io/File;
    const-string v6, "dp_config.prefs"

    monitor-enter v6

    .line 616
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .local v0, configFile:Ljava/util/Properties;
    const/4 v3, 0x0

    .line 619
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "_easHeartBeatInternal"

    iget v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 621
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 625
    if-eqz v4, :cond_0

    .line 627
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 633
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    return-void

    .line 622
    :catch_0
    move-exception v2

    .line 623
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 625
    if-eqz v3, :cond_1

    .line 627
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 628
    :catch_1
    move-exception v2

    .line 629
    .local v2, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 633
    .end local v0           #configFile:Ljava/util/Properties;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 625
    .restart local v0       #configFile:Ljava/util/Properties;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 627
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 625
    :cond_2
    :goto_4
    :try_start_9
    throw v5

    .line 628
    :catch_2
    move-exception v2

    .line 629
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 628
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 629
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 625
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 622
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method checkStopSelf()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const-string v0, "EASDirectpush"

    const-string v2, "checkStopSelf(): no any active directpush, stop service"

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z

    .line 489
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopSelf()V

    .line 491
    :cond_0
    monitor-exit v1

    .line 504
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccountStatus(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I
    .locals 1
    .parameter "accountInfo"

    .prologue
    .line 637
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "EASDirectpush"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->setContext(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->init()V

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easdp/EASDirectpush$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easdp/EASDirectpush$1;-><init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "EASDirectpush"

    const-string v1, "- onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceStart:Z

    .line 222
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->release()V

    .line 223
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 224
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v10, 0x2

    .line 121
    if-nez p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->restartDirectpush()V

    .line 123
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopSelf(I)V

    .line 208
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v7, "EASDirectpush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "> onStart(): intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceStart:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopSelf(I)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v8

    .line 136
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-nez v7, :cond_2

    .line 137
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;

    const-string v9, "START_SERVICE"

    invoke-static {v7, v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 139
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const-string v7, "com.htc.android.mail.intent.dp.stop"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 146
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 148
    :cond_3
    const-string v7, "exchangeAccount"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 150
    .local v2, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/android/mail/easdp/EASDirectpush;->stopDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v8

    .line 155
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 156
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 157
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    .end local v2           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_4
    :goto_2
    const-string v7, "EASDirectpush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "< onStart(): intent ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 151
    .restart local v2       #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "EASDirectpush"

    invoke-static {v7, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 161
    .end local v2           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_5
    const-string v7, "com.htc.android.mail.intent.dp.check"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 162
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 163
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 164
    .local v6, queueIntent:Landroid/content/Intent;
    const-string v7, "EASDirectpush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- onStart(): append intent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 166
    .local v5, msg:Landroid/os/Message;
    iput v10, v5, Landroid/os/Message;->what:I

    .line 167
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 169
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    invoke-virtual {v7, v5}, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 171
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #queueIntent:Landroid/content/Intent;
    :cond_6
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 174
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v4, 0x0

    .line 175
    .local v4, isCallHandler:Z
    monitor-enter p0

    .line 179
    :try_start_5
    iget-boolean v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z

    if-eqz v7, :cond_8

    .line 180
    const-string v7, "EASDirectpush"

    const-string v8, "- onStart(): intent add to queue"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v7, Lcom/htc/android/mail/easdp/EASDirectpush;->mQueueStartService:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush;->startDPCheck()V

    .line 183
    iget-object v8, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 184
    :try_start_6
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 185
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 186
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 187
    :try_start_7
    monitor-exit p0

    goto/16 :goto_0

    .line 197
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7

    .line 186
    :catchall_3
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v7

    .line 189
    :cond_8
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    if-eqz v7, :cond_9

    .line 190
    const/4 v4, 0x1

    .line 191
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 192
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v7, 0x2

    iput v7, v5, Landroid/os/Message;->what:I

    .line 193
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 195
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mMainHandler:Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;

    invoke-virtual {v7, v5}, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v5           #msg:Landroid/os/Message;
    :cond_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 198
    if-nez v4, :cond_4

    .line 199
    iget-object v8, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v8

    .line 200
    :try_start_a
    iget-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 201
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 202
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 203
    const-string v7, "EASDirectpush"

    const-string v8, "mMainHandler should not be null!"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    :catchall_4
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v7
.end method
