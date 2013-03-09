.class public Landroid_maps_conflict_avoidance/com/google/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;
    }
.end annotation


# static fields
.field private static final START_TIME:J

.field private static entryBuffer:Ljava/lang/StringBuffer;

.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static final logEntries:Ljava/util/Vector;

.field private static logMemory:Z

.field private static logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

.field private static printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->START_TIME:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logEntries:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->timers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    const/4 v0, 0x1

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logTime:Z

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThread:Z

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logMemory:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isExplicitClearForTest:Z

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isEventLoggingEnabledForTest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v8

    const-string v11, "EVENT_LOG"

    invoke-interface {v8, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v11, v7

    const/16 v12, 0x258

    if-gt v11, v12, :cond_0

    sget-wide v11, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    sub-long v11, v9, v11

    const-wide/32 v13, 0x63ff9c

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    :cond_0
    if-nez v7, :cond_4

    invoke-static {v9, v10}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    :cond_1
    :goto_0
    const-string v11, "EVENT_LOG"

    invoke-interface {v8, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v7

    :cond_2
    const/4 v6, 0x0

    array-length v11, v7

    const/4 v12, 0x2

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    const/4 v12, 0x1

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    int-to-short v6, v11

    :cond_3
    add-int/lit8 v11, v6, 0x1

    int-to-short v6, v11

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v11, 0x2

    array-length v12, v7

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v4, v7, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v11, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    sub-long v11, v9, v11

    const-wide/32 v13, 0x63ff9c

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x64

    div-long v2, v11, v13

    long-to-int v11, v2

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v11

    const-string v12, "EVENT_LOG"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    sput-wide v9, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    :goto_1
    return v11

    :cond_4
    sget-object v11, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12, v9, v10}, Landroid_maps_conflict_avoidance/com/google/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v11, 0x0

    goto :goto_1
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x12c

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v0, :cond_2

    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    :goto_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static createEventTuple([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v3, p0

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    const-string v4, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    throw v2
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    if-eqz v0, :cond_0

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V
    .locals 0

    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    return-void
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    invoke-interface {v2, p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    return-object v1
.end method
