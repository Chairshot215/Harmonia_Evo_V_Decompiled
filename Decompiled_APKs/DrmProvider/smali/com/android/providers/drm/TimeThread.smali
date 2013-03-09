.class public Lcom/android/providers/drm/TimeThread;
.super Ljava/lang/Thread;
.source "TimeThread.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x40

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmTimeThread"

.field public static final TimeServerName:[Ljava/lang/String;


# instance fields
.field buffer:[B

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time-nw.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nist1-ny.ustiming.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nist1-lv.ustiming.org"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time-a.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nist1-nj.ustiming.org"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nist1-la.ustiming.org"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "time-b.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nist1-pa.ustiming.org"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nist1-sj.ustiming.org"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "wwv.nist.gov"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/TimeThread;->TimeServerName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/providers/drm/TimeThread;->buffer:[B

    .line 47
    const-string v0, "DrmTimeThread"

    const-string v1, "DrmTimeThread is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/providers/drm/TimeThread;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public convertTime([B)J
    .locals 10
    .parameter "buffer"

    .prologue
    const-wide/16 v6, 0x0

    .line 76
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 77
    .local v2, data:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, block:[Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yy-MM-dd HH:mm:ss"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    const-string v8, "GMT+00:00"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 81
    .local v5, tz:Ljava/util/TimeZone;
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    const/4 v1, 0x0

    .line 85
    .local v1, current_time:Ljava/util/Date;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :cond_0
    :goto_0
    return-wide v6

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "DrmTimeThread"

    const-string v9, "conver time failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryTime(Ljava/lang/String;)Z
    .locals 12
    .parameter "serverAddress"

    .prologue
    .line 100
    const/4 v8, 0x0

    .line 103
    .local v8, result:Z
    const/4 v1, 0x0

    .line 105
    .local v1, clientSocket:Ljava/net/Socket;
    const/4 v9, 0x0

    .line 108
    .local v9, totalByteRead:I
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    const/16 v10, 0xd

    invoke-direct {v2, p1, v10}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 109
    .end local v1           #clientSocket:Ljava/net/Socket;
    .local v2, clientSocket:Ljava/net/Socket;
    const/16 v10, 0x2710

    :try_start_1
    invoke-virtual {v2, v10}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const/4 v4, 0x0

    .line 113
    .local v4, in:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 114
    :goto_0
    iget-object v10, p0, Lcom/android/providers/drm/TimeThread;->buffer:[B

    invoke-virtual {v4, v10}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, bytesRead:I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    .line 115
    add-int v10, v9, v0

    const/16 v11, 0x40

    if-ge v10, v11, :cond_0

    .line 117
    add-int/2addr v9, v0

    goto :goto_0

    .line 123
    :cond_0
    if-eqz v4, :cond_1

    .line 124
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_1
    iget-object v10, p0, Lcom/android/providers/drm/TimeThread;->buffer:[B

    invoke-virtual {p0, v10}, Lcom/android/providers/drm/TimeThread;->convertTime([B)J

    move-result-wide v6

    .line 132
    .local v6, remote:J
    const-wide v10, 0x125e72e7800L

    cmp-long v10, v6, v10

    if-lez v10, :cond_5

    .line 134
    const-string v10, "DrmTimeThread"

    const-string v11, "convert time is correct"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.provider.drm.action.ACTION_DRM_GET_TIME"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "com.android.providers.drm"

    const-string v11, "com.android.providers.drm.DrmScannerReceiver"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v10, "time"

    invoke-virtual {v5, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    iget-object v10, p0, Lcom/android/providers/drm/TimeThread;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    const/4 v8, 0x1

    .line 160
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_2

    .line 162
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 175
    .end local v0           #bytesRead:I
    .end local v2           #clientSocket:Ljava/net/Socket;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #remote:J
    .restart local v1       #clientSocket:Ljava/net/Socket;
    :goto_3
    return v8

    .line 123
    .end local v1           #clientSocket:Ljava/net/Socket;
    .restart local v2       #clientSocket:Ljava/net/Socket;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    if-eqz v4, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 152
    .end local v4           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 155
    .end local v2           #clientSocket:Ljava/net/Socket;
    .restart local v1       #clientSocket:Ljava/net/Socket;
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    const/4 v8, 0x0

    .line 160
    if-eqz v1, :cond_4

    .line 162
    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 168
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :goto_5
    const/4 v1, 0x0

    .line 169
    goto :goto_3

    .line 145
    .end local v1           #clientSocket:Ljava/net/Socket;
    .restart local v0       #bytesRead:I
    .restart local v2       #clientSocket:Ljava/net/Socket;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #remote:J
    :cond_5
    :try_start_7
    const-string v10, "DrmTimeThread"

    const-string v11, "convert time is incorrect"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 149
    const/4 v8, 0x0

    goto :goto_1

    .line 163
    :catch_1
    move-exception v3

    .line 165
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v0           #bytesRead:I
    .end local v2           #clientSocket:Ljava/net/Socket;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #remote:J
    .restart local v1       #clientSocket:Ljava/net/Socket;
    .local v3, e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 165
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 160
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    :goto_6
    if-eqz v1, :cond_6

    .line 162
    :try_start_8
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 168
    :cond_6
    :goto_7
    const/4 v1, 0x0

    throw v10

    .line 163
    :catch_3
    move-exception v3

    .line 165
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 160
    .end local v1           #clientSocket:Ljava/net/Socket;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #clientSocket:Ljava/net/Socket;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #clientSocket:Ljava/net/Socket;
    .restart local v1       #clientSocket:Ljava/net/Socket;
    goto :goto_6

    .line 152
    :catch_4
    move-exception v3

    goto :goto_4
.end method

.method public run()V
    .locals 8

    .prologue
    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 56
    .local v0, gen:Ljava/security/SecureRandom;
    sget-object v6, Lcom/android/providers/drm/TimeThread;->TimeServerName:[Ljava/lang/String;

    array-length v3, v6

    .line 57
    .local v3, length:I
    sget-object v6, Lcom/android/providers/drm/TimeThread;->TimeServerName:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    .line 58
    .local v5, s:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v1, v5

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 60
    sget-object v6, Lcom/android/providers/drm/TimeThread;->TimeServerName:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 63
    sget-object v6, Lcom/android/providers/drm/TimeThread;->TimeServerName:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 67
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/providers/drm/TimeThread;->queryTime(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    :cond_2
    return-void

    .line 71
    :cond_3
    const-string v6, "DrmTimeThread"

    const-string v7, "failed, try another server"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
