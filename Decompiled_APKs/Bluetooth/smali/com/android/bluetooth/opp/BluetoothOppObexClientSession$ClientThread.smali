.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 146
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 143
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 147
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 149
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 150
    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 153
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "BtOpp ObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    return-void
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 237
    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 238
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_0

    .line 243
    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 244
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 245
    .local v2, hs:Ljavax/obex/HeaderSet;
    monitor-enter p0

    .line 246
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 251
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 257
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 258
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 210
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 226
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :cond_2
    :goto_2
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 222
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 228
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 263
    const/16 v2, 0xc8

    .line 266
    .local v2, status:I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_0

    .line 268
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 271
    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 275
    const/16 v2, 0x1f1

    .line 277
    :cond_1
    if-ne v2, v5, :cond_3

    .line 279
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 285
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 290
    :goto_2
    if-ne v2, v5, :cond_4

    .line 291
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 292
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 293
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 302
    :goto_3
    return-void

    .line 283
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 287
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 296
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 297
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 298
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 299
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 553
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v0, 0x1f0

    .line 555
    .local v0, status:I
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 556
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 312
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 334
    :goto_0
    return-object v1

    .line 324
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v2, updateValues:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 327
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 31
    .parameter "fileInfo"

    .prologue
    .line 338
    const/4 v11, 0x0

    .line 339
    .local v11, error:Z
    const/16 v22, -0x1

    .line 340
    .local v22, responseCode:I
    const/16 v23, 0xc8

    .line 341
    .local v23, status:I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 344
    .local v7, contentUri:Landroid/net/Uri;
    new-instance v21, Ljavax/obex/HeaderSet;

    invoke-direct/range {v21 .. v21}, Ljavax/obex/HeaderSet;-><init>()V

    .line 345
    .local v21, request:Ljavax/obex/HeaderSet;
    const/16 v27, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 346
    const/16 v27, 0x42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 348
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    const/16 v29, 0xc0

    invoke-static/range {v27 .. v29}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 352
    const/16 v27, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 353
    const/16 v19, 0x0

    .line 354
    .local v19, putOperation:Ljavax/obex/ClientOperation;
    const/16 v17, 0x0

    .line 355
    .local v17, outputStream:Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 357
    .local v12, inputStream:Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 358
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 359
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 370
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    .line 371
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 372
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 374
    if-nez v11, :cond_0

    .line 377
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 378
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v12

    .line 386
    :cond_0
    :goto_1
    if-nez v11, :cond_1

    .line 387
    :try_start_6
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v26, updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v27, "status"

    const/16 v28, 0xc0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    .end local v26           #updateValues:Landroid/content/ContentValues;
    :cond_1
    if-nez v11, :cond_1b

    .line 394
    const/16 v18, 0x0

    .line 396
    .local v18, position:I
    const/4 v15, 0x0

    .line 397
    .local v15, okToProceed:Z
    const-wide/16 v24, 0x0

    .line 398
    .local v24, timestamp:J
    const-wide/16 v13, 0x0

    .line 399
    .local v13, lastTime:J
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v16

    .line 400
    .local v16, outputBufferSize:I
    move/from16 v0, v16

    new-array v6, v0, [B

    .line 401
    .local v6, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x4000

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 402
    .local v4, a:Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v27, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 404
    .local v5, b:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_3

    .line 405
    move/from16 v0, v16

    #calls: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v4, v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v20

    .line 407
    .local v20, readLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    const-wide/32 v29, 0xc350

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 411
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 412
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 415
    const/16 v27, 0x0

    :try_start_8
    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 416
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 418
    add-int v18, v18, v20

    .line 420
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_16

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    .line 423
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 424
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 435
    :goto_2
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 437
    const/16 v27, 0x90

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 440
    :cond_2
    const/4 v15, 0x1

    .line 441
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 450
    .end local v20           #readLength:I
    .end local v26           #updateValues:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_19

    if-eqz v15, :cond_19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_19

    .line 454
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v4, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v20

    .line 455
    .restart local v20       #readLength:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 458
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    move-result v22

    .line 460
    const/16 v27, 0x90

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 463
    const/4 v15, 0x0

    goto :goto_3

    .line 359
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #buffer:[B
    .end local v13           #lastTime:J
    .end local v15           #okToProceed:Z
    .end local v16           #outputBufferSize:I
    .end local v18           #position:I
    .end local v20           #readLength:I
    .end local v24           #timestamp:J
    :catchall_0
    move-exception v27

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 503
    :catch_0
    move-exception v10

    .line 504
    .local v10, e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 511
    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 512
    if-nez v11, :cond_6

    .line 513
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 514
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_26

    .line 516
    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 517
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v23, 0x1ef

    .line 519
    const/16 v27, 0xcf

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 520
    const/16 v23, 0x196

    .line 522
    :cond_4
    const/16 v27, 0xc3

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    const/16 v27, 0xc6

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 524
    :cond_5
    const/16 v23, 0x193

    .line 533
    :cond_6
    :goto_4
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 539
    :goto_5
    if-eqz v12, :cond_7

    .line 540
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 542
    :cond_7
    if-eqz v19, :cond_8

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 549
    .end local v10           #e:Ljava/io/IOException;
    :cond_8
    :goto_6
    return v23

    .line 363
    :catch_1
    move-exception v10

    .line 364
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v23, 0x1f0

    .line 365
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 367
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when put HeaderSet "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5

    .line 368
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 372
    .end local v10           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v27

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5

    .line 505
    :catch_2
    move-exception v10

    .line 506
    .local v10, e:Ljava/lang/NullPointerException;
    :try_start_12
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 511
    :try_start_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 512
    if-nez v11, :cond_b

    .line 513
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 514
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_28

    .line 516
    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 517
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v23, 0x1ef

    .line 519
    const/16 v27, 0xcf

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 520
    const/16 v23, 0x196

    .line 522
    :cond_9
    const/16 v27, 0xc3

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    const/16 v27, 0xc6

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 524
    :cond_a
    const/16 v23, 0x193

    .line 533
    :cond_b
    :goto_7
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 539
    :goto_8
    if-eqz v12, :cond_c

    .line 540
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 542
    :cond_c
    if-eqz v19, :cond_8

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_6

    .line 545
    :catch_3
    move-exception v10

    .line 546
    .local v10, e:Ljava/io/IOException;
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when closing stream after send"

    :goto_9
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 379
    .end local v10           #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 380
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v23, 0x1f0

    .line 381
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 382
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when openOutputStream"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5

    .line 383
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 412
    .end local v10           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #buffer:[B
    .restart local v13       #lastTime:J
    .restart local v15       #okToProceed:Z
    .restart local v16       #outputBufferSize:I
    .restart local v18       #position:I
    .restart local v20       #readLength:I
    .restart local v24       #timestamp:J
    :catchall_2
    move-exception v27

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5

    .line 507
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #buffer:[B
    .end local v13           #lastTime:J
    .end local v15           #okToProceed:Z
    .end local v16           #outputBufferSize:I
    .end local v18           #position:I
    .end local v20           #readLength:I
    .end local v24           #timestamp:J
    :catch_5
    move-exception v10

    .line 508
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_17
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 511
    :try_start_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 512
    if-nez v11, :cond_f

    .line 513
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 514
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_2a

    .line 516
    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 517
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v23, 0x1ef

    .line 519
    const/16 v27, 0xcf

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 520
    const/16 v23, 0x196

    .line 522
    :cond_d
    const/16 v27, 0xc3

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    const/16 v27, 0xc6

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 524
    :cond_e
    const/16 v23, 0x193

    .line 533
    :cond_f
    :goto_a
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 539
    :goto_b
    if-eqz v12, :cond_10

    .line 540
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 542
    :cond_10
    if-eqz v19, :cond_8

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_6

    .line 545
    :catch_6
    move-exception v10

    .line 546
    .local v10, e:Ljava/io/IOException;
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when closing stream after send"

    goto/16 :goto_9

    .line 424
    .end local v10           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #buffer:[B
    .restart local v13       #lastTime:J
    .restart local v15       #okToProceed:Z
    .restart local v16       #outputBufferSize:I
    .restart local v18       #position:I
    .restart local v20       #readLength:I
    .restart local v24       #timestamp:J
    :catchall_3
    move-exception v27

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v27
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 510
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #buffer:[B
    .end local v13           #lastTime:J
    .end local v15           #okToProceed:Z
    .end local v16           #outputBufferSize:I
    .end local v18           #position:I
    .end local v20           #readLength:I
    .end local v24           #timestamp:J
    :catchall_4
    move-exception v27

    .line 511
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 512
    if-nez v11, :cond_13

    .line 513
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 514
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_24

    .line 516
    const/16 v28, 0xa0

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 517
    const-string v28, "BtOpp ObexClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response error code is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v23, 0x1ef

    .line 519
    const/16 v28, 0xcf

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 520
    const/16 v23, 0x196

    .line 522
    :cond_11
    const/16 v28, 0xc3

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    const/16 v28, 0xc6

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 524
    :cond_12
    const/16 v23, 0x193

    .line 533
    :cond_13
    :goto_c
    const/16 v28, 0xc8

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 539
    :goto_d
    if-eqz v12, :cond_14

    .line 540
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 542
    :cond_14
    if-eqz v19, :cond_15

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    .line 510
    :cond_15
    :goto_e
    throw v27

    .line 428
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #buffer:[B
    .restart local v13       #lastTime:J
    .restart local v15       #okToProceed:Z
    .restart local v16       #outputBufferSize:I
    .restart local v18       #position:I
    .restart local v20       #readLength:I
    .restart local v24       #timestamp:J
    :cond_16
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 431
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 432
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v27

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v27

    .line 446
    :cond_17
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject, Response code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 465
    :cond_18
    add-int v18, v18, v20

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 473
    .local v8, currentTime:J
    sub-long v27, v8, v13

    const-wide/16 v29, 0x3e8

    cmp-long v27, v27, v29

    if-ltz v27, :cond_3

    .line 474
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 475
    move-wide v13, v8

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 482
    .end local v8           #currentTime:J
    .end local v20           #readLength:I
    :cond_19
    const/16 v27, 0xc3

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    const/16 v27, 0xc6

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 484
    :cond_1a
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " length "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 486
    const/16 v23, 0x193

    .line 511
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #buffer:[B
    .end local v13           #lastTime:J
    .end local v15           #okToProceed:Z
    .end local v16           #outputBufferSize:I
    .end local v18           #position:I
    .end local v24           #timestamp:J
    :cond_1b
    :goto_f
    :try_start_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 512
    if-nez v11, :cond_1e

    .line 513
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v22

    .line 514
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c

    .line 516
    const/16 v27, 0xa0

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 517
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v23, 0x1ef

    .line 519
    const/16 v27, 0xcf

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 520
    const/16 v23, 0x196

    .line 522
    :cond_1c
    const/16 v27, 0xc3

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_1d

    const/16 v27, 0xc6

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 524
    :cond_1d
    const/16 v23, 0x193

    .line 533
    :cond_1e
    :goto_10
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 539
    :goto_11
    if-eqz v12, :cond_1f

    .line 540
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 542
    :cond_1f
    if-eqz v19, :cond_8

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_6

    .line 545
    :catch_7
    move-exception v10

    .line 546
    .restart local v10       #e:Ljava/io/IOException;
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when closing stream after send"

    goto/16 :goto_9

    .line 487
    .end local v10           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #buffer:[B
    .restart local v13       #lastTime:J
    .restart local v15       #okToProceed:Z
    .restart local v16       #outputBufferSize:I
    .restart local v18       #position:I
    .restart local v24       #timestamp:J
    :cond_20
    const/16 v27, 0xcf

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 488
    :try_start_20
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject file type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/16 v23, 0x196

    goto/16 :goto_f

    .line 490
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_22

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-nez v27, :cond_22

    .line 491
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SendFile finished send out file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " length "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_f

    .line 495
    :cond_22
    const/4 v11, 0x1

    .line 496
    const/16 v23, 0x1ea

    .line 497
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->abort()V

    .line 499
    const-string v27, "BtOpp ObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SendFile interrupted when send out file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " at "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " of "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5

    goto/16 :goto_f

    .line 545
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #buffer:[B
    .end local v13           #lastTime:J
    .end local v15           #okToProceed:Z
    .end local v16           #outputBufferSize:I
    .end local v18           #position:I
    .end local v24           #timestamp:J
    :catch_8
    move-exception v10

    .line 546
    .restart local v10       #e:Ljava/io/IOException;
    const-string v28, "BtOpp ObexClient"

    const-string v29, "Error when closing stream after send"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 536
    .end local v10           #e:Ljava/io/IOException;
    :cond_23
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8

    goto/16 :goto_d

    .line 529
    :cond_24
    const/16 v23, 0x1f1

    goto/16 :goto_c

    .line 545
    .restart local v10       #e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    .line 546
    const-string v27, "BtOpp ObexClient"

    const-string v28, "Error when closing stream after send"

    goto/16 :goto_9

    .line 536
    :cond_25
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9

    goto/16 :goto_5

    .line 529
    :cond_26
    const/16 v23, 0x1f1

    goto/16 :goto_4

    .line 536
    .local v10, e:Ljava/lang/NullPointerException;
    :cond_27
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_3

    goto/16 :goto_8

    .line 529
    :cond_28
    const/16 v23, 0x1f1

    goto/16 :goto_7

    .line 536
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_29
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6

    goto/16 :goto_b

    .line 529
    :cond_2a
    const/16 v23, 0x1f1

    goto/16 :goto_a

    .line 536
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2b
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_7

    goto/16 :goto_11

    .line 529
    :cond_2c
    const/16 v23, 0x1f1

    goto/16 :goto_10
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 160
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 561
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 562
    monitor-enter p0

    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 571
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 572
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 577
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 578
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect()V

    .line 179
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, e1:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 186
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 187
    :catch_1
    move-exception v2

    goto :goto_1

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 194
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 199
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 200
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method
