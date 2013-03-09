.class public final Lcom/htc/omadm/gui/ext/DMLog;
.super Ljava/lang/Object;
.source "DMLog.java"


# static fields
.field public static final FILENAME:Ljava/lang/String; = "dmlog"

.field private static IS_LOG:Z = false

.field private static final IS_LOG_DEFAULT:Z = true

.field private static final IS_LOG_KEY:Ljava/lang/String; = "log"

.field private static IS_SAVE_LOG:Z = false

.field private static final IS_SAVE_LOG_DEFAULT:Z = false

.field private static final IS_SAVE_LOG_KEY:Ljava/lang/String; = "savelog"

.field private static LOG_LEVEL:I = 0x0

.field private static final LOG_LEVEL_DEFAULT:I = 0x2

.field private static final LOG_PRIORITY_KEY:Ljava/lang/String; = "loglevel"

.field private static final LOG_TAG:Ljava/lang/String; = "DMLog"

.field private static MAX_LOG_SIZE:I = 0x0

.field private static final MAX_LOG_SIZE_DEFAULT:I = 0x14

.field private static final MAX_LOG_SIZE_KEY:Ljava/lang/String; = "maxfilesize"

.field private static logPath:Ljava/lang/String;

.field public static mHandler:Landroid/os/Handler;

.field private static writer:Lcom/htc/omadm/gui/ext/FileLooperThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/data/data/com.htc.android.omadm.service/dmlog/"

    sput-object v0, Lcom/htc/omadm/gui/ext/DMLog;->logPath:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/gui/ext/DMLog;->IS_LOG:Z

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/gui/ext/DMLog;->IS_SAVE_LOG:Z

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/htc/omadm/gui/ext/DMLog;->LOG_LEVEL:I

    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/htc/omadm/gui/ext/DMLog;->MAX_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsLog(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/omadm/gui/ext/DMLog;->IS_LOG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/omadm/gui/ext/DMLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsSaveLog(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 75
    sget-boolean v0, Lcom/htc/omadm/gui/ext/DMLog;->IS_SAVE_LOG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/omadm/gui/ext/DMLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, strPriority:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 219
    const-string v0, "A"

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :pswitch_0
    const-string v0, "V"

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "D"

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    const-string v0, "I"

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    const-string v0, "V"

    .line 214
    goto :goto_0

    .line 216
    :pswitch_4
    const-string v0, "E"

    .line 217
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static ResetLogConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 50
    const-string v3, "log"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMConfig;->GetConfigBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/omadm/gui/ext/DMLog;->IS_LOG:Z

    .line 51
    const-string v3, "savelog"

    invoke-static {v3, v7}, Lcom/htc/omadm/gui/ext/DMConfig;->GetConfigBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/omadm/gui/ext/DMLog;->IS_SAVE_LOG:Z

    .line 52
    const-string v3, "loglevel"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMConfig;->GetConfigInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/omadm/gui/ext/DMLog;->LOG_LEVEL:I

    .line 53
    const-string v3, "maxfilesize"

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMConfig;->GetConfigInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/omadm/gui/ext/DMLog;->MAX_LOG_SIZE:I

    .line 55
    const-string v3, "log"

    sget-boolean v4, Lcom/htc/omadm/gui/ext/DMLog;->IS_LOG:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMConfig;->SetConfString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    sget-boolean v3, Lcom/htc/omadm/gui/ext/DMLog;->IS_SAVE_LOG:Z

    if-eqz v3, :cond_0

    .line 57
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/omadm/gui/ext/DMConfig;->GetMiscDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dmlog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, logfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-wide/32 v3, 0xf4240

    sget v5, Lcom/htc/omadm/gui/ext/DMLog;->MAX_LOG_SIZE:I

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 60
    .local v1, maxsize:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 61
    sput-boolean v7, Lcom/htc/omadm/gui/ext/DMLog;->IS_SAVE_LOG:Z

    .line 68
    .end local v1           #maxsize:J
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 113
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v2, 0x3

    .line 123
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x6

    .line 179
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v2, 0x6

    .line 189
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x4

    .line 132
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v2, 0x4

    .line 141
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static intialwriter()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 80
    :try_start_0
    sget-object v2, Lcom/htc/omadm/gui/ext/DMLog;->writer:Lcom/htc/omadm/gui/ext/FileLooperThread;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/omadm/gui/ext/DMLog;->writer:Lcom/htc/omadm/gui/ext/FileLooperThread;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/ext/FileLooperThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    new-instance v2, Lcom/htc/omadm/gui/ext/FileLooperThread;

    invoke-direct {v2}, Lcom/htc/omadm/gui/ext/FileLooperThread;-><init>()V

    sput-object v2, Lcom/htc/omadm/gui/ext/DMLog;->writer:Lcom/htc/omadm/gui/ext/FileLooperThread;

    .line 82
    sget-object v2, Lcom/htc/omadm/gui/ext/DMLog;->writer:Lcom/htc/omadm/gui/ext/FileLooperThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/omadm/gui/ext/FileLooperThread;->setPriority(I)V

    .line 83
    sget-object v2, Lcom/htc/omadm/gui/ext/DMLog;->writer:Lcom/htc/omadm/gui/ext/FileLooperThread;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/ext/FileLooperThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static save2File(Ljava/lang/String;)V
    .locals 3
    .parameter "Logmsg"

    .prologue
    .line 226
    invoke-static {}, Lcom/htc/omadm/gui/ext/DMLog;->intialwriter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v1, Lcom/htc/omadm/gui/ext/DMLog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/htc/omadm/gui/ext/DMLog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/htc/omadm/gui/ext/DMLog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    .line 92
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v2, 0x2

    .line 103
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x5

    .line 150
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v2, 0x5

    .line 159
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "tr"

    .prologue
    const/4 v1, 0x5

    .line 170
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/htc/omadm/gui/ext/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/gui/ext/DMLog;->save2File(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/gui/ext/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
