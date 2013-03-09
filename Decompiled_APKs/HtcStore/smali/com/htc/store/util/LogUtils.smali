.class public Lcom/htc/store/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final ANALYTIC_TAG:Ljava/lang/String; = "ANALYTIC_HTC_STORE"

.field private static final LOG_FLAG_ANALYTIC:I = 0x12

.field private static final LOG_FLAG_GENERAL:I = 0x11

.field private static final LOG_FLAG_LEVEL_CRITICAL:I = 0x15

.field private static final LOG_FLAG_LEVEL_NORMAL:I = 0x16

.field private static final QUALITY_BOARD_TAG:Ljava/lang/String; = "[Quality Board]"

.field private static final TOKEN_FILE_NAME:Ljava/lang/String; = "CKCL"

.field public static sLogFlagCritical:Z

.field public static sLogFlagNormal:Z

.field public static sLogIsAnalyticEnabled:Z

.field public static sLogIsGeneralEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    .line 15
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    .line 16
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsGeneralEnabled:Z

    .line 17
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsAnalyticEnabled:Z

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, flag:[I
    if-eqz v0, :cond_4

    .line 35
    aget v2, v0, v4

    and-int/lit8 v2, v2, 0x11

    const/16 v5, 0x11

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/htc/store/util/LogUtils;->sLogIsGeneralEnabled:Z

    .line 36
    aget v2, v0, v4

    and-int/lit8 v2, v2, 0x12

    const/16 v5, 0x12

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/htc/store/util/LogUtils;->sLogIsAnalyticEnabled:Z

    .line 37
    aget v1, v0, v3

    .line 39
    .local v1, logLevel:I
    const/16 v2, 0x15

    if-gt v1, v2, :cond_3

    .line 40
    sput-boolean v3, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    .line 41
    sput-boolean v3, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    .line 54
    .end local v1           #logLevel:I
    :cond_0
    :goto_2
    const-string v2, "HTC Store"

    const-string v3, "Log settings are false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "HTC Store"

    const-string v3, "Log settings are "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v2, "HTC Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable General Log : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsGeneralEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v2, "HTC Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable Analytic Log : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsAnalyticEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "HTC Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable Normal Log Level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v2, "HTC Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable Critical Log Level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    :cond_1
    move v2, v4

    .line 35
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 36
    goto/16 :goto_1

    .line 42
    .restart local v1       #logLevel:I
    :cond_3
    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    .line 43
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    .line 44
    sput-boolean v3, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    goto/16 :goto_2

    .line 49
    .end local v1           #logLevel:I
    :cond_4
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsGeneralEnabled:Z

    .line 50
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogIsAnalyticEnabled:Z

    .line 51
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    .line 52
    sput-boolean v4, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static critical(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 118
    sget-boolean v0, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "HTC Store"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static critical(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    sget-boolean v1, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    const-string v1, "HTC Store"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTC Store"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "tag"
    .parameter "msgs"

    .prologue
    .line 145
    sget-boolean v5, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v5, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 149
    .local v3, msg:Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v3           #msg:Ljava/lang/Object;
    :cond_0
    const-string v5, "HTC Store"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 191
    sget-boolean v0, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "HTC Store"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 185
    sget-boolean v0, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "HTC Store"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "prefix"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 178
    sget-boolean v0, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "HTC Store"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "HTC Store"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_0
    return-void
.end method

.method private static getBracketTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenFileDirectoryPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, result:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, folder:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.LHYGB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_0
    return-object v1
.end method

.method private static getTokenFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/store/util/LogUtils;->getTokenFileDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CKCL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenFlag()[I
    .locals 8

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, result:[I
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/htc/store/util/LogUtils;->getTokenFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, tokenFile:Ljava/io/File;
    const-string v5, "HTC Store"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string v5, "HTC Store"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read token file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, stream:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 78
    .end local v2           #stream:Ljava/io/DataInputStream;
    .local v3, stream:Ljava/io/DataInputStream;
    const/4 v5, 0x2

    :try_start_1
    new-array v1, v5, [I

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v1, v5

    .line 80
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_0
    if-eqz v3, :cond_3

    .line 89
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 100
    .end local v3           #stream:Ljava/io/DataInputStream;
    :cond_0
    :goto_1
    return-object v1

    .line 81
    .restart local v3       #stream:Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "HTC Store"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 85
    .end local v3           #stream:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #stream:Ljava/io/DataInputStream;
    :goto_2
    :try_start_4
    const-string v5, "HTC Store"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    if-eqz v2, :cond_0

    .line 89
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 90
    :catch_2
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HTC Store"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/DataInputStream;
    .restart local v3       #stream:Ljava/io/DataInputStream;
    :catch_3
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HTC Store"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 92
    .end local v3           #stream:Ljava/io/DataInputStream;
    .restart local v2       #stream:Ljava/io/DataInputStream;
    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 89
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 92
    :cond_1
    :goto_4
    throw v5

    .line 90
    :catch_4
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "HTC Store"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/DataInputStream;
    :cond_2
    const-string v5, "HTC Store"

    const-string v6, "no token file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .restart local v3       #stream:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/DataInputStream;
    .restart local v2       #stream:Ljava/io/DataInputStream;
    goto :goto_3

    .line 84
    :catch_5
    move-exception v0

    goto :goto_2

    .end local v2           #stream:Ljava/io/DataInputStream;
    .restart local v3       #stream:Ljava/io/DataInputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #stream:Ljava/io/DataInputStream;
    .restart local v2       #stream:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "tag"
    .parameter "msgs"

    .prologue
    .line 156
    sget-boolean v5, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v5, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 160
    .local v3, msg:Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v3           #msg:Ljava/lang/Object;
    :cond_0
    const-string v5, "HTC Store"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static varargs toQualityBoard(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 10
    .parameter "tag"
    .parameter "isSuccess"
    .parameter "msgs"

    .prologue
    const/4 v9, 0x1

    .line 197
    const-string v5, ""

    .line 198
    .local v5, type:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v6, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 202
    .local v3, msg:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    if-ne p1, v9, :cond_2

    const-string v5, "[S]"

    .line 205
    :goto_1
    const-string v6, "[Quality Board]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 204
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v5, "[E]"

    goto :goto_1
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "tag"
    .parameter "msgs"

    .prologue
    .line 134
    sget-boolean v5, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v5, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 138
    .local v3, msg:Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3           #msg:Ljava/lang/Object;
    :cond_0
    const-string v5, "HTC Store"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "tag"
    .parameter "msgs"

    .prologue
    .line 167
    sget-boolean v5, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v5, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/store/util/LogUtils;->getBracketTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 171
    .local v3, msg:Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v3           #msg:Ljava/lang/Object;
    :cond_0
    const-string v5, "HTC Store"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method
