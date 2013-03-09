.class public Lcom/googlecode/android/wifi/tether/system/WebserviceTask;
.super Ljava/lang/Object;
.source "WebserviceTask.java"


# static fields
.field public static final BLUETOOTH_FILEPATH:Ljava/lang/String; = "/sdcard/android.tether"

.field public static final DOWNLOAD_FILEPATH:Ljava/lang/String; = "/sdcard/download"

.field public static final MSG_TAG:Ljava/lang/String; = "TETHER -> WebserviceTask"


# instance fields
.field public mainActivity:Lcom/googlecode/android/wifi/tether/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadBluetoothModule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "downloadFileUrl"
    .parameter "destinationFilename"

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v8

    .line 85
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v9, "/sdcard/android.tether"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, bluetoothDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_2
    const-string v9, ""

    invoke-virtual {p0, p1, v9, p2}, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, ".gz"

    const-string v11, ""

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v7, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 93
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v5, gzin:Ljava/util/zip/GZIPInputStream;
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 96
    .local v1, buf:[B
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v5, v1, v9, v10}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    .local v2, count:I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 100
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 101
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 102
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 103
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, inputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 108
    const/4 v8, 0x1

    goto :goto_0

    .line 98
    .end local v6           #inputFile:Ljava/io/File;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #gzin:Ljava/util/zip/GZIPInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .parameter "url"
    .parameter "destinationDirectory"
    .parameter "destinationFilename"

    .prologue
    .line 114
    const/4 v7, 0x1

    .line 115
    .local v7, filedownloaded:Z
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    .local v3, client:Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    .local v12, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 119
    .local v10, msg:Landroid/os/Message;
    :try_start_0
    invoke-interface {v3, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 120
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 121
    .local v14, status:Lorg/apache/http/StatusLine;
    const-string v16, "TETHER -> WebserviceTask"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Request returned status "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 123
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 124
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 125
    .local v8, instream:Ljava/io/InputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 126
    .local v6, fileSize:I
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v11, out:Ljava/io/FileOutputStream;
    const/16 v16, 0x2000

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 129
    .local v2, buf:[B
    const/4 v15, 0x0

    .line 130
    .local v15, totalRead:I
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, len:I
    if-gtz v9, :cond_0

    .line 139
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2           #buf:[B
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #fileSize:I
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v9           #len:I
    .end local v11           #out:Ljava/io/FileOutputStream;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    .end local v15           #totalRead:I
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 149
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->what:I

    .line 150
    sget-object v16, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity;->viewUpdateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return v7

    .line 131
    .restart local v2       #buf:[B
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #fileSize:I
    .restart local v8       #instream:Ljava/io/InputStream;
    .restart local v9       #len:I
    .restart local v11       #out:Ljava/io/FileOutputStream;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    .restart local v15       #totalRead:I
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 132
    const/16 v16, 0x4

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->what:I

    .line 133
    add-int/2addr v15, v9

    .line 134
    div-int/lit16 v0, v15, 0x400

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 135
    div-int/lit16 v0, v6, 0x400

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->arg2:I

    .line 136
    sget-object v16, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity;->viewUpdateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    .end local v2           #buf:[B
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #fileSize:I
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v9           #len:I
    .end local v11           #out:Ljava/io/FileOutputStream;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    .end local v15           #totalRead:I
    :catch_0
    move-exception v4

    .line 145
    .local v4, e:Ljava/io/IOException;
    const-string v16, "TETHER -> WebserviceTask"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Can\'t download file \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' to \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 142
    .end local v4           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_2
    new-instance v16, Ljava/io/IOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/IOException;-><init>()V

    throw v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public downloadUpdateFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "downloadFileUrl"
    .parameter "destinationFilename"

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 78
    :goto_0
    return v2

    .line 68
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/download"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, downloadDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_1
    :goto_1
    const-string v2, "/sdcard/download"

    invoke-virtual {p0, p1, v2, p2}, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/download/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, downloadFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public queryForProperty(Ljava/lang/String;)Ljava/util/Properties;
    .locals 11
    .parameter "url"

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, properties:Ljava/util/Properties;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 47
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 51
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 52
    .local v7, status:Lorg/apache/http/StatusLine;
    const-string v8, "TETHER -> WebserviceTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Request returned status "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 54
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 55
    .local v2, entity:Lorg/apache/http/HttpEntity;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v3           #properties:Ljava/util/Properties;
    .local v4, properties:Ljava/util/Properties;
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 61
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #properties:Ljava/util/Properties;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #status:Lorg/apache/http/StatusLine;
    .restart local v3       #properties:Ljava/util/Properties;
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    :goto_1
    const-string v8, "TETHER -> WebserviceTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t get property \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #properties:Ljava/util/Properties;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #properties:Ljava/util/Properties;
    .restart local v3       #properties:Ljava/util/Properties;
    goto :goto_1
.end method
