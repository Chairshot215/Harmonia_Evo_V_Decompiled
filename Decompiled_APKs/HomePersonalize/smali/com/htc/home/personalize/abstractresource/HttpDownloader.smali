.class public Lcom/htc/home/personalize/abstractresource/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_POSTFIX:Ljava/lang/String; = ".tmp"

.field private static final DEFAULT_PREFIX:Ljava/lang/String; = null

.field public static final DEFAULT_TIMEOUT:I = 0x2bf20

.field private static final TAG:Ljava/lang/String; = null

.field private static final THREAD_LIMIT:I = 0x5

.field private static final USER_AGENT:Ljava/lang/String; = "android"

.field private static volatile isDirty:Z

.field private static threadCount:I


# instance fields
.field private volatile canceled:Z

.field private count:I

.field private volatile finished:Z

.field private final saveAs:Ljava/io/File;

.field private final target:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->DEFAULT_PREFIX:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->isDirty:Z

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Ljava/io/File;)V
    .locals 1
    .parameter "targetUrl"
    .parameter "saveAs"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v0, p0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z

    .line 126
    iput-boolean v0, p0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->finished:Z

    .line 127
    iput v0, p0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->count:I

    .line 131
    iput-object p1, p0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->target:Ljava/net/URI;

    .line 132
    iput-object p2, p0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    .line 134
    return-void
.end method

.method private static declared-synchronized cleanUpTheMess(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 248
    const-class v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 266
    :cond_0
    monitor-exit v8

    return-void

    .line 251
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    sput-boolean v7, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->isDirty:Z

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 254
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 255
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, tmp:Ljava/lang/String;
    sget-object v7, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->DEFAULT_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 258
    .local v1, deleted:Z
    if-nez v1, :cond_2

    .line 254
    .end local v1           #deleted:Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #tmp:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static download(Ljava/net/URI;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "targetUrl"
    .parameter "saveAs"
    .parameter "softTimeout"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-static {p3}, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->cleanUpTheMess(Landroid/content/Context;)V

    .line 46
    sget v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    const/4 v9, 0x5

    if-le v8, v9, :cond_1

    .line 47
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    const-string v9, "download: exceed thread limit, return failed"

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v7

    .line 117
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 51
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .line 52
    .local v0, dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    const/4 v3, 0x0

    .line 53
    .local v3, thread:Ljava/lang/Thread;
    const/4 v5, 0x0

    .line 57
    .local v5, tmp:Ljava/io/File;
    if-gez p2, :cond_2

    .line 58
    const p2, 0x2bf20

    .line 60
    :cond_2
    :try_start_0
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->DEFAULT_PREFIX:Ljava/lang/String;

    const-string v9, ".tmp"

    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 62
    new-instance v1, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    invoke-direct {v1, p0, v5}, Lcom/htc/home/personalize/abstractresource/HttpDownloader;-><init>(Ljava/net/URI;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .local v1, dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    :try_start_1
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v3           #thread:Ljava/lang/Thread;
    .local v4, thread:Ljava/lang/Thread;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 68
    int-to-long v8, p2

    invoke-virtual {v4, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v1, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->count:I

    if-ltz v8, :cond_6

    iget-boolean v8, v1, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->finished:Z

    if-eqz v8, :cond_6

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 75
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    const-string v9, "The downloaded file size = 0"

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v7

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    if-nez p1, :cond_4

    .line 82
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return tmp file path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, to:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 91
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 92
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-nez v8, :cond_0

    .end local v6           #to:Ljava/io/File;
    :cond_6
    move-object v3, v4

    .end local v4           #thread:Ljava/lang/Thread;
    .restart local v3       #thread:Ljava/lang/Thread;
    move-object v0, v1

    .line 105
    .end local v1           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .restart local v0       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 109
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download: failed to delete tmp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_7
    if-eqz v0, :cond_8

    .line 112
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z

    .line 114
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 115
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    move-object p1, v7

    .line 117
    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/io/IOException;
    :goto_3
    sget-object v8, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download: failed to create temp file in cache dir. saveAs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v0           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .restart local v0       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    goto :goto_3

    .end local v0           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .end local v3           #thread:Ljava/lang/Thread;
    .restart local v1       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .restart local v4       #thread:Ljava/lang/Thread;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #thread:Ljava/lang/Thread;
    .restart local v3       #thread:Ljava/lang/Thread;
    move-object v0, v1

    .end local v1           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .restart local v0       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    goto :goto_3

    .line 69
    .end local v0           #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .end local v3           #thread:Ljava/lang/Thread;
    .restart local v1       #dl:Lcom/htc/home/personalize/abstractresource/HttpDownloader;
    .restart local v4       #thread:Ljava/lang/Thread;
    :catch_3
    move-exception v8

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 137
    const-class v15, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    monitor-enter v15

    .line 138
    :try_start_0
    sget v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    .line 139
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v9, 0x0

    .line 143
    .local v9, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 144
    .local v10, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 145
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 146
    .local v3, bos:Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 148
    .local v5, client:Landroid/net/http/AndroidHttpClient;
    :try_start_1
    const-string v14, "android"

    invoke-static {v14}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 149
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->target:Ljava/net/URI;

    invoke-direct {v12, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 150
    .local v12, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v5, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 151
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_12

    .line 152
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 167
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12

    .line 170
    .end local v10           #os:Ljava/io/OutputStream;
    .local v11, os:Ljava/io/OutputStream;
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    .line 174
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    .local v8, i:I
    :goto_0
    const/4 v14, -0x1

    if-eq v14, v8, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z

    if-nez v14, :cond_11

    .line 175
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->count:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->count:I

    .line 176
    invoke-virtual {v4, v8}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 174
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    move-result v8

    goto :goto_0

    .line 139
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #client:Landroid/net/http/AndroidHttpClient;
    .end local v8           #i:I
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #os:Ljava/io/OutputStream;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v14

    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v14

    .line 182
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v7

    .line 183
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    sget-object v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run: FileNotFoundException saveAs="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " saveAs.exists="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 186
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    if-eqz v1, :cond_0

    .line 194
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 197
    :goto_2
    const/4 v1, 0x0

    .line 199
    :cond_0
    if-eqz v3, :cond_1

    .line 201
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 204
    :goto_3
    const/4 v3, 0x0

    .line 206
    :cond_1
    if-eqz v9, :cond_2

    .line 208
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 211
    :goto_4
    const/4 v9, 0x0

    .line 213
    :cond_2
    if-eqz v10, :cond_3

    .line 215
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 218
    :goto_5
    const/4 v10, 0x0

    .line 220
    :cond_3
    if-eqz v5, :cond_4

    .line 221
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 222
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :goto_6
    const/4 v5, 0x0

    .line 226
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z

    if-eqz v14, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->saveAs:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_5
    const/4 v6, 0x1

    .line 233
    .local v6, deleted:Z
    :goto_7
    sget-object v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run: canceled and deleted="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v6           #deleted:Z
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->finished:Z

    .line 238
    const-class v15, Lcom/htc/home/personalize/abstractresource/HttpDownloader;

    monitor-enter v15

    .line 239
    :try_start_b
    sget v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    add-int/lit8 v14, v14, -0x1

    sput v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->threadCount:I

    .line 240
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 241
    return-void

    .line 187
    :catch_1
    move-exception v7

    .line 188
    .local v7, e:Ljava/io/IOException;
    :goto_8
    :try_start_c
    sget-object v14, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run: IOException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->canceled:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 192
    if-eqz v1, :cond_7

    .line 194
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 197
    :goto_9
    const/4 v1, 0x0

    .line 199
    :cond_7
    if-eqz v3, :cond_8

    .line 201
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 204
    :goto_a
    const/4 v3, 0x0

    .line 206
    :cond_8
    if-eqz v9, :cond_9

    .line 208
    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 211
    :goto_b
    const/4 v9, 0x0

    .line 213
    :cond_9
    if-eqz v10, :cond_a

    .line 215
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 218
    :goto_c
    const/4 v10, 0x0

    .line 220
    :cond_a
    if-eqz v5, :cond_4

    .line 221
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 192
    .end local v7           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v14

    :goto_d
    if-eqz v1, :cond_b

    .line 194
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    .line 197
    :goto_e
    const/4 v1, 0x0

    .line 199
    :cond_b
    if-eqz v3, :cond_c

    .line 201
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 204
    :goto_f
    const/4 v3, 0x0

    .line 206
    :cond_c
    if-eqz v9, :cond_d

    .line 208
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 211
    :goto_10
    const/4 v9, 0x0

    .line 213
    :cond_d
    if-eqz v10, :cond_e

    .line 215
    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 218
    :goto_11
    const/4 v10, 0x0

    .line 220
    :cond_e
    if-eqz v5, :cond_f

    .line 221
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 222
    const/4 v5, 0x0

    .line 192
    :cond_f
    throw v14

    .line 227
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 240
    :catchall_2
    move-exception v14

    :try_start_15
    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v14

    .line 195
    :catch_2
    move-exception v15

    goto :goto_e

    .line 202
    :catch_3
    move-exception v15

    goto :goto_f

    .line 209
    :catch_4
    move-exception v15

    goto :goto_10

    .line 216
    :catch_5
    move-exception v15

    goto :goto_11

    .line 195
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v14

    goto/16 :goto_2

    .line 202
    :catch_7
    move-exception v14

    goto/16 :goto_3

    .line 209
    :catch_8
    move-exception v14

    goto/16 :goto_4

    .line 216
    :catch_9
    move-exception v14

    goto/16 :goto_5

    .line 195
    .local v7, e:Ljava/io/IOException;
    :catch_a
    move-exception v14

    goto :goto_9

    .line 202
    :catch_b
    move-exception v14

    goto :goto_a

    .line 209
    :catch_c
    move-exception v14

    goto :goto_b

    .line 216
    :catch_d
    move-exception v14

    goto :goto_c

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #i:I
    .restart local v11       #os:Ljava/io/OutputStream;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    :cond_11
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 192
    .end local v8           #i:I
    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    :cond_12
    if-eqz v1, :cond_13

    .line 194
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 197
    :goto_12
    const/4 v1, 0x0

    .line 199
    :cond_13
    if-eqz v3, :cond_14

    .line 201
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 204
    :goto_13
    const/4 v3, 0x0

    .line 206
    :cond_14
    if-eqz v9, :cond_15

    .line 208
    :try_start_18
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 211
    :goto_14
    const/4 v9, 0x0

    .line 213
    :cond_15
    if-eqz v10, :cond_16

    .line 215
    :try_start_19
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 218
    :goto_15
    const/4 v10, 0x0

    .line 220
    :cond_16
    if-eqz v5, :cond_4

    .line 221
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 195
    :catch_e
    move-exception v14

    goto :goto_12

    .line 202
    :catch_f
    move-exception v14

    goto :goto_13

    .line 209
    :catch_10
    move-exception v14

    goto :goto_14

    .line 216
    :catch_11
    move-exception v14

    goto :goto_15

    .line 192
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v14

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_d

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catchall_4
    move-exception v14

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto :goto_d

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catchall_5
    move-exception v14

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto :goto_d

    .line 187
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_12
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catch_13
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto/16 :goto_8

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catch_14
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 182
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_15
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catch_16
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto/16 :goto_1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #os:Ljava/io/OutputStream;
    :catch_17
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto/16 :goto_1
.end method
