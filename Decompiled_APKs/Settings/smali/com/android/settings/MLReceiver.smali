.class public Lcom/android/settings/MLReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MLReceiver.java"


# static fields
.field public static BT:Z = false

.field public static EAS_AllowIS:Z = false

.field public static final IS_Intent:Ljava/lang/String; = "com.htc.android.startIS"

.field public static final IS_OFF_ACK:Ljava/lang/String; = "com.htc.android.ackISOFF"

.field public static final MLStop_Intent:Ljava/lang/String; = "com.htc.android.stopML"

.field public static final ML_Intent:Ljava/lang/String; = "com.htc.android.startML"

.field public static final QShutDown_Intent:Ljava/lang/String; = "android.intent.action.QUICKBOOT_POWEROFF"

.field private static final TAG:Ljava/lang/String; = "MLReceiver"

.field public static USB:Z = false

.field public static final USB_Intent:Ljava/lang/String; = "com.htc.usb.change"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/android/settings/MLReceiver;->USB:Z

    .line 38
    sput-boolean v0, Lcom/android/settings/MLReceiver;->BT:Z

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fn"

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 388
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/devices/platform/msm_hsusb/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 390
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 392
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 393
    const-string v6, "MLReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 404
    if-eqz v0, :cond_1

    .line 405
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 409
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 410
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 416
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 396
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "MLReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property /sys/devices/platform/msm_hsusb/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 404
    if-eqz v0, :cond_4

    .line 405
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 409
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 410
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    move-object v3, v4

    .line 398
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 400
    :catch_0
    move-exception v2

    .line 401
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v6, "MLReceiver"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 404
    if-eqz v0, :cond_6

    .line 405
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 409
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 410
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 414
    :cond_7
    :goto_7
    const-string v6, "MLReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property /sys/devices/platform/msm_hsusb/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v5, ""

    goto :goto_2

    .line 403
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 404
    :goto_8
    if-eqz v0, :cond_8

    .line 405
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 409
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 410
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 403
    :cond_9
    :goto_a
    throw v6

    .line 406
    :catch_1
    move-exception v7

    goto :goto_9

    .line 411
    :catch_2
    move-exception v7

    goto :goto_a

    .line 406
    .restart local v2       #ex:Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 411
    :catch_4
    move-exception v6

    goto :goto_7

    .line 406
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto :goto_0

    .line 411
    :catch_6
    move-exception v6

    goto :goto_1

    .line 406
    .end local v5           #line:Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_3

    .line 411
    :catch_8
    move-exception v6

    goto :goto_4

    .line 403
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 400
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5
.end method


# virtual methods
.method public isUsbConnected()Z
    .locals 2

    .prologue
    .line 381
    const-string v0, "usb_cable_connect"

    invoke-direct {p0, v0}, Lcom/android/settings/MLReceiver;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customizedML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 66
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v10, "customizedML"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 69
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sp customizedML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_0

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xad

    if-ne v10, v11, :cond_1

    .line 73
    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 74
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 76
    :cond_1
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customizedNS2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "customizedML2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v10, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_0
    sput-boolean v10, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    .line 79
    sget-object v10, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd8

    if-ne v10, v11, :cond_5

    :cond_2
    const/4 v10, 0x0

    :goto_1
    sput-boolean v10, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    .line 82
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-eq v10, v11, :cond_6

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd8

    if-eq v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    .line 85
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LAN Type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ML Type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IS Type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IS_ML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v10, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    sget-boolean v10, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-nez v10, :cond_7

    .line 370
    :cond_3
    :goto_3
    return-void

    .line 78
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 79
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 82
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 90
    :cond_7
    iput-object p1, p0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    .line 91
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "alive:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v5

    .line 94
    .local v5, mlstate:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.usb.change"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 98
    const-string v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 99
    .local v7, pluggedType:I
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pluggedType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v10, 0x2

    if-ne v7, v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    sput-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    .line 103
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    .line 109
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    if-nez v5, :cond_3

    .line 113
    :cond_8
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USB = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", modemlink = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ML Interface:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    if-nez v10, :cond_3

    if-eqz v5, :cond_3

    .line 119
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 120
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 121
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 122
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    goto/16 :goto_3

    .line 100
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 168
    .end local v7           #pluggedType:I
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.android.startIS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 170
    sget-boolean v10, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-nez v10, :cond_3

    .line 173
    invoke-static {}, Lcom/android/settings/NSReceiver;->isUsbConnected()Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    .line 174
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USB = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v10, :cond_3

    .line 177
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    .line 182
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    if-eqz v10, :cond_b

    .line 184
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.ISActivity"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 185
    .local v6, nintent:Landroid/content/Intent;
    const/high16 v10, 0x1800

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    const-string v10, "is_dialog_code"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 191
    .end local v6           #nintent:Landroid/content/Intent;
    :cond_b
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    if-nez v5, :cond_3

    .line 194
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/ModemLinkEnabler;->setMLInterface(I)V

    .line 195
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 196
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getDataConnection()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 198
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.ISActivity"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 199
    .local v4, mintent:Landroid/content/Intent;
    const/high16 v10, 0x1800

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-string v10, "is_dialog_code"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 205
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_c
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 206
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 207
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 208
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    goto/16 :goto_3

    .line 212
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.android.startML"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 214
    invoke-static {}, Lcom/android/settings/NSReceiver;->isUsbConnected()Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    .line 215
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USB = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mlstate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " alive: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hotspot:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-boolean v10, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v10, :cond_3

    .line 219
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    .line 224
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    if-eqz v10, :cond_e

    .line 226
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.ISActivity"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 227
    .restart local v6       #nintent:Landroid/content/Intent;
    const/high16 v10, 0x1800

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    const-string v10, "is_dialog_code"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 233
    .end local v6           #nintent:Landroid/content/Intent;
    :cond_e
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    if-nez v5, :cond_3

    .line 236
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/ModemLinkEnabler;->setMLInterface(I)V

    .line 237
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 238
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getDataConnection()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 240
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.ISActivity"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 241
    .restart local v4       #mintent:Landroid/content/Intent;
    const/high16 v10, 0x1800

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const-string v10, "is_dialog_code"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 247
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_f
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 248
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 249
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 250
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    goto/16 :goto_3

    .line 255
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 257
    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/ModemLinkEnabler;->airplane:Z

    .line 258
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->airplane:Z

    if-eqz v10, :cond_3

    if-eqz v5, :cond_3

    .line 259
    invoke-static {p1}, Lcom/android/settings/ModemLinkEnabler;->notifyMLAirplane(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 261
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INTENT_HTCSYNC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INTENT_DISK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INTENT_CHARGEONLY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INTENT_CHARGEONLY_FOR_EXTERNAL_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 277
    :cond_12
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 278
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 279
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 280
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 281
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.android.ackISOFF"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 283
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 286
    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 287
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 288
    .local v1, hotstate:I
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hotstate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v10, 0xd

    if-eq v1, v10, :cond_14

    const/16 v10, 0xc

    if-ne v1, v10, :cond_15

    .line 293
    :cond_14
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    .line 298
    :goto_5
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    .line 300
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 302
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 303
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 304
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 305
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 306
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.android.ackISOFF"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 296
    :cond_15
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    goto :goto_5

    .line 312
    .end local v1           #hotstate:I
    .end local v3           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 315
    sget-boolean v10, Lcom/android/settings/ModemLinkEnabler;->alive:Z

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v10, :cond_3

    .line 317
    const-string v10, "android.app.admin.extra.ALLOW_STATUS"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 319
    .local v9, status:I
    if-nez v9, :cond_17

    .line 320
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    .line 323
    :goto_6
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS Allow IS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-boolean v10, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    if-nez v10, :cond_3

    .line 326
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 327
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 328
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 329
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 330
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.android.ackISOFF"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 322
    :cond_17
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    goto :goto_6

    .line 333
    .end local v9           #status:I
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 335
    const-string v10, "connectivity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 337
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v10, -0x22

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v11, v12}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v2

    .line 338
    .local v2, mMHSstatus:I
    const-string v10, "MLReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MHS status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-nez v2, :cond_19

    .line 342
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 343
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 344
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 345
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    goto/16 :goto_3

    .line 347
    :cond_19
    const/4 v10, 0x1

    if-ne v2, v10, :cond_3

    .line 350
    const/4 v10, 0x1

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 351
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 352
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 353
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    goto/16 :goto_3

    .line 356
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #mMHSstatus:I
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 357
    invoke-static {p1}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 359
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.ml.enabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 361
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    goto/16 :goto_3

    .line 364
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.ml.disabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 367
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/ModemLinkEnabler;->turnOn:Z

    goto/16 :goto_3
.end method
