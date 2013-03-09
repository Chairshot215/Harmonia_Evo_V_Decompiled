.class public final Lcom/htc/omadm/util/DMLog;
.super Ljava/lang/Object;
.source "DMLog.java"


# static fields
.field private static DMFile:Ljava/lang/String; = null

.field private static DMFilePath:Ljava/lang/String; = null

.field public static final FILENAME:Ljava/lang/String; = "dmlog"

.field private static IS_LOG:Ljava/lang/Boolean; = null

.field private static final IS_LOG_DEFAULT:Z = false

.field private static final IS_LOG_KEY:Ljava/lang/String; = "log"

.field private static IS_SAVE_LOG:Z = false

.field private static final IS_SAVE_LOG_DEFAULT:Z = false

.field private static final IS_SAVE_LOG_KEY:Ljava/lang/String; = "savelog"

.field private static LOG_LEVEL:I = 0x0

.field private static final LOG_LEVEL_DEFAULT:I = 0x6

.field private static final LOG_PRIORITY_KEY:Ljava/lang/String; = "loglevel"

.field private static final LOG_TAG:Ljava/lang/String; = "DMLog"

.field private static MAX_LOG_SIZE:I = 0x0

.field private static final MAX_LOG_SIZE_DEFAULT:I = 0x14

.field private static final MAX_LOG_SIZE_KEY:Ljava/lang/String; = "maxfilesize"

.field private static logPath:Ljava/lang/String;

.field public static mHandler:Landroid/os/Handler;

.field private static writer:Lcom/htc/omadm/util/FileLooperThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "/data/data/com.redbend.vdmc/files/"

    sput-object v0, Lcom/htc/omadm/util/DMLog;->logPath:Ljava/lang/String;

    .line 30
    const-string v0, "OMADM.dat"

    sput-object v0, Lcom/htc/omadm/util/DMLog;->DMFile:Ljava/lang/String;

    .line 31
    const-string v0, "data/local"

    sput-object v0, Lcom/htc/omadm/util/DMLog;->DMFilePath:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/util/DMLog;->IS_LOG:Ljava/lang/Boolean;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/util/DMLog;->IS_SAVE_LOG:Z

    .line 54
    const/4 v0, 0x6

    sput v0, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

    .line 55
    const/16 v0, 0x14

    sput v0, Lcom/htc/omadm/util/DMLog;->MAX_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckDmFile()Z
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/omadm/util/DMLog;->DMFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/util/DMLog;->DMFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static GetLogLevel()I
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/htc/omadm/util/DMLog;->IS_LOG:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/htc/omadm/util/DMLog;->SetLogLevel()V

    .line 253
    :cond_0
    sget v0, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

    return v0
.end method

.method private static IsLog(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 81
    sget-object v0, Lcom/htc/omadm/util/DMLog;->IS_LOG:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/htc/omadm/util/DMLog;->SetLogLevel()V

    .line 83
    :cond_0
    sget-object v0, Lcom/htc/omadm/util/DMLog;->IS_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsSaveLog(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 87
    sget-boolean v0, Lcom/htc/omadm/util/DMLog;->IS_SAVE_LOG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

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
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, strPriority:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 231
    const-string v0, "A"

    .line 234
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

    .line 216
    :pswitch_0
    const-string v0, "V"

    .line 217
    goto :goto_0

    .line 219
    :pswitch_1
    const-string v0, "D"

    .line 220
    goto :goto_0

    .line 222
    :pswitch_2
    const-string v0, "I"

    .line 223
    goto :goto_0

    .line 225
    :pswitch_3
    const-string v0, "V"

    .line 226
    goto :goto_0

    .line 228
    :pswitch_4
    const-string v0, "E"

    .line 229
    goto :goto_0

    .line 214
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
    .locals 7

    .prologue
    .line 65
    sget-boolean v3, Lcom/htc/omadm/util/DMLog;->IS_SAVE_LOG:Z

    if-eqz v3, :cond_0

    .line 67
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.redbend.vdmc/files/dmlog"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, logfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const-wide/32 v3, 0xf4240

    sget v5, Lcom/htc/omadm/util/DMLog;->MAX_LOG_SIZE:I

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 70
    .local v1, maxsize:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/omadm/util/DMLog;->IS_SAVE_LOG:Z

    .line 78
    .end local v1           #maxsize:J
    :cond_0
    return-void
.end method

.method private static SetLogLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 257
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/htc/omadm/util/DMLog;->IS_LOG:Ljava/lang/Boolean;

    .line 258
    const-string v1, "ro.build.description"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, version:Ljava/lang/String;
    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 261
    sput v3, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

    .line 262
    :cond_0
    invoke-static {}, Lcom/htc/omadm/util/DMLog;->CheckDmFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    sput v3, Lcom/htc/omadm/util/DMLog;->LOG_LEVEL:I

    .line 264
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 125
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 131
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

    .line 135
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
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

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 140
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

    .line 191
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 197
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

    .line 201
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
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

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 208
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

    .line 144
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
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

    .line 153
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
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

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 158
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

    .line 92
    :try_start_0
    sget-object v2, Lcom/htc/omadm/util/DMLog;->writer:Lcom/htc/omadm/util/FileLooperThread;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/omadm/util/DMLog;->writer:Lcom/htc/omadm/util/FileLooperThread;

    invoke-virtual {v2}, Lcom/htc/omadm/util/FileLooperThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    new-instance v2, Lcom/htc/omadm/util/FileLooperThread;

    invoke-direct {v2}, Lcom/htc/omadm/util/FileLooperThread;-><init>()V

    sput-object v2, Lcom/htc/omadm/util/DMLog;->writer:Lcom/htc/omadm/util/FileLooperThread;

    .line 94
    sget-object v2, Lcom/htc/omadm/util/DMLog;->writer:Lcom/htc/omadm/util/FileLooperThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/FileLooperThread;->setPriority(I)V

    .line 95
    sget-object v2, Lcom/htc/omadm/util/DMLog;->writer:Lcom/htc/omadm/util/FileLooperThread;

    invoke-virtual {v2}, Lcom/htc/omadm/util/FileLooperThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static save2File(Ljava/lang/String;)V
    .locals 3
    .parameter "Logmsg"

    .prologue
    .line 238
    invoke-static {}, Lcom/htc/omadm/util/DMLog;->intialwriter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sget-object v1, Lcom/htc/omadm/util/DMLog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/htc/omadm/util/DMLog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/htc/omadm/util/DMLog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    .line 104
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
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

    .line 115
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
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

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 120
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

    .line 162
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v1, p0, p1}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 167
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

    .line 171
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
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

    invoke-static {v2, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-static {v2}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 177
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

    .line 182
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsSaveLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/htc/omadm/util/DMLog;->Log2String(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/util/DMLog;->save2File(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-static {v1}, Lcom/htc/omadm/util/DMLog;->IsLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
