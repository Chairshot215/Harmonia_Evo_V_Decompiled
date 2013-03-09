.class public Lcom/htc/cs/receiver/PoweronReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PoweronReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PoweronReceiver"

.field private static final _DEBUG:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readServerClock(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.dashboard.readServerTime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intentcs:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method private savePrefSyncFrequency(ILandroid/content/Context;)V
    .locals 3
    .parameter "syncfreq"
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x1

    .line 46
    .local v0, freq:I
    sparse-switch p1, :sswitch_data_0

    .line 70
    const/4 v0, 0x7

    .line 74
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.cs.dashboard.sync_schedule"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, intentcs:Landroid/content/Intent;
    const-string v2, "syncFrequency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void

    .line 49
    .end local v1           #intentcs:Landroid/content/Intent;
    :sswitch_0
    const/4 v0, 0x0

    .line 50
    goto :goto_0

    .line 52
    :sswitch_1
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 55
    :sswitch_2
    const/4 v0, 0x2

    .line 56
    goto :goto_0

    .line 58
    :sswitch_3
    const/4 v0, 0x3

    .line 59
    goto :goto_0

    .line 61
    :sswitch_4
    const/4 v0, 0x4

    .line 62
    goto :goto_0

    .line 64
    :sswitch_5
    const/4 v0, 0x5

    .line 65
    goto :goto_0

    .line 67
    :sswitch_6
    const/4 v0, 0x6

    .line 68
    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0xe10 -> :sswitch_2
        0x1c20 -> :sswitch_3
        0x2a30 -> :sswitch_4
        0x5460 -> :sswitch_5
        0xa8c0 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p2, :cond_0

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, action:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 95
    const-string v3, "MyHTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PoweronReceiver.onReceive(): intent="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiver onReceive(): ACTION_BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.boot_completed"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v16, intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_2
    :goto_1
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 220
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 221
    .local v13, arr:[B
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13}, Ljava/lang/String;-><init>([B)V

    .line 222
    .local v14, data:Ljava/lang/String;
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiverGot SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v7, Landroid/content/Intent;

    const-string v3, "ConfirmAccountFromServer"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v7, mintent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.accountactivities.CSConfirmDialog"

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v3, "data"

    invoke-virtual {v7, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, notifyTitle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, notifyDes:Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-object v9, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 233
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 103
    .end local v5           #notifyTitle:Ljava/lang/String;
    .end local v6           #notifyDes:Ljava/lang/String;
    .end local v7           #mintent:Landroid/content/Intent;
    .end local v13           #arr:[B
    .end local v14           #data:Ljava/lang/String;
    :cond_3
    const-string v3, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiver onReceive(): com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.htc.cs"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 109
    .local v10, account:[Landroid/accounts/Account;
    array-length v3, v10

    if-lez v3, :cond_2

    .line 112
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.dashboard.sim.loaded"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.htc.cs.dashboard.check_sim_change"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v15, intentCheckSimChange:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 120
    .end local v10           #account:[Landroid/accounts/Account;
    .end local v15           #intentCheckSimChange:Landroid/content/Intent;
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_4
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    const-string v3, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, ss:Ljava/lang/String;
    const-string v3, "MyHTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PoweronReceiver onReceive(): ACTION_SIM_STATE_CHANGED ss = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v17, :cond_2

    const-string v3, "LOADED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 132
    .end local v17           #ss:Ljava/lang/String;
    :cond_5
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.account.change"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 136
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_6
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/htc/cs/util/ConnectivityWatcher;->get(Landroid/content/Context;)Lcom/htc/cs/util/ConnectivityWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cs/util/ConnectivityWatcher;->connectivityChanged()V

    .line 143
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getTriggeredSendSN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 147
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiverFOTA is installed completely and network recover. Do send serial number"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.FOTA_INSTALL_COMPLETE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/cs/receiver/PoweronReceiver;->readServerClock(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 154
    :cond_8
    const-string v3, "com.htc.cs.connectedservice.loginsuccess"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 156
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.bind_complete"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 159
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_9
    const-string v3, "com.htc.cs.connectedservice.accountremove"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 161
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 164
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_a
    const-string v3, "com.htc.wota.WotaSettingsUtility.action.SET_SYNC_FREQUENCY"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 165
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.dashboard.timechange"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 168
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_b
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 170
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.dashboard.timechange"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 174
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_c
    const-string v3, "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 175
    const-string v3, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, accountType:Ljava/lang/String;
    const-string v3, "com.htc.cs"

    invoke-virtual {v11, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    const-string v3, "sync_interval"

    const/4 v4, -0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 180
    .local v18, syncInterval:I
    const-string v3, "MyHTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PoweronReceiversyncInterval = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/receiver/PoweronReceiver;->savePrefSyncFrequency(ILandroid/content/Context;)V

    goto/16 :goto_1

    .line 187
    .end local v11           #accountType:Ljava/lang/String;
    .end local v18           #syncInterval:I
    :cond_d
    const-string v3, "com.htc.cs.CSTriageException"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 189
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 191
    .restart local v14       #data:Ljava/lang/String;
    const/4 v7, 0x0

    .line 194
    .restart local v7       #mintent:Landroid/content/Intent;
    const-string v3, "InvalidCredential"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 195
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiverInvalidCredential "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v7, Landroid/content/Intent;

    .end local v7           #mintent:Landroid/content/Intent;
    const-string v3, "com.htc.cs.CSSyncWebExceptionDB.RequireNewPassword"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v7       #mintent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.accountactivities.CSConfirmDialog"

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5       #notifyTitle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 200
    .restart local v6       #notifyDes:Ljava/lang/String;
    const/4 v4, 0x4

    const/4 v8, 0x0

    sget-object v9, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    .line 211
    :goto_2
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiver Start Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 204
    .end local v5           #notifyTitle:Ljava/lang/String;
    .end local v6           #notifyDes:Ljava/lang/String;
    :cond_e
    new-instance v7, Landroid/content/Intent;

    .end local v7           #mintent:Landroid/content/Intent;
    const-string v3, "com.htc.cs.CSSyncWebExceptionDB.DeviceDisconnected"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v7       #mintent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.accountactivities.CSConfirmDialog"

    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    .restart local v5       #notifyTitle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    .restart local v6       #notifyDes:Ljava/lang/String;
    const/4 v4, 0x5

    const/4 v8, 0x0

    sget-object v9, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V

    goto :goto_2

    .line 213
    .end local v5           #notifyTitle:Ljava/lang/String;
    .end local v6           #notifyDes:Ljava/lang/String;
    .end local v7           #mintent:Landroid/content/Intent;
    .end local v14           #data:Ljava/lang/String;
    :cond_f
    const-string v3, "com.htc.cs.connectedservice.updateURL"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 235
    .end local v16           #intentDashboard:Landroid/content/Intent;
    :cond_10
    const-string v3, "android.server.checkin.FOTA_INSTALL_COMPLETE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiverReceive FOTA installed completely intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v3, "update_result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 239
    .local v19, updateResult:Ljava/lang/String;
    if-eqz v19, :cond_0

    const-string v3, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, "MyHTC"

    const-string v4, "PoweronReceiverFOTA updateResult = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.cs.FOTA_INSTALL_COMPLETE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v16       #intentDashboard:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
