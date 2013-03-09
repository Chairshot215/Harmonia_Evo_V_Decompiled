.class Lcom/android/dmportread/DMCommandService$ConnectionRunnable;
.super Ljava/lang/Object;
.source "DMCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRunnable"
.end annotation


# instance fields
.field private connection:Ljava/net/Socket;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method public constructor <init>(Lcom/android/dmportread/DMCommandService;Landroid/content/Context;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "s"

    .prologue
    .line 6186
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6187
    iput-object p2, p0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->mContext:Landroid/content/Context;

    .line 6188
    iput-object p3, p0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    .line 6189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 6192
    const/16 v13, 0x400

    new-array v5, v13, [B

    .line 6193
    .local v5, pRecbyte:[B
    const-string v7, "ROTATION_0"

    .line 6194
    .local v7, sOrient_0:Ljava/lang/String;
    const-string v10, "ROTATION_90"

    .line 6195
    .local v10, sOrient_90:Ljava/lang/String;
    const-string v8, "ROTATION_180"

    .line 6196
    .local v8, sOrient_180:Ljava/lang/String;
    const-string v9, "ROTATION_270"

    .line 6197
    .local v9, sOrient_270:Ljava/lang/String;
    const/16 v13, 0x400

    new-array v6, v13, [B

    .line 6199
    .local v6, pSendByte:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->mContext:Landroid/content/Context;

    const-string v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 6200
    .local v1, d:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 6202
    .local v4, orientation:I
    packed-switch v4, :pswitch_data_0

    .line 6216
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6223
    :goto_0
    :try_start_0
    new-instance v11, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6224
    .local v11, sRead:Ljava/io/DataInputStream;
    invoke-virtual {v11, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    .line 6225
    .local v3, nRec:I
    if-lez v3, :cond_0

    .line 6227
    const-string v13, "DMCmdSvs"

    const-string v14, "receive client message success\uff01"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    new-instance v12, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6229
    .local v12, sWrite:Ljava/io/DataOutputStream;
    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 6231
    .end local v12           #sWrite:Ljava/io/DataOutputStream;
    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6239
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6246
    .end local v3           #nRec:I
    .end local v11           #sRead:Ljava/io/DataInputStream;
    :goto_1
    return-void

    .line 6204
    :pswitch_0
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6205
    goto :goto_0

    .line 6207
    :pswitch_1
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6208
    goto :goto_0

    .line 6210
    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6211
    goto :goto_0

    .line 6213
    :pswitch_3
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6214
    goto :goto_0

    .line 6241
    .restart local v3       #nRec:I
    .restart local v11       #sRead:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    .line 6243
    .local v2, e:Ljava/io/IOException;
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " read boot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6233
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #nRec:I
    .end local v11           #sRead:Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    .line 6235
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " read boot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6239
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 6241
    :catch_2
    move-exception v2

    .line 6243
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " read boot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6238
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 6239
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dmportread/DMCommandService$ConnectionRunnable;->connection:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6244
    :goto_2
    throw v13

    .line 6241
    :catch_3
    move-exception v2

    .line 6243
    .restart local v2       #e:Ljava/io/IOException;
    const-string v14, "DMCmdSvs"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " read boot "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
