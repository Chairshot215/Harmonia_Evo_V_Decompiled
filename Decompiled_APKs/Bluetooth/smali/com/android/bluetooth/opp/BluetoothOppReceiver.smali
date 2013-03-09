.class public Lcom/android/bluetooth/opp/BluetoothOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppReceiver"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const/16 v2, 0xc

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v2, :cond_0

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 77
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v13, in1:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v2, 0x1000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v13           #in1:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 91
    :cond_2
    const-string v2, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v14

    .line 94
    .local v14, mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 99
    .local v16, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    .line 102
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, deviceName:Ljava/lang/String;
    iget-boolean v2, v14, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v9

    .line 106
    .local v9, batchSize:I
    const v2, 0x7f04003e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 111
    .end local v9           #batchSize:I
    .local v17, toastMsg:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    .end local v17           #toastMsg:Ljava/lang/String;
    :cond_3
    const v2, 0x7f04003d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #toastMsg:Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v11           #deviceName:Ljava/lang/String;
    .end local v14           #mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    .end local v16           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v17           #toastMsg:Ljava/lang/String;
    :cond_4
    const-string v2, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 116
    .local v20, uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v12, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 123
    .local v15, notMgr:Landroid/app/NotificationManager;
    if-eqz v15, :cond_1

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v15, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 127
    .end local v12           #in:Landroid/content/Intent;
    .end local v15           #notMgr:Landroid/app/NotificationManager;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_5
    const-string v2, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    const v2, 0x7f040014

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 133
    :cond_6
    const-string v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.btopp.intent.action.LIST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 143
    .restart local v20       #uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v18

    .line 144
    .local v18, transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v18, :cond_8

    .line 145
    const-string v2, "BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    :cond_8
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 162
    :goto_2
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 164
    .restart local v15       #notMgr:Landroid/app/NotificationManager;
    if-eqz v15, :cond_1

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v15, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 156
    .end local v15           #notMgr:Landroid/app/NotificationManager;
    :cond_9
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v12       #in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 168
    .end local v12           #in:Landroid/content/Intent;
    .end local v18           #transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_a
    const-string v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 171
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v12       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v2, "direction"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 175
    .end local v12           #in:Landroid/content/Intent;
    :cond_b
    const-string v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 178
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v12       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 182
    .end local v12           #in:Landroid/content/Intent;
    :cond_c
    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 185
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .restart local v12       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v2, "android.btopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v12           #in:Landroid/content/Intent;
    :cond_d
    const-string v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 194
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 195
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 198
    const-string v2, "visibility"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 199
    .local v25, visibilityColumn:I
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 200
    .local v24, visibility:I
    const-string v2, "confirm"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 202
    .local v22, userConfirmationColumn:I
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 203
    .local v21, userConfirmation:I
    if-nez v21, :cond_e

    if-nez v24, :cond_e

    .line 205
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .end local v21           #userConfirmation:I
    .end local v22           #userConfirmationColumn:I
    .end local v23           #values:Landroid/content/ContentValues;
    .end local v24           #visibility:I
    .end local v25           #visibilityColumn:I
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 213
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_f
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 215
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v19, updateValues:Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    .end local v19           #updateValues:Landroid/content/ContentValues;
    :cond_10
    const-string v2, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/16 v17, 0x0

    .line 223
    .restart local v17       #toastMsg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v18

    .line 225
    .restart local v18       #transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v18, :cond_11

    .line 226
    const-string v2, "BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :cond_11
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 231
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_13

    .line 232
    const v2, 0x7f040019

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 247
    :cond_12
    :goto_3
    if-eqz v17, :cond_1

    .line 248
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 233
    :cond_13
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 234
    const v2, 0x7f040016

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 238
    :cond_14
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 239
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_15

    .line 240
    const v2, 0x7f04001b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 242
    :cond_15
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 243
    const v2, 0x7f040024

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_3
.end method
