.class public Lcom/google/android/gsf/gtalkservice/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/Log$LogRecord;
    }
.end annotation


# static fields
.field private static final sLogList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Log$LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 103
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 10
    .parameter "out"

    .prologue
    .line 225
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 228
    .local v2, pid:I
    sget-object v5, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    monitor-enter v5

    .line 229
    :try_start_0
    sget-object v4, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;

    .line 230
    .local v0, i:Lcom/google/android/gsf/gtalkservice/Log$LogRecord;
    const-string v4, "%s %5d %5d %s %s: %s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->time:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->tid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->levelString:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->tag:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;->message:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v0           #i:Lcom/google/android/gsf/gtalkservice/Log$LogRecord;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 146
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 157
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 114
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 2
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 208
    .local v0, retVal:Z
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 209
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sShowDebugLogs:Z

    .line 212
    :cond_0
    if-nez v0, :cond_1

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 216
    :cond_1
    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 185
    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/Log$LogRecord;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v0, rec:Lcom/google/android/gsf/gtalkservice/Log$LogRecord;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 191
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v1, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    .line 193
    sget-object v1, Lcom/google/android/gsf/gtalkservice/Log;->sLogList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 195
    :cond_2
    monitor-exit v2

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 243
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sanitizeUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"

    .prologue
    .line 256
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string p0, "--"

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 124
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 135
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 173
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wtf\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
