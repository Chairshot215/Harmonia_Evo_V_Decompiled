.class public Lcom/htc/socialnetwork/ImageDownloadRunnable;
.super Ljava/lang/Object;
.source "ImageDownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-ImageDownloadRunnable"

.field private static final PREFIX:Ljava/lang/String; = "sn-"


# instance fields
.field private cancelled:Z

.field private is:Ljava/io/InputStream;

.field private mBundle:Landroid/os/Bundle;

.field private mCache:Lcom/htc/socialnetwork/Cache;

.field private mCacheSize:J

.field private mCallback:Lcom/htc/socialnetwork/PhotoCallback;

.field private mContext:Landroid/content/Context;

.field private mId:J

.field private mPhotoPath:Ljava/lang/String;

.field private mSmall:Z

.field private mUrl:Ljava/net/URL;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;Lcom/htc/socialnetwork/Cache;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mId:J

    iput-boolean v2, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->cancelled:Z

    iput-boolean v2, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->started:Z

    iput-object p3, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    iput-object p4, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mUrl:Ljava/net/URL;

    :try_start_0
    invoke-static {}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->generateID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mId:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p5, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCache:Lcom/htc/socialnetwork/Cache;

    if-eqz p4, :cond_0

    const-string v0, "low_resolution"

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mSmall:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized generateID()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-class v2, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private isNetworkAvailable()Z
    .locals 4

    iget-object v2, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->cancelled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->started:Z

    if-eqz v1, :cond_0

    const-string v1, "SocialNetwork-ImageDownloadRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abort Task ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mId:J

    return-wide v0
.end method

.method public run()V
    .locals 30

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->cancelled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/socialnetwork/ImageDownloadRunnable;->started:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->isNetworkAvailable()Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7da

    invoke-direct/range {v26 .. v27}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    :cond_1
    const/16 v25, 0xa

    invoke-static/range {v25 .. v25}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v20, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "filename"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    :cond_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mPhotoPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v14, v2}, Lcom/htc/socialnetwork/PhotoCallback;->onDownloadFinished(Lcom/htc/socialnetwork/Photo;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d6

    const-string v28, "ClientProtocolException"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v12}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string v25, "sn-"

    const/16 v26, 0x0

    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mPhotoPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v27}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mUrl:Ljava/net/URL;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    const v25, 0xea60

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCacheSize:J

    move-wide/from16 v25, v0

    cmp-long v25, v20, v25

    if-lez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d5

    invoke-direct/range {v26 .. v27}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d7

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "IllegalArgumentException, invalid URI: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mUrl:Ljava/net/URL;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gtz v25, :cond_5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d6

    invoke-direct/range {v26 .. v27}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d8

    const-string v28, "IOException"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v12}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    :try_start_5
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-wide v5

    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCache:Lcom/htc/socialnetwork/Cache;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v20

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/socialnetwork/Cache;->writeToCache(Ljava/io/InputStream;JLjava/io/FileOutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v15

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d6

    invoke-direct/range {v26 .. v27}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    :try_start_8
    throw v25
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v12, v1}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    :try_start_9
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v19, Lcom/htc/socialnetwork/Photo;

    invoke-direct/range {v19 .. v19}, Lcom/htc/socialnetwork/Photo;-><init>()V

    invoke-virtual/range {v19 .. v21}, Lcom/htc/socialnetwork/Photo;->setSize(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mUrl:Ljava/net/URL;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v10, v25, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "duration"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v14, v2}, Lcom/htc/socialnetwork/PhotoCallback;->onDownloadFinished(Lcom/htc/socialnetwork/Photo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCallback:Lcom/htc/socialnetwork/PhotoCallback;

    move-object/from16 v25, v0

    new-instance v26, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v27, 0x7d6

    invoke-direct/range {v26 .. v27}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0
.end method

.method public setPhotoCache(Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mPhotoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/htc/socialnetwork/ImageDownloadRunnable;->mCacheSize:J

    return-void
.end method
