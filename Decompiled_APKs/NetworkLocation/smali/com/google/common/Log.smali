.class public Lcom/google/common/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/Log$PreferenceLogEventStore;,
        Lcom/google/common/Log$LogEventStore;,
        Lcom/google/common/Log$ThrowableListener;,
        Lcom/google/common/Log$StandardErrorPrinter;,
        Lcom/google/common/Log$Printer;
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

.field private static logEventStore:Lcom/google/common/Log$LogEventStore;

.field private static logMemory:Z

.field private static logThread:Z

.field private static logTime:Z

.field private static printer:Lcom/google/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Lcom/google/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/Log;->START_TIME:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/common/Log;->logEntries:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/common/Log;->timers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    sput v2, Lcom/google/common/Log;->throwableCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/common/Log;->lastEventTimeMillis:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/common/Log;->logTime:Z

    sput-boolean v2, Lcom/google/common/Log;->logThread:Z

    sput-boolean v2, Lcom/google/common/Log;->logMemory:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/google/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/google/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/google/common/Log;->printer:Lcom/google/common/Log$Printer;

    sput-boolean v2, Lcom/google/common/Log;->isExplicitClearForTest:Z

    sput-boolean v2, Lcom/google/common/Log;->isEventLoggingEnabledForTest:Z

    new-instance v0, Lcom/google/common/Log$PreferenceLogEventStore;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, Lcom/google/common/Log$PreferenceLogEventStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/Log;->logEventStore:Lcom/google/common/Log$LogEventStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x12c

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v0, :cond_2

    sput-object p0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    sget-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

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

    sget-object v2, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

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

    invoke-static {v0}, Lcom/google/common/Log;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    sget-object v0, Lcom/google/common/Log;->throwableListener:Lcom/google/common/Log$ThrowableListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/Log;->throwableListener:Lcom/google/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
