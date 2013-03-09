.class public Lcom/android/settings/wimax/WimaxReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WimaxReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxReceiver$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_WIMAX_AUTHEN:Ljava/lang/String; = "com.android.settings.wimax.authen"

.field public static final EXTRA_WIMAX_SCAN:Ljava/lang/String; = "com.android.settings.wimax.scan"

.field public static final NOTIFICATION_ID_AUTHEN_FAILED:I = 0x7f020101

.field public static final NOTIFICATION_ID_SCAN:I = 0x7f020102

.field private static final TAG:Ljava/lang/String; = "WimaxReceiver"

.field public static wimaxSignal:I


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mWimaxController:Lcom/htc/net/wimax/WimaxController;

.field private mWimaxError:Lcom/android/settings/wimax/WimaxError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wimax/WimaxReceiver;->wimaxSignal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method protected isWimaxSettingsShowing()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, isShowing:Z
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxReceiver;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxReceiver;->mActivityManager:Landroid/app/ActivityManager;

    .line 210
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxReceiver;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, topAct:Ljava/lang/String;
    const-string v3, "WimaxReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/settings/wimax/WimaxSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";top:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-class v3, Lcom/android/settings/wimax/WimaxSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    .end local v2           #topAct:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    const-string v13, "WimaxReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive(), action:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wimax/WimaxReceiver;->mContext:Landroid/content/Context;

    .line 84
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 85
    .local v9, manager:Landroid/app/NotificationManager;
    new-instance v13, Lcom/android/settings/wimax/WimaxError;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/wimax/WimaxError;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wimax/WimaxReceiver;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    .line 87
    const-string v13, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 90
    :cond_0
    const-string v13, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 91
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 95
    .local v8, mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 97
    .local v3, detailedState:Landroid/net/NetworkInfo$DetailedState;
    const-string v13, "WimaxReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "detailedState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; netType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-eq v13, v14, :cond_1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/16 v14, 0x12

    if-ne v13, v14, :cond_2

    .line 101
    :cond_1
    sget-object v13, Lcom/android/settings/wimax/WimaxReceiver$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 205
    .end local v3           #detailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v8           #mNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 93
    :cond_3
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .restart local v8       #mNetworkInfo:Landroid/net/NetworkInfo;
    goto :goto_0

    .line 108
    .restart local v3       #detailedState:Landroid/net/NetworkInfo$DetailedState;
    :pswitch_1
    const v13, 0x7f020102

    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wimax/WimaxReceiver;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/wimax/WimaxError;->setHasPendingErrorMsg(Z)V

    goto :goto_1

    .line 119
    .end local v3           #detailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v8           #mNetworkInfo:Landroid/net/NetworkInfo;
    :cond_4
    const-string v13, "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 120
    new-instance v11, Landroid/app/Notification;

    const v13, 0x7f020108

    const v14, 0x7f0c0463

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    move-wide v0, v15

    invoke-direct {v11, v13, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 123
    .local v11, notification:Landroid/app/Notification;
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x51

    if-ne v13, v14, :cond_6

    .line 124
    const v13, 0x7f020109

    iput v13, v11, Landroid/app/Notification;->icon:I

    .line 125
    const v13, 0x7f0c0464

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 135
    :cond_5
    :goto_2
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v7, itRescan:Landroid/content/Intent;
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.Settings$WimaxSettingsActivity"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v13, "com.android.settings.wimax.scan"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const/high16 v13, 0x1084

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v13, v7, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 144
    .local v12, pending:Landroid/app/PendingIntent;
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x51

    if-ne v13, v14, :cond_8

    .line 145
    const v13, 0x7f0c0464

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0c0461

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13, v14, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    :goto_3
    iget v13, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v11, Landroid/app/Notification;->flags:I

    .line 157
    const v13, 0x7f020102

    invoke-virtual {v9, v13, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 126
    .end local v7           #itRescan:Landroid/content/Intent;
    .end local v12           #pending:Landroid/app/PendingIntent;
    :cond_6
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x50

    if-ne v13, v14, :cond_5

    .line 127
    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v13, :cond_7

    .line 128
    const v13, 0x7f020106

    iput v13, v11, Landroid/app/Notification;->icon:I

    .line 132
    :goto_4
    const v13, 0x7f0c0465

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 130
    :cond_7
    const v13, 0x7f020105

    iput v13, v11, Landroid/app/Notification;->icon:I

    goto :goto_4

    .line 147
    .restart local v7       #itRescan:Landroid/content/Intent;
    .restart local v12       #pending:Landroid/app/PendingIntent;
    :cond_8
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x50

    if-ne v13, v14, :cond_9

    .line 148
    const v13, 0x7f0c0465

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0c0462

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13, v14, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 151
    :cond_9
    const v13, 0x7f0c0463

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0c0460

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13, v14, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 158
    .end local v7           #itRescan:Landroid/content/Intent;
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #pending:Landroid/app/PendingIntent;
    :cond_a
    const-string v13, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 160
    const-string v13, "curWimaxEnabledState"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 161
    const v13, 0x7f020102

    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wimax/WimaxReceiver;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/wimax/WimaxError;->setHasPendingErrorMsg(Z)V

    goto/16 :goto_1

    .line 164
    :cond_b
    const-string v13, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 165
    const-string v13, "newRssiLevel"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/android/settings/wimax/WimaxReceiver;->wimaxSignal:I

    goto/16 :goto_1

    .line 166
    :cond_c
    const-string v13, "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 167
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, it:Landroid/content/Intent;
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.wimax.WimaxDialog"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/high16 v13, 0x1084

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 174
    .end local v5           #it:Landroid/content/Intent;
    :cond_d
    const-string v13, "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 177
    :cond_e
    const-string v13, "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 178
    .local v4, isError:Z
    if-eqz v4, :cond_f

    const v13, 0x7f0c0468

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, notiTitle:Ljava/lang/String;
    :goto_5
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x50

    if-ne v13, v14, :cond_2

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wimax/WimaxReceiver;->isWimaxSettingsShowing()Z

    move-result v13

    if-nez v13, :cond_2

    .line 183
    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v13, :cond_10

    .line 184
    new-instance v11, Landroid/app/Notification;

    const v13, 0x7f020101

    const-wide/16 v14, 0x0

    invoke-direct {v11, v13, v10, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 189
    .restart local v11       #notification:Landroid/app/Notification;
    :goto_6
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, itAuthenFailed:Landroid/content/Intent;
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.Settings$WimaxSettingsActivity"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const/high16 v13, 0x1084

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    const-string v13, "com.android.settings.wimax.authen"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 197
    .restart local v12       #pending:Landroid/app/PendingIntent;
    const v13, 0x7f0c0477

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v10, v13, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 199
    iget v13, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v11, Landroid/app/Notification;->flags:I

    .line 200
    const v13, 0x7f020101

    invoke-virtual {v9, v13, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wimax/WimaxReceiver;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/wimax/WimaxError;->setHasPendingErrorMsg(Z)V

    goto/16 :goto_1

    .line 178
    .end local v6           #itAuthenFailed:Landroid/content/Intent;
    .end local v10           #notiTitle:Ljava/lang/String;
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #pending:Landroid/app/PendingIntent;
    :cond_f
    const v13, 0x7f0c0479

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 186
    .restart local v10       #notiTitle:Ljava/lang/String;
    :cond_10
    new-instance v11, Landroid/app/Notification;

    const v13, 0x7f020103

    const-wide/16 v14, 0x0

    invoke-direct {v11, v13, v10, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v11       #notification:Landroid/app/Notification;
    goto :goto_6

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
