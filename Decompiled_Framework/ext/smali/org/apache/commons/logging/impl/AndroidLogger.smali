.class public abstract Lorg/apache/commons/logging/impl/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG_PREFIX_APACHE:Ljava/lang/String; = "APACHE HTTP (thCr=%d) - "

.field private static final TAG_PREFIX_APACHE_FOR_GBA_SERVICE:Ljava/lang/String; = "APACHE HTTP for GBA service (thCr=%d) - "

.field private static isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isThisGbaServiceProcess:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final logTag:Ljava/lang/String;

.field protected final logTagGba:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/logging/impl/AndroidLogger;->isThisGbaServiceProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/AndroidLogger;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "APACHE HTTP (thCr=%d) - "

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/logging/impl/AndroidLogger;->prepareTag(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/AndroidLogger;->logTag:Ljava/lang/String;

    const-string v3, "APACHE HTTP for GBA service (thCr=%d) - "

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/logging/impl/AndroidLogger;->prepareTag(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/AndroidLogger;->logTagGba:Ljava/lang/String;

    return-void
.end method

.method public static indicateGbaService()V
    .locals 2

    sget-object v0, Lorg/apache/commons/logging/impl/AndroidLogger;->isThisGbaServiceProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static isAndroidLoggingAvailable()Z
    .locals 7

    sget-object v4, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "android.util.Log"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-object v4, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v4, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v4, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-object v5, Lorg/apache/commons/logging/impl/AndroidLogger;->isAndroidLoggingAvailableHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method protected abstract androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method getLogTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/logging/impl/AndroidLogger;->isThisGbaServiceProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/logging/impl/AndroidLogger;->logTagGba:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/AndroidLogger;->logTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method prepareTag(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/AndroidLogger;->androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
