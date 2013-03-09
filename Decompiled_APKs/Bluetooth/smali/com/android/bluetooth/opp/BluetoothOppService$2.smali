.class Lcom/android/bluetooth/opp/BluetoothOppService$2;
.super Landroid/os/Handler;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 219
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 221
    :sswitch_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto :goto_0

    .line 228
    :sswitch_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v6, updateValues:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 230
    .local v0, contentUri:Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v8, "uri"

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v8, "mimetype"

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v9

    .line 236
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 237
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 240
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v6           #updateValues:Landroid/content/ContentValues;
    :sswitch_2
    const-string v8, "BtOpp Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update mInfo.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for MEDIA_SCANNED_FAILED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v7, updateValues1:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, contentUri1:Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v9

    .line 247
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 248
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 252
    .end local v1           #contentUri1:Landroid/net/Uri;
    .end local v7           #updateValues1:Landroid/content/ContentValues;
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljavax/obex/ObexTransport;

    .line 259
    .local v5, transport:Ljavax/obex/ObexTransport;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-nez v8, :cond_1

    .line 260
    const-string v8, "BtOpp Service"

    const-string v9, "Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V
    invoke-static {v8, v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$700(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    goto/16 :goto_0

    .line 263
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 264
    const-string v8, "BtOpp Service"

    const-string v9, "OPP busy! Reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_2
    invoke-interface {v5}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Ljava/io/IOException;
    const-string v8, "BtOpp Service"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    const-string v8, "BtOpp Service"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$802(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 276
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 277
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 278
    .local v3, msg1:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v3, Landroid/os/Message;->what:I

    .line 279
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 284
    .end local v3           #msg1:Landroid/os/Message;
    .end local v5           #transport:Ljavax/obex/ObexTransport;
    :sswitch_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 285
    const-string v8, "BtOpp Service"

    const-string v9, "Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v9

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$700(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    .line 287
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$802(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 288
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 290
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v8

    const/16 v9, 0x14

    if-ne v8, v9, :cond_4

    .line 291
    const-string v8, "BtOpp Service"

    const-string v9, "Retried 20 seconds, reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :try_start_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    invoke-interface {v8}, Ljavax/obex/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    :goto_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$802(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 298
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 294
    :catch_1
    move-exception v2

    .line 295
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "BtOpp Service"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    const-string v8, "BtOpp Service"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$802(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 302
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 303
    .local v4, msg2:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 304
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
