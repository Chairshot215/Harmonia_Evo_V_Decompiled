.class public Lcom/google/android/finsky/utils/DfeLog;
.super Ljava/lang/Object;
.source "DfeLog.java"


# static fields
.field public static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "DfeApi"

    sput-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/utils/DfeLog;->sStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x2

    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 84
    const-string v2, "<unknown>"

    move v0, v1

    .line 87
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 88
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 89
    const-class v5, Lcom/google/android/finsky/utils/DfeLog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    const/16 v4, 0x24

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "[%d] %s: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v7

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/DfeLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static varargs logTiming(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "msg"
    .parameter "args"

    .prologue
    const/4 v1, 0x2

    .line 63
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    :goto_1
    const-string v0, "%4dms: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/google/android/finsky/utils/DfeLog;->sStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DfeLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/google/android/finsky/utils/DfeLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/DfeLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method
