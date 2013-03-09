.class public Lcom/s0up/goomanager/RomUpdateReciever;
.super Landroid/content/BroadcastReceiver;
.source "RomUpdateReciever.java"


# static fields
.field public static final PREFERENCES_FILE:Ljava/lang/String; = "goomanager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 27
    .local v5, bundle:Landroid/os/Bundle;
    const-string v21, "goomanager"

    .line 28
    const/16 v22, 0x0

    .line 27
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 30
    .local v17, preferences:Landroid/content/SharedPreferences;
    const-string v21, "check_for_updates"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "manual_check"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v21, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 37
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 39
    .local v7, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 43
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->checkForGappsUpdate()Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, gapps_result:Ljava/lang/String;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "GOO: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    if-eqz v10, :cond_2

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "no_gapps_props"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 46
    :cond_2
    if-eqz v5, :cond_3

    const-string v21, "manual_gapps_check"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 48
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v11, i:Landroid/content/Intent;
    const-string v21, "status"

    const-string v22, "NO_GAPPS_UPDATES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v21, "com.s0up.goomanager.NO_UPDATES"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    .end local v11           #i:Landroid/content/Intent;
    :cond_3
    const-string v21, "GooManager"

    const-string v22, "No update found."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_4
    if-eqz v10, :cond_5

    const-string v21, "false"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 60
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v12, jsonObj:Lorg/json/JSONObject;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "http://goo.im"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "path"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, downloadLink:Ljava/lang/String;
    const-string v21, "md5"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, gappsMd5:Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/s0up/goomanager/WebViewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v20, webViewIntent:Landroid/content/Intent;
    const-string v21, "fileMd5"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v21, "downloadLink"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v21, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 66
    check-cast v13, Landroid/app/NotificationManager;

    .line 69
    .local v13, noticationManager:Landroid/app/NotificationManager;
    new-instance v14, Landroid/app/Notification;

    const v21, 0x7f020006

    .line 70
    const-string v22, "Google apps update available.  Tap to download"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 69
    move/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 71
    .local v14, notification:Landroid/app/Notification;
    const/16 v21, 0x0

    const/high16 v22, 0x4000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 74
    .local v16, pendingIntent:Landroid/app/PendingIntent;
    const/16 v21, 0x10

    move/from16 v0, v21

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 75
    const-string v21, "Gapps update available"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 76
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v8           #downloadLink:Ljava/lang/String;
    .end local v9           #gappsMd5:Ljava/lang/String;
    .end local v12           #jsonObj:Lorg/json/JSONObject;
    .end local v13           #noticationManager:Landroid/app/NotificationManager;
    .end local v14           #notification:Landroid/app/Notification;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v20           #webViewIntent:Landroid/content/Intent;
    :cond_5
    :goto_1
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->checkForUpdate()Ljava/lang/String;

    move-result-object v19

    .line 85
    .local v19, result:Ljava/lang/String;
    if-eqz v19, :cond_6

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    const-string v21, "no_props"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 86
    :cond_6
    if-eqz v5, :cond_7

    const-string v21, "manual_check"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 88
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 89
    .restart local v11       #i:Landroid/content/Intent;
    const-string v21, "status"

    const-string v22, "NO_UPDATES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v21, "com.s0up.goomanager.NO_UPDATES"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v11           #i:Landroid/content/Intent;
    :cond_7
    const-string v21, "GooManager"

    const-string v22, "No update found."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    :cond_8
    const-string v21, "no_props"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 99
    new-instance v6, Landroid/content/Intent;

    const-class v21, Lcom/s0up/goomanager/RomUpdateReciever;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v6, checkForUpdatesIntent:Landroid/content/Intent;
    const/16 v21, 0x0

    .line 101
    const/16 v22, 0x0

    .line 100
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 103
    .restart local v16       #pendingIntent:Landroid/app/PendingIntent;
    const-string v21, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    check-cast v4, Landroid/app/AlarmManager;

    .line 104
    .local v4, alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 109
    .end local v4           #alarmManager:Landroid/app/AlarmManager;
    .end local v6           #checkForUpdatesIntent:Landroid/content/Intent;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    :cond_9
    const-string v21, "GooManager"

    const-string v22, "Update found... starting notification for a proper activity"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v21, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 111
    check-cast v13, Landroid/app/NotificationManager;

    .line 114
    .restart local v13       #noticationManager:Landroid/app/NotificationManager;
    new-instance v14, Landroid/app/Notification;

    const v21, 0x7f020006

    .line 115
    const-string v22, "Rom update available"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 114
    move/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 116
    .restart local v14       #notification:Landroid/app/Notification;
    new-instance v15, Landroid/content/Intent;

    const-class v21, Lcom/s0up/goomanager/RomUpdateActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v15, notificationIntent:Landroid/content/Intent;
    const-string v21, "json"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/16 v21, 0x0

    const/high16 v22, 0x4000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 119
    .restart local v16       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 121
    .local v18, res:Landroid/content/res/Resources;
    const/16 v21, 0x10

    move/from16 v0, v21

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 122
    const v21, 0x7f070008

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 123
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 78
    .end local v13           #noticationManager:Landroid/app/NotificationManager;
    .end local v14           #notification:Landroid/app/Notification;
    .end local v15           #notificationIntent:Landroid/content/Intent;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v19           #result:Ljava/lang/String;
    :catch_0
    move-exception v21

    goto/16 :goto_1
.end method
