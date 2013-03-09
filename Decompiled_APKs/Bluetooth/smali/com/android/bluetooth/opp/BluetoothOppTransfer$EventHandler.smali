.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 140
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 148
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-lez v15, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v16, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v18, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;IZ)V

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v5

    .line 151
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v15, "BtOppTransfer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IllegalArgumentException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v15, "BtOppTransfer"

    const-string v16, "SDP query failed!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v16, 0x1f1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto/16 :goto_0

    .line 166
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;IZ)V

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static/range {v16 .. v17}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto/16 :goto_0

    .line 176
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v16, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v16, 0x1f1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto/16 :goto_0

    .line 187
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v16, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljavax/obex/ObexTransport;

    move-object/from16 v0, v16

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v0, v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 193
    :pswitch_5
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 194
    .local v6, id:I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 195
    .local v13, position:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 196
    .local v4, contentUri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v14, updateValues:Landroid/content/ContentValues;
    const-string v15, "current_bytes"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v4, v14, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    .end local v4           #contentUri:Landroid/net/Uri;
    .end local v6           #id:I
    .end local v13           #position:I
    .end local v14           #updateValues:Landroid/content/ContentValues;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 212
    .local v8, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v15, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v16

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$702(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 223
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    .line 232
    .end local v8           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 234
    .local v9, info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v15, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 244
    .end local v9           #info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 245
    .local v10, info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v0, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move/from16 v16, v0

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v16

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 253
    .end local v10           #info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 254
    .local v11, info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v15, :cond_0

    .line 256
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v15

    if-nez v15, :cond_3

    .line 257
    const-string v15, "BtOppTransfer"

    const-string v16, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 266
    if-eqz v11, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v0, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move/from16 v16, v0

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 271
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v16

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 259
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v15

    invoke-interface {v15}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 261
    :catch_1
    move-exception v5

    .line 262
    .local v5, e:Ljava/io/IOException;
    const-string v15, "BtOppTransfer"

    const-string v16, "failed to close mTransport"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    .end local v5           #e:Ljava/io/IOException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_3

    .line 280
    .end local v11           #info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v15, :cond_6

    .line 282
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v15

    if-nez v15, :cond_5

    .line 283
    const-string v15, "BtOppTransfer"

    const-string v16, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 287
    :catch_2
    move-exception v5

    .line 288
    .restart local v5       #e:Ljava/io/IOException;
    const-string v15, "BtOppTransfer"

    const-string v16, "failed to close mTransport"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v5           #e:Ljava/io/IOException;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v15

    invoke-interface {v15}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 298
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v15

    const-string v16, "notification"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 300
    .local v12, nm:Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v12, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 302
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v7, in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v16

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
