.class public Lcom/android/settings/ModemLinkEnabler;
.super Ljava/lang/Object;
.source "ModemLinkEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field protected static final KeyFile:Ljava/lang/String; = "/data/data/com.android.settings/files/miscConfig"

.field private static final ML_SP_AIRPLANE_KEY:Ljava/lang/String; = "service.modem.command"

.field private static final ML_SP_AIRPLANE_VALUE:Ljava/lang/String; = "airplane"

.field protected static final ML_SP_DISABLED_VALUE:Ljava/lang/String; = "0"

.field protected static final ML_SP_ENABLED_VALUE:Ljava/lang/String; = "1"

.field private static final ML_SP_FUN_KEY:Ljava/lang/String; = "service.modem.enable"

.field private static final ML_SP_INTERFACE_BT_VALUE:Ljava/lang/String; = "BT"

.field private static final ML_SP_INTERFACE_KEY:Ljava/lang/String; = "service.modem.interface"

.field private static final ML_SP_INTERFACE_USB_VALUE:Ljava/lang/String; = "USB"

.field protected static final ML_SP_MDM_PORT:Ljava/lang/String; = null

.field private static final ML_SP_STATUS_KEY:Ljava/lang/String; = "init.svc.modem"

.field private static final ML_SP_STATUS_OFF_VALUE:Ljava/lang/String; = "stopped"

.field private static final ML_SP_STATUS_ON_VALUE:Ljava/lang/String; = "running"

.field private static final ML_SP_STATUS_RESTART_VALUE:Ljava/lang/String; = "restarting"

.field protected static final ML_SP_USB_HUB:Ljava/lang/String; = "/sys/module/smsc251x/parameters/hub_enabled"

.field private static final MSG_CHECK_DEPEND:I = 0x5

.field private static final MSG_DISABLE_FAIL:I = 0x4

.field private static final MSG_DISABLE_OK:I = 0x3

.field private static final MSG_ENABLE_FAIL:I = 0x2

.field private static final MSG_ENABLE_OK:I = 0x1

.field private static final MSG_SHOW_KEEP_DIALOG:I = 0x7

.field private static final MSG_SHOW_SIMPLE_DIALOG:I = 0x6

.field public static final NOTE_IS_DISABLE:Ljava/lang/String; = "com.htc.is.disabled"

.field public static final NOTE_IS_ENABLE:Ljava/lang/String; = "com.htc.is.enabled"

.field private static final TAG:Ljava/lang/String; = "ModemLink"

.field private static final TAG_Receiver:Ljava/lang/String; = "ModemLink_Receiver"

.field public static airplane:Z

.field public static alive:Z

.field public static hasDiagEnabled:Z

.field public static hotspotenabled:Z

.field public static installed:Z

.field public static isMLOn:Z

.field private static mContext:Landroid/content/Context;

.field protected static mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

.field public static opening:Z

.field public static turnOn:Z


# instance fields
.field private mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field public mIDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const-string v0, "/sys/class/android_usb/f_rmnet/on"

    :goto_0
    sput-object v0, Lcom/android/settings/ModemLinkEnabler;->ML_SP_MDM_PORT:Ljava/lang/String;

    .line 106
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    .line 108
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->airplane:Z

    .line 110
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    .line 113
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->opening:Z

    .line 115
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->hasDiagEnabled:Z

    .line 117
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    .line 119
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->isMLOn:Z

    .line 121
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    return-void

    .line 76
    :cond_0
    const-string v0, "/sys/module/msm72k_udc/parameters/mdm_port_enabled"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ModemLinkEnabler;->status:I

    .line 105
    iput-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 109
    iput-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 260
    new-instance v0, Lcom/android/settings/ModemLinkEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ModemLinkEnabler$2;-><init>(Lcom/android/settings/ModemLinkEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 398
    new-instance v0, Lcom/android/settings/ModemLinkEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ModemLinkEnabler$3;-><init>(Lcom/android/settings/ModemLinkEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;

    .line 127
    const-string v0, "ModemLink"

    const-string v1, "ModemLinkEnabler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sput-object p2, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 129
    sput-object p1, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.startIS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 131
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    :cond_0
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.startML"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    :cond_1
    return-void
.end method

.method public static Check_Type(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 429
    invoke-static {p0}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 431
    sget-boolean v0, Lcom/android/settings/MLReceiver;->USB:Z

    .line 435
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/settings/MLReceiver;->BT:Z

    goto :goto_0
.end method

.method public static GiveISNote(ZLandroid/content/Context;)V
    .locals 11
    .parameter "visible"
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0200e5

    .line 806
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v6, :cond_0

    .line 898
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-static {p1}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 811
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 812
    .local v1, mNM:Landroid/app/NotificationManager;
    if-eqz p0, :cond_4

    .line 814
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.WirelessSettings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 815
    .local v5, wirelessIntent:Landroid/content/Intent;
    invoke-static {p1, v10, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 816
    .local v0, contentIntent:Landroid/app/PendingIntent;
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v6, :cond_1

    const v6, 0x7f0c030d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 818
    .local v4, title:Ljava/lang/String;
    :goto_1
    const v6, 0x7f0c0317

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, message:Ljava/lang/String;
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v9, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 820
    .local v3, notification:Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 821
    invoke-virtual {v3, p1, v4, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 823
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 824
    invoke-virtual {v1, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 826
    sget-boolean v6, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v6, :cond_3

    .line 827
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v6, :cond_2

    .line 829
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.ml.enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.ml.enabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 816
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    const v6, 0x7f0c032c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 834
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #notification:Landroid/app/Notification;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.enabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 839
    :cond_3
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.bt.enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.bt.enabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 844
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #wirelessIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 845
    sget-boolean v6, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v6, :cond_6

    .line 846
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v6, :cond_5

    .line 848
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.ml.disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.ml.disabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 853
    :cond_5
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.disabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 858
    :cond_6
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.bt.disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.bt.disabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 865
    .end local v1           #mNM:Landroid/app/NotificationManager;
    :cond_7
    if-eqz p1, :cond_b

    .line 867
    if-eqz p0, :cond_9

    .line 869
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v6, :cond_8

    .line 871
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.ml.enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.ml.enabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 876
    :cond_8
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.enabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 882
    :cond_9
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v6, :cond_a

    .line 884
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.ml.disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.ml.disabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 889
    :cond_a
    const-string v6, "ModemLink"

    const-string v7, "send intent com.htc.is.disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.is.disabled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 895
    :cond_b
    const-string v6, "ModemLink"

    const-string v7, "null context to send intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static ShowConnectionDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 519
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    if-nez p1, :cond_0

    const v0, 0x7f0c0334

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0313

    new-instance v2, Lcom/android/settings/ModemLinkEnabler$4;

    invoke-direct {v2}, Lcom/android/settings/ModemLinkEnabler$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 526
    return-void

    .line 519
    :cond_0
    const v0, 0x7f0c0335

    goto :goto_0
.end method

.method public static StartCTModem(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const v7, 0x10403ff

    const/4 v6, 0x1

    .line 1020
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1022
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 1023
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1045
    :goto_0
    return-void

    .line 1028
    :cond_0
    const/4 v2, 0x0

    .line 1029
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1030
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->enableModemLink()I

    move-result v2

    .line 1035
    :goto_1
    if-nez v2, :cond_2

    .line 1036
    const-string v3, "ModemLink"

    const-string v4, "Mount success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1032
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->setMountISOEnabled(Z)I

    move-result v2

    goto :goto_1

    .line 1038
    :cond_2
    const-string v3, "ModemLink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mount fail, storage reault code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ModemLinkEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/ModemLinkEnabler;->toggleMLState(Z)V

    return-void
.end method

.method public static getDataConnection()Z
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public static getMLInterface()I
    .locals 4

    .prologue
    .line 707
    const-string v1, "service.modem.interface"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, s:Ljava/lang/String;
    const-string v1, "ModemLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ML interface = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v1, "BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    const/4 v1, 0x1

    .line 712
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 555
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v3, :cond_6

    .line 557
    :cond_0
    const-string v3, "init.svc.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, s:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-eqz v3, :cond_2

    .line 563
    const-string v1, "ModemLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-boolean v1, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    .line 583
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 566
    .restart local v0       #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "stopped"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    :cond_3
    const-string v1, "ModemLink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ML value = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "alive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 569
    goto :goto_0

    .line 571
    :cond_4
    const-string v3, "running"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "restarting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 573
    :cond_5
    const-string v2, "ModemLink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ML value = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "alive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    .end local v0           #s:Ljava/lang/String;
    :cond_6
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_8

    .line 578
    :cond_7
    const-string v1, "ModemLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMLOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/ModemLinkEnabler;->isMLOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-boolean v1, Lcom/android/settings/ModemLinkEnabler;->isMLOn:Z

    goto/16 :goto_0

    .line 581
    :cond_8
    sget-object v3, Lcom/android/settings/ModemLinkEnabler;->ML_SP_MDM_PORT:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/ModemLinkEnabler;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    .restart local v0       #s:Ljava/lang/String;
    :cond_9
    move v1, v2

    .line 583
    goto/16 :goto_0
.end method

.method public static notifyMLAirplane(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 588
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_2

    .line 589
    :cond_0
    const-string v0, "service.modem.command"

    const-string v1, "airplane"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    invoke-static {v2, p0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 594
    invoke-static {v2, p0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 595
    invoke-static {v2, p0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 596
    sget-boolean v0, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-eqz v0, :cond_1

    .line 597
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0c032f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 598
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 597
    :cond_3
    const v0, 0x7f0c032d

    goto :goto_1
.end method

.method public static readAttrFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"

    .prologue
    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 930
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 934
    .local v4, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 936
    if-nez v3, :cond_0

    .line 937
    move-object v3, v4

    goto :goto_0

    .line 939
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 950
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_2

    .line 951
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 957
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 959
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 962
    .restart local v3       #ret:Ljava/lang/String;
    :cond_3
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAttrFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-object v3

    .line 943
    :catch_0
    move-exception v0

    .line 945
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 953
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 943
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method protected static readMisc8()Z
    .locals 13

    .prologue
    .line 973
    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    const-string v10, "/data/data/com.android.settings/files/miscConfig"

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 974
    .local v9, tmpKey:Ljava/io/FileWriter;
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 975
    .local v8, tempout:Ljava/io/BufferedWriter;
    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 977
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v8           #tempout:Ljava/io/BufferedWriter;
    :goto_0
    const/4 v4, 0x0

    .line 987
    .local v4, readTempMisc:B
    :try_start_1
    new-instance v5, Ljava/net/Socket;

    const-string v10, "127.0.0.1"

    const/16 v11, 0x2606

    invoke-direct {v5, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 988
    .local v5, server:Ljava/net/Socket;
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 989
    .local v0, In:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 990
    .local v3, out:Ljava/io/OutputStream;
    const/4 v10, 0x3

    new-array v6, v10, [B

    fill-array-data v6, :array_0

    .line 991
    .local v6, setMisc8:[B
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 992
    const/16 v10, 0x80

    new-array v7, v10, [B

    .line 993
    .local v7, tempbyte:[B
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 994
    const/4 v10, 0x2

    aget-byte v4, v7, v10

    .line 995
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1002
    .end local v0           #In:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v5           #server:Ljava/net/Socket;
    .end local v6           #setMisc8:[B
    .end local v7           #tempbyte:[B
    :goto_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/files/miscConfig"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1010
    .end local v2           #file:Ljava/io/File;
    :goto_2
    if-eqz v4, :cond_0

    .line 1011
    const/4 v10, 0x0

    .line 1012
    :goto_3
    return v10

    .line 979
    .end local v4           #readTempMisc:B
    :catch_0
    move-exception v1

    .line 980
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ModemLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set Key"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #readTempMisc:B
    :catch_1
    move-exception v1

    .line 998
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "ModemLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DMagent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1005
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1006
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "ModemLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete key "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1012
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v10, 0x1

    goto :goto_3

    .line 990
    nop

    :array_0
    .array-data 0x1
        0xect
        0x6t
        0x0t
    .end array-data
.end method

.method public static setDataConnection(ZLandroid/content/Context;)V
    .locals 8
    .parameter "on"
    .parameter "context"

    .prologue
    .line 758
    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v5, :cond_0

    .line 760
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 763
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v5, -0x22

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v4

    .line 765
    .local v4, subscribed:I
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set data connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subscribed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eqz v4, :cond_0

    if-nez p0, :cond_0

    .line 801
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #subscribed:I
    :goto_0
    return-void

    .line 772
    :cond_0
    const/4 v2, 0x0

    .line 773
    .local v2, phoneService:Lcom/android/internal/telephony/ITelephony;
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 774
    if-nez v2, :cond_1

    .line 776
    const-string v5, "ModemLink"

    const-string v6, "null phoneService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_1
    const/4 v3, -0x1

    .line 782
    .local v3, state:I
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v3

    .line 783
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-nez p0, :cond_2

    .line 786
    const-string v5, "ModemLink"

    const-string v6, "diconnect data connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v5, "default"

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    .line 798
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 791
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v5, "ModemLink"

    const-string v6, "establish data connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v5, "default"

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDiagEnabled(ZLandroid/content/Context;)V
    .locals 4
    .parameter "on"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 679
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v1, :cond_0

    .line 680
    if-eqz p0, :cond_2

    .line 682
    const-string v1, "ModemLink"

    const-string v2, "enable diag port"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 685
    const-string v1, "com.android.dmcommandservice.BTSTART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    sput-boolean v3, Lcom/android/settings/ModemLinkEnabler;->hasDiagEnabled:Z

    .line 700
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 687
    .restart local v0       #i:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.android.dmcommandservice.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 691
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/android/settings/ModemLinkEnabler;->hasDiagEnabled:Z

    if-eqz v1, :cond_0

    .line 693
    const-string v1, "ModemLink"

    const-string v2, "disable diag port"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 695
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.dmcommandservice.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 697
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ModemLinkEnabler;->hasDiagEnabled:Z

    goto :goto_1
.end method

.method public static setMLEnabled(ZLandroid/content/Context;)V
    .locals 11
    .parameter "on"
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 605
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMLEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v5, :cond_4

    .line 613
    :cond_0
    const-string v5, "ModemLink"

    const-string v6, "Close PassThrough"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    const-string v5, "usbnet"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v4

    .line 616
    .local v4, mService:Lcom/htc/net/usbnet/IUsbnetController;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    .end local v4           #mService:Lcom/htc/net/usbnet/IUsbnetController;
    :goto_0
    sget-boolean v5, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v5, :cond_1

    .line 624
    invoke-static {v9, p1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    .line 626
    :cond_1
    if-eqz p0, :cond_3

    .line 627
    const-string v5, "service.modem.enable"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_2
    :goto_1
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMLEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close PassThrough Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 629
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v5, "service.modem.enable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_4
    if-eqz p0, :cond_7

    .line 634
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/settings/ModemLinkEnabler;->isMLOn:Z

    .line 635
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 637
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v5, -0x22

    invoke-virtual {v0, v5, v8, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 638
    .local v3, mMHSstatus:I
    if-eqz v3, :cond_5

    .line 639
    const/16 v5, -0x12

    invoke-virtual {v0, v5, v8, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 642
    :cond_5
    const-string v5, "ModemLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MHS status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez v3, :cond_6

    .line 647
    const-string v5, "ModemLink"

    const-string v6, "has subscribed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v5, Lcom/android/settings/ModemLinkEnabler;->ML_SP_MDM_PORT:Ljava/lang/String;

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/android/settings/ModemLinkEnabler;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :cond_6
    const-string v5, "ModemLink"

    const-string v6, "not subscribe"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ISActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 654
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1800

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 655
    const-string v5, "is_dialog_code"

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 660
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mMHSstatus:I
    :cond_7
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 662
    sput-boolean v9, Lcom/android/settings/ModemLinkEnabler;->isMLOn:Z

    .line 663
    sget-object v5, Lcom/android/settings/ModemLinkEnabler;->ML_SP_MDM_PORT:Ljava/lang/String;

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/android/settings/ModemLinkEnabler;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 665
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    const/16 v5, -0x42

    invoke-virtual {v0, v5, v8, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static setMLInterface(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 720
    if-nez p0, :cond_1

    .line 721
    const-string v0, "service.modem.interface"

    const-string v1, "USB"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 723
    const-string v0, "service.modem.interface"

    const-string v1, "BT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleMLState(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ModemLinkEnabler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ModemLinkEnabler$1;-><init>(Lcom/android/settings/ModemLinkEnabler;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 903
    const-string v2, "ModemLink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeAttrFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 921
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 914
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 917
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ModemLink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public HotspotWarningDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 530
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0336

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0337

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c075c

    new-instance v2, Lcom/android/settings/ModemLinkEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/ModemLinkEnabler$6;-><init>(Lcom/android/settings/ModemLinkEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c075d

    new-instance v2, Lcom/android/settings/ModemLinkEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ModemLinkEnabler$5;-><init>(Lcom/android/settings/ModemLinkEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 549
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->Check_Type(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_0

    .line 463
    sput-boolean v4, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    .line 464
    const-string v0, "ModemLink"

    const-string v1, "send intent com.htc.ml.enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ml.enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    :cond_0
    sget-boolean v0, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    if-eqz v0, :cond_2

    .line 469
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/ModemLinkEnabler;->HotspotWarningDialog(Landroid/content/Context;)V

    .line 514
    :cond_1
    :goto_0
    return v4

    .line 470
    :cond_2
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    if-nez v0, :cond_3

    .line 472
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/settings/ModemLinkEnabler;->StartCTModem(Landroid/content/Context;Z)V

    goto :goto_0

    .line 475
    :cond_3
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 476
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 477
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->setMLInterface(I)V

    .line 478
    invoke-direct {p0, v4}, Lcom/android/settings/ModemLinkEnabler;->toggleMLState(Z)V

    .line 479
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 485
    :cond_4
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkEnabler;->ShowConnectionDialog(Landroid/content/Context;I)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 491
    :cond_5
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_7

    .line 493
    sget-boolean v0, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    if-eqz v0, :cond_6

    .line 494
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/ModemLinkEnabler;->StartCTModem(Landroid/content/Context;Z)V

    .line 495
    sput-boolean v3, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    .line 498
    :cond_6
    const-string v0, "ModemLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sput-boolean v3, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    .line 500
    const-string v0, "ModemLink"

    const-string v1, "send intent com.htc.ml.disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ml.disabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    :cond_7
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c0310

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 505
    invoke-direct {p0, v3}, Lcom/android/settings/ModemLinkEnabler;->toggleMLState(Z)V

    .line 506
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v0, :cond_1

    .line 507
    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    .line 204
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 205
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 148
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ModemLinkEnabler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    sput-boolean v2, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    .line 152
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-nez v1, :cond_0

    .line 154
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/HtcIfDevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 156
    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    invoke-interface {v1, v6}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 159
    .local v0, status:I
    if-nez v0, :cond_1

    .line 160
    sput-boolean v3, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    .line 163
    :goto_0
    const-string v1, "ModemLink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EAS Allow IS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0           #status:I
    :cond_0
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v4, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 176
    const-string v1, "ModemLink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turn on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    if-nez v1, :cond_2

    .line 180
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c0329

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 181
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 200
    :goto_1
    return-void

    .line 162
    .restart local v0       #status:I
    :cond_1
    sput-boolean v2, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    goto :goto_0

    .line 184
    .end local v0           #status:I
    :cond_2
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 187
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_3
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v1, :cond_6

    .line 192
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v1, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 195
    :cond_4
    :goto_3
    sget-object v2, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0c032f

    :goto_4
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 196
    sget-object v1, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getDataConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto :goto_3

    .line 195
    :cond_7
    const v1, 0x7f0c032d

    goto :goto_4
.end method
