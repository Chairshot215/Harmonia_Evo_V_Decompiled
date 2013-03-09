.class public Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    }
.end annotation


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "/KDDI/cmail/ChatGateway"

.field protected static final HTC_RETRY_INTERVAL_TIMER:J = 0x1388L

.field protected static final HTC_RETRY_MAX_TIMES:I = 0x6

.field private static final IP_MAX_LEN:I = 0xf

.field private static final KDDI_CHGW_PORT:I = 0x1a0b

.field protected static final KDDI_EVENT_CLOSE_SESSION:I = 0x2

.field protected static final KDDI_EVENT_CLOSE_SOCKET:I = 0x3

.field protected static final KDDI_EVENT_DATA_STATE_CHANGED:I = 0x1

.field protected static final KDDI_EVENT_MULTIPLE_SEND_ERROR:I = 0x7

.field protected static final KDDI_EVENT_PACKETSMSMGR_SYS_ERROR:I = 0x8

.field protected static final KDDI_EVENT_REQ_CONNECT:I = 0x4

.field protected static final KDDI_EVENT_REQ_SEND_MSG:I = 0x0

.field protected static final KDDI_EVENT_SEND:I = 0x5

.field protected static final KDDI_EVENT_SEND_CANCEL:I = 0x6

.field private static KDDI_OUTPUT_DEBUG_LOG:Z = false

.field private static KDDI_OUTPUT_VERBOSE_LOG:Z = false

.field static final KDDI_PROFILE_CMAIL_CONNECTED:I = 0x7

.field static final KDDI_PROFILE_CMAIL_CONNECTING:I = 0x6

.field static final KDDI_PROFILE_CMAIL_DISCONNECTED:I = 0x5

.field static final KDDI_PROFILE_CMAIL_SUSPENDED:I = 0x4

.field static final KDDI_PROFILE_NOT_CMAIL_CONNECTED:I = 0x3

.field static final KDDI_PROFILE_NOT_CMAIL_CONNECTING:I = 0x2

.field static final KDDI_PROFILE_NOT_CMAIL_DISCONNECTED:I = 0x1

.field static final KDDI_PROFILE_NOT_CMAIL_SUSPENDED:I = 0x0

.field private static final KDDI_REQ_CONNECT_TIMER:I = 0xc350

.field protected static final KDDI_SEND_SMS:I = 0x1

.field protected static final KDDI_SEND_SMS_IN_QUEUE:I = 0x0

.field static final KDDI_SEND_STATE_CANCEL:I = 0x5

.field static final KDDI_SEND_STATE_CONNECTING_SESSION:I = 0x2

.field static final KDDI_SEND_STATE_NON:I = 0x0

.field static final KDDI_SEND_STATE_REQUESTED:I = 0x1

.field static final KDDI_SEND_STATE_SENDED_RESULT:I = 0x4

.field static final KDDI_SEND_STATE_SERV_REPLY:I = 0x3

.field static final KDDI_SEND_STATE_WAIT_STOREREQ:I = 0x6

.field private static final KDDI_SESSION_RETRY_TIMER:I = 0x3e8

.field private static final KDDI_TAG:Ljava/lang/String; = "KddiPacketSMSManager"

.field private static final KDDI_TCMD_TIMER:I = 0x15f90

.field private static final KDDI_TOFF_TIMER:I = 0x2bf20

.field private static final READ_MODE:Ljava/lang/String; = "r"

.field protected static final SEND_DELAY_MILIIS:J = 0xc8L

.field static mCancelResult:I

.field static mConnectivityManager:Landroid/net/ConnectivityManager;

.field static mContext:Landroid/content/Context;

.field static mDataConnectIntentfilter:Landroid/content/IntentFilter;

.field static mDestNumber:Ljava/lang/String;

.field static mFirstSendTime:J

.field static mIn:Ljava/io/InputStream;

.field private static mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

.field static mIntentfilter:Landroid/content/IntentFilter;

.field private static mKddiChatGateWayIP:Ljava/lang/String;

.field static mLooper:Landroid/os/Looper;

.field static mMessageBody:Ljava/lang/String;

.field static mNetworkState:Ljava/lang/String;

.field static mOut:Ljava/io/OutputStream;

.field static mProfile:Ljava/lang/String;

.field static mPsmsSendMode:I

.field static mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

.field static mPsmsSenderThread:Ljava/lang/Thread;

.field static mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

.field static mRetRevThread:Ljava/lang/Thread;

.field static mReturnSendResult:I

.field static mSocket:Ljava/net/Socket;

.field static mthread:Landroid/os/HandlerThread;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field mCancelRetIntent:Landroid/app/PendingIntent;

.field private mConnectingLock:Ljava/lang/Object;

.field private mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

.field private mErrorCount:I

.field private mISms:Lcom/android/internal/telephony/ISms;

.field private mLocalPort:I

.field private final mPendingQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCnt:I

.field mSendRetIntent:Landroid/app/PendingIntent;

.field mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    new-instance v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;-><init>()V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build.Type> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;

    const/16 v0, 0x1387

    iput v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    iput v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    iput v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "KddiPacketSMSManager "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KddiPSMBgThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkFirstQueueMessage(Z)V
    .locals 6

    iget-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFirstQueueMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiDisconnectSession()I

    move-result v0

    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiDisconnectSession ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "KddiPacketSMSManager"

    const-string v3, "send delay: 200"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeIPAddresses(Ljava/lang/String;)[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    .locals 20

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/16 v5, 0x20

    invoke-virtual {v7, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v3, 0x10

    invoke-virtual {v7, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v15

    const/16 v17, 0x0

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    add-int v2, v17, v18

    sget-boolean v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v17, :cond_0

    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "num of IP> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v14, 0x40

    new-array v9, v2, [Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    const/16 v11, 0x20

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getIpAddrString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getIpAddrString([B)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v13}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v9, v6

    sget-boolean v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v17, :cond_1

    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IP> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decode error> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "bits"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v9

    :catch_0
    move-exception v4

    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "parsing IP error> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getISmsInterface()Lcom/android/internal/telephony/ISms;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_0

    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    :cond_0
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private getIpAddrString([B)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-byte v5, p1, v0

    and-int/lit16 v2, v5, 0xff

    if-nez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isRoaming()Z
    .locals 2

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    return v0
.end method

.method public static kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    .locals 3

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance return mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    return-object v0
.end method

.method private kddiInitFieldVariable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    sput p5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    sput-object p3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sput-object p2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    sput-object p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first send time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-virtual {v0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method private unRegisterForConnectionStateChanges()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-virtual {v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->unregister()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "finalize> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method protected htcConnectSocket()Z
    .locals 11

    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "KddiPacketSMSManager"

    const-string v8, "htcConnectSocket Start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcCreateSocket()V

    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sput-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIn:Ljava/io/InputStream;

    const-string v7, "KddiPacketSMSManager"

    const-string v8, "get socket inputStream: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    sput-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    const-string v7, "KddiPacketSMSManager"

    const-string v8, "get socket outputStream: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-eqz v0, :cond_1

    iget v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRetryCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    sub-long v3, v7, v9

    const-wide/32 v5, 0x2a7b0

    iget v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    const/4 v8, 0x6

    if-le v7, v8, :cond_6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_1
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_2

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "htcConnectSocket End: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    move v7, v1

    :goto_2
    return v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;->printStackTrace()V

    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_3

    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_4

    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_5

    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const-wide/32 v7, 0x2a7b0

    cmp-long v7, v3, v7

    if-lez v7, :cond_7

    sget-wide v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transaction spent time too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v7, "KddiPacketSMSManager"

    const-string v8, "retry sleep Start! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    const-string v7, "KddiPacketSMSManager"

    const-string v8, "retry sleep End! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcConnectSocket()Z

    move-result v7

    goto :goto_2
.end method

.method protected htcCreateSocket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;,
            Ljava/net/BindException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1388

    const/4 v7, 0x0

    :try_start_0
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    const/16 v3, 0x1b57

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v2, 0x1388

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    :cond_1
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/net/Socket;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    const/16 v4, 0x1a0b

    const/4 v5, 0x0

    iget v6, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get socket instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Address already in use"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_2

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "source port in use exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error count limit!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    new-instance v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;

    invoke-direct {v2, p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcCreateSocket()V

    goto :goto_0

    :cond_4
    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    throw v1
.end method

.method protected isRadioState(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "isRadioState start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lez v0, :cond_2

    :goto_0
    return v1

    :cond_2
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v1, :cond_3

    const-string v1, "KddiPacketSMSManager"

    const-string v2, "isRadioState return[true]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isServiceState(Landroid/content/Context;)Z
    .locals 4

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "isServiceState start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "Network info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "isServiceState return[true]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected kddiChangeNwDevice()Z
    .locals 9

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isRoaming()Z

    move-result v3

    sget-boolean v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoaming> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getISmsInterface()Lcom/android/internal/telephony/ISms;

    move-result-object v6

    const-string v7, "C826831F"

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ISms;->requestHtcDmCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get NV Str> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->decodeIPAddresses(Ljava/lang/String;)[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    if-nez v6, :cond_3

    :cond_1
    :goto_1
    return v5

    :cond_2
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getISmsInterface()Lcom/android/internal/telephony/ISms;

    move-result-object v6

    const-string v7, "C826821F"

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ISms;->requestHtcDmCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    aget-object v6, v2, v6

    iget-object v6, v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;->mIp:Ljava/lang/String;

    sput-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-static {v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->lookupHost(Ljava/lang/String;)I

    move-result v1

    sget-boolean v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v5, :cond_4

    const-string v5, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mKddiChatGateWayIP> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipAddress> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v6, 0x17

    invoke-virtual {v5, v6, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dm command error> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected kddiCheckCmailProfile()I
    .locals 5

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiCheckCmailProfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noNetwork? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    :goto_1
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mProfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return checkResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x7

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected kddiConnectSession()I
    .locals 3

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "kddiConnectSession Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableCMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected kddiConnectSocket()Z
    .locals 4

    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "KddiPacketSMSManager"

    const-string v2, "kddiConnectSocket Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcConnectSocket()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    invoke-direct {v1, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    const-string v3, "KddiResultReceiver"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    :cond_1
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "KddiPacketSMSManager"

    const-string v2, "kddiConnectSocket End"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method protected kddiDisconnectSession()I
    .locals 3

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "kddiDisconnectSession Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableCMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected kddiIsCallState()Z
    .locals 5

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "kddiIsCallState Start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callState> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "KddiPacketSMSManager"

    const-string v3, "kddiIsCallState End"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kddiRelease()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "KddiPacketSMSManager"

    const-string v5, "kddiRelease Start"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    :cond_3
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectIntentfilter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectIntentfilter:Landroid/content/IntentFilter;

    :cond_5
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mProfile:Ljava/lang/String;

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    :cond_6
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v6, v3, :cond_9

    const/4 v3, 0x5

    :try_start_3
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    sget v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send CancelResult ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    const-string v3, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel tracker: tracker@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    if-ne v8, v3, :cond_c

    const/16 v1, 0x17

    :goto_2
    iget-object v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v1}, Landroid/app/PendingIntent;->send(I)V

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_8

    const-string v3, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send error result in queue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_9

    const-string v3, "KddiPacketSMSManager"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x0

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    :cond_a
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_b

    const-string v3, "KddiPacketSMSManager"

    const-string v5, "kddiRelease End"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-direct {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    return-void

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "KddiPacketSMSManager"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    :cond_c
    :try_start_8
    iget v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    if-ne v9, v3, :cond_d

    const/16 v1, 0x2b

    goto :goto_2

    :cond_d
    const/4 v1, 0x1

    goto :goto_2

    :cond_e
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v3, 0x0

    :try_start_9
    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_f
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    sget v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_10

    const-string v3, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send SendResult ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x4

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3
.end method

.method public kddiSendCancel(Landroid/app/PendingIntent;)Z
    .locals 8

    const/4 v5, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "KddiPacketSMSManager"

    const-string v4, "kddiSendCancel Start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v5, v3, :cond_8

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v3, v5, :cond_1

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v3, v5, :cond_6

    :cond_1
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v6, v3, :cond_5

    const/16 v3, 0xa

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x5

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iput v1, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "KddiPacketSMSManager"

    const-string v5, "sendMessage error [KDDI_EVENT_SEND_CANCEL]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "KddiPacketSMSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCancel End : Request["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    :try_start_1
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v7, v3, :cond_2

    const/16 v3, 0x1e

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    :try_start_2
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v6, v3, :cond_7

    const/16 v3, 0x18

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    goto :goto_0

    :cond_7
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v7, v3, :cond_2

    const/16 v3, 0x2c

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public kddiSendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9

    const-string v1, "KddiPacketSMSManager"

    const-string v2, "kddiSendSmsMessage request Start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSendState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has request?: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put in queue: tracker@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v8

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V
    .locals 12

    const/4 v6, 0x0

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "kddiSendSmsMessage Start"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mDestAddr:Ljava/lang/String;

    iget-object v2, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mMessage:Ljava/lang/String;

    iget-object v4, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget v5, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v0, v5, :cond_5

    const/4 v0, 0x2

    if-eq v0, v5, :cond_5

    const/4 v0, 0x3

    if-eq v0, v5, :cond_5

    :cond_1
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal param context = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sendingMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "Send SendResult[RESULT_ERROR_GENERIC_FAILURE]"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "KddiPacketSMSManager"

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isRadioState(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    if-ne v0, v5, :cond_8

    const/16 v0, 0x17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    :cond_6
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "KddiPacketSMSManager"

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x2

    if-ne v0, v5, :cond_9

    const/16 v0, 0x2b

    :try_start_2
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isServiceState(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    if-ne v0, v5, :cond_c

    const/16 v0, 0x17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    :cond_b
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto :goto_1

    :cond_c
    const/4 v0, 0x2

    if-ne v0, v5, :cond_d

    const/16 v0, 0x2b

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_3

    :cond_d
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_e
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send State: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    iget-object v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v0, v9, :cond_11

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_f

    if-nez v6, :cond_f

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "sendMessage error [KDDI_EVENT_MULTIPLE_SEND_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_10

    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending State["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x6

    iget-object v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v0, v9, :cond_14

    const/4 v0, 0x2

    if-eq v5, v0, :cond_14

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_12

    if-nez v6, :cond_12

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "sendMessage error [KDDI_EVENT_MULTIPLE_SEND_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_13

    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending State["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]/illegal param"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto/16 :goto_1

    :cond_14
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiInitFieldVariable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "kddiInitFieldVariable: [KDDI_SEND_STATE_REQUESTED]"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_15

    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "KddiPacketSMSManager"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    new-instance v0, Ljava/lang/Thread;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const-string v10, "PacketSMSSender"

    invoke-direct {v0, v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSenderThread:Ljava/lang/Thread;

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_15
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_17

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_16

    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendMessage [KDDI_EVENT_REQ_SEND_MSG] return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "sendMessage error [KDDI_EVENT_PACKETSMSMGR_SYS_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0x2bf20

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    if-nez v6, :cond_19

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_18

    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendMessageDelayed [KDDI_EVENT_CLOSE_SESSION] return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "sendMessage error [KDDI_EVENT_PACKETSMSMGR_SYS_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_19
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "KddiPacketSMSManager"

    const-string v9, "kddiSendSmsMessage End"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected kddiSetIntentFilter()V
    .locals 3

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "kddiSetIntentFilter Start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "kddiSetIntentFilter End"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected kddiWriteSocket()V
    .locals 13

    const/16 v12, 0x2b

    const/16 v11, 0x17

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    :try_start_0
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v5, v4, :cond_2

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendingMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCreateSendMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_6

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "KddiPacketSMSManager"

    const-string v5, "Change IRCformat Err"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_3

    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    :goto_1
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    :goto_2
    return-void

    :cond_2
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-static {v4, v5, v6}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCreateSendMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_5

    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_15

    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    :goto_3
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto :goto_2

    :cond_5
    const/4 v4, 0x3

    :try_start_1
    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPsmsSendMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ircData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v4, "kddi-emoji"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    new-array v0, v4, [B

    const-string v4, "kddi-emoji"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiChangeCmailPictCharCode([BI)[B

    move-result-object v0

    if-nez v0, :cond_b

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_8

    const-string v4, "KddiPacketSMSManager"

    const-string v5, "Change PictCharCode Err"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_9

    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    :goto_4
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto/16 :goto_2

    :cond_9
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_a

    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    :cond_a
    const/4 v4, 0x3

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiIsCallState()Z

    move-result v4

    if-ne v9, v4, :cond_f

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_c

    const-string v4, "KddiPacketSMSManager"

    const-string v5, "ON Calling"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_d

    const/16 v4, 0x16

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    :goto_5
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto/16 :goto_2

    :cond_d
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_e

    const/16 v4, 0x2a

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    :cond_e
    const/4 v4, 0x1

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    :cond_f
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v4, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v10, v4, :cond_14

    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiConnectSocket()Z

    move-result v1

    if-nez v1, :cond_12

    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_10

    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    :goto_6
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    monitor-exit v5

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_10
    :try_start_4
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_11

    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_6

    :cond_11
    const/4 v4, 0x1

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_6

    :cond_12
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_13

    const-string v4, "KddiPacketSMSManager"

    const-string v6, "Message Send"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v6, 0x3

    iput v6, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v4, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v6, v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x15f90

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_14

    if-nez v1, :cond_14

    const-string v4, "KddiPacketSMSManager"

    const-string v6, "EVETN_CLOSE_SOCKET Register Failed"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_15
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_16

    sput v12, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3

    :cond_16
    sput v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3
.end method

.method public setISmsInterface(Lcom/android/internal/telephony/ISms;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    return-void
.end method
