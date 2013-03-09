.class public Lcom/futuredial/config/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static ENABLE_LOG:Z

.field public static ENABLE_REPORT:Z

.field private static PROFAMANCE_LOG:Z

.field private static REDIRECTTO_FILE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    sput-boolean v1, Lcom/futuredial/config/Logger;->ENABLE_REPORT:Z

    .line 19
    sput-boolean v1, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/config/Logger;->REDIRECTTO_FILE:Z

    .line 21
    sput-boolean v1, Lcom/futuredial/config/Logger;->PROFAMANCE_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 51
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p0, p1}, Lcom/futuredial/config/Logger;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 60
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {p0, p1, p2}, Lcom/futuredial/config/Logger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 87
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p0, p1}, Lcom/futuredial/config/Logger;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 96
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    invoke-static {p0, p1, p2}, Lcom/futuredial/config/Logger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 25
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0, p1}, Lcom/futuredial/config/Logger;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 34
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    invoke-static {p0, p1, p2}, Lcom/futuredial/config/Logger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static initLog(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 105
    sget-boolean v3, Lcom/futuredial/config/Logger;->REDIRECTTO_FILE:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v3, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 110
    .local v1, out:Ljava/io/PrintStream;
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #out:Ljava/io/PrintStream;
    .local v2, out:Ljava/io/PrintStream;
    move-object v1, v2

    .line 118
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v1       #out:Ljava/io/PrintStream;
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 119
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 121
    .end local v1           #out:Ljava/io/PrintStream;
    :cond_0
    return-void

    .line 114
    .restart local v1       #out:Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 144
    sget-boolean v3, Lcom/futuredial/config/Logger;->REDIRECTTO_FILE:Z

    if-eqz v3, :cond_0

    .line 146
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, date:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, "Thread|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v3, "=>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v3, "=>Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method private static logMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 125
    sget-boolean v3, Lcom/futuredial/config/Logger;->REDIRECTTO_FILE:Z

    if-eqz v3, :cond_0

    .line 127
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, date:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "Thread|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "=>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 43
    sget-boolean v0, Lcom/futuredial/config/Logger;->PROFAMANCE_LOG:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 69
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p0, p1}, Lcom/futuredial/config/Logger;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 78
    sget-boolean v0, Lcom/futuredial/config/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-static {p0, p1, p2}, Lcom/futuredial/config/Logger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    return-void
.end method
