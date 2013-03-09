.class public final Lcom/htc/utils/ulog/ULog;
.super Ljava/lang/Object;
.source "ULog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ULog"

.field private static final charForDigit:[C

.field private static final mEnableHTC_UB:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sLogBuffer:Ljava/lang/StringBuilder;

.field private static final sSupportUserProfiling:Z

.field private static final sTimeBuffer:Ljava/lang/StringBuilder;

.field private static final sTimeZone:Ljava/util/TimeZone;

.field private static sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/utils/ulog/ULog;->mEnableHTC_UB:Z

    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserProfiling()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/ULog;->sSupportUserProfiling:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ULog;->sLock:Ljava/lang/Object;

    const-string v0, "Asia/Taipei"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/htc/utils/ulog/ULog;->sTimeZone:Ljava/util/TimeZone;

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    aget-char v1, v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_2

    sget-object v1, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    div-int/lit8 v2, p1, 0xa

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit8 v3, p1, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_3

    sget-object v1, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    div-int/lit8 v2, p1, 0x64

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    sget-object v1, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    div-int/lit16 v2, p1, 0x3e8

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v3, v0, 0x64

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/ulog/ULog;->charForDigit:[C

    rem-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static init()V
    .locals 2

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "userbehavior"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v1

    sput-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    :cond_0
    return-void
.end method

.method public static log(Lcom/htc/utils/ulog/ULogData;)V
    .locals 3

    sget-boolean v1, Lcom/htc/utils/ulog/ULog;->sSupportUserProfiling:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/ULog;->init()V

    :cond_2
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    new-instance v2, Lcom/htc/utils/ulog/ParcelableULogData;

    invoke-direct {v2, p0}, Lcom/htc/utils/ulog/ParcelableULogData;-><init>(Lcom/htc/utils/ulog/ULogData;)V

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->addLogEvent(Lcom/htc/utils/ulog/ParcelableULogData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    .locals 8

    sget-boolean v4, Lcom/htc/utils/ulog/ULog;->mEnableHTC_UB:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sget-object v5, Lcom/htc/utils/ulog/ULog;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->capacity()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ULogTags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/utils/ulog/ULog;->now()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v0, v4, 0x3

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-boolean v4, Lcom/htc/utils/ulog/ULog;->mEnableHTC_UB:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sget-object v5, Lcom/htc/utils/ulog/ULog;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->capacity()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ULogTags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/utils/ulog/ULog;->now()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v0, v4, 0x4

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/htc/utils/ulog/ULog;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    sget-boolean v1, Lcom/htc/utils/ulog/ULog;->mEnableHTC_UB:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/ULog;->init()V

    :cond_2
    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v1, p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->addLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static logStat(Lcom/htc/utils/ulog/ULogStat;)V
    .locals 3

    sget-boolean v1, Lcom/htc/utils/ulog/ULog;->sSupportUserProfiling:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/ULog;->init()V

    :cond_2
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    new-instance v2, Lcom/htc/utils/ulog/ParcelableULogStat;

    invoke-direct {v2, p0}, Lcom/htc/utils/ulog/ParcelableULogStat;-><init>(Lcom/htc/utils/ulog/ULogStat;)V

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->addLogStat(Lcom/htc/utils/ulog/ParcelableULogStat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/utils/ulog/UException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/utils/ulog/UException;->printStackTrace()V

    goto :goto_0
.end method

.method private static now()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/16 v4, 0x2d

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->append(Ljava/lang/StringBuilder;I)V

    sget-object v1, Lcom/htc/utils/ulog/ULog;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
