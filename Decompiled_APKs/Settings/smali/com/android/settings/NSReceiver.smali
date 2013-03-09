.class public Lcom/android/settings/NSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NSReceiver.java"


# static fields
.field public static BT:Z = false

.field public static final BT_Intent:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static EAS_AllowIS:Z = false

.field public static final INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String; = "com.android.internal.telephony.entitlement_check_fail"

.field public static final ISStop_Intent:Ljava/lang/String; = "com.htc.android.stopIS"

.field public static final IS_Intent:Ljava/lang/String; = "com.htc.android.startIS"

.field public static final IS_OFF_ACK:Ljava/lang/String; = "com.htc.android.ackISOFF"

.field private static Ignore_UMS:Z = false

.field public static final ShutDown_Intent:Ljava/lang/String; = "android.intent.action.QUICKBOOT_POWEROFF"

.field private static final TAG:Ljava/lang/String; = "NetSharing_NSReceiver"

.field public static USB:Z = false

.field public static final USB_Intent:Ljava/lang/String; = "com.htc.usb.change"

.field public static hasTethered:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneType:I

.field mService:Landroid/os/IHardwareService;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    sput-boolean v1, Lcom/android/settings/NSReceiver;->USB:Z

    .line 55
    sput-boolean v1, Lcom/android/settings/NSReceiver;->BT:Z

    .line 57
    sput-boolean v1, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 63
    sput-boolean v1, Lcom/android/settings/NSReceiver;->Ignore_UMS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/settings/NSReceiver;->mService:Landroid/os/IHardwareService;

    .line 76
    iput-object v0, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NSReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private controlCDMAnetShare(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 641
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 643
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 644
    if-eqz p1, :cond_0

    .line 645
    const-string v2, "netshare"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 656
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 648
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "netshare"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 654
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "NetSharing_NSReceiver"

    const-string v3, "RemoteException from "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 651
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    const-string v2, "NetSharing_NSReceiver"

    const-string v3, "Unable to find ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

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

.method private getPersistedMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 635
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 636
    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    return v1

    .line 635
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsbConnected()Z
    .locals 7

    .prologue
    .line 663
    const-string v3, "usb_cable_connect"

    .line 664
    .local v3, usbCableConnect:Ljava/lang/String;
    const-string v4, "online"

    .line 665
    .local v4, usbCableConnectCMCC:Ljava/lang/String;
    const-string v1, "/sys/devices/platform/android_usb/"

    .line 666
    .local v1, filePath:Ljava/lang/String;
    const-string v2, "/sys/class/power_supply/usb/"

    .line 668
    .local v2, filePathCMCC:Ljava/lang/String;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xda

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_1

    .line 669
    :cond_0
    invoke-static {v4, v2}, Lcom/android/settings/NSReceiver;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 676
    :goto_0
    return v5

    .line 672
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 674
    const-string v1, "/sys/devices/platform/android_usb/"

    .line 676
    :cond_2
    invoke-static {v3, v1}, Lcom/android/settings/NSReceiver;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fn"
    .parameter "filePath"

    .prologue
    .line 681
    const/4 v3, 0x0

    .line 682
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 684
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 686
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 689
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 690
    const-string v6, "NetSharing_NSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 701
    if-eqz v0, :cond_1

    .line 702
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 708
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 709
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 715
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 693
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "NetSharing_NSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 701
    if-eqz v0, :cond_4

    .line 702
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 708
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 709
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    move-object v3, v4

    .line 694
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v6, "NetSharing_NSReceiver"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 701
    if-eqz v0, :cond_6

    .line 702
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 708
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 709
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 714
    :cond_7
    :goto_7
    const-string v6, "NetSharing_NSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v5, ""

    goto :goto_2

    .line 700
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 701
    :goto_8
    if-eqz v0, :cond_8

    .line 702
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 708
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 709
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 700
    :cond_9
    :goto_a
    throw v6

    .line 704
    :catch_1
    move-exception v7

    goto :goto_9

    .line 711
    :catch_2
    move-exception v7

    goto :goto_a

    .line 704
    .restart local v2       #ex:Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 711
    :catch_4
    move-exception v6

    goto :goto_7

    .line 704
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .line 711
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 704
    .end local v5           #line:Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_3

    .line 711
    :catch_8
    move-exception v6

    goto :goto_4

    .line 700
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 697
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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "customizedNS:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v22, "WirelessSettings"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 88
    .local v19, sp:Landroid/content/SharedPreferences;
    const-string v22, "customizedNS"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    sput-object v22, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 91
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sp customizedNS:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v23, 0x2b

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v23, 0xad

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 95
    :cond_0
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    sput-object v22, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 96
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    sput-object v22, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 98
    :cond_1
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "customizedNS2:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "customizedML2:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v22, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_4

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    :goto_0
    sput-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    .line 102
    sget-object v22, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_2

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xd8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v22, 0x0

    :goto_1
    sput-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    .line 105
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xd8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v22, 0x1

    :goto_2
    sput-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    .line 108
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LAN Type:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ML Type:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IS Type:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " IS_ML:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v22, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_7

    .line 612
    :cond_3
    :goto_3
    return-void

    .line 101
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 102
    :cond_5
    const/16 v22, 0x1

    goto :goto_1

    .line 105
    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    .line 114
    :cond_7
    const-string v22, "hardware"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->mService:Landroid/os/IHardwareService;

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 117
    const-string v22, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/NSReceiver;->mPhoneType:I

    .line 122
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 123
    const-string v22, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    :cond_9
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.htc.usb.change"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 145
    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 146
    .local v15, pluggedType:I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v15, v0, :cond_b

    const/16 v22, 0x1

    :goto_4
    sput-boolean v22, Lcom/android/settings/NSReceiver;->USB:Z

    .line 148
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    .line 153
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "USB = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " hasTethered = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 158
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->controlCDMAnetShare(Z)V

    .line 160
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 161
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/settings/NSReceiver$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver$1;-><init>(Lcom/android/settings/NSReceiver;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 146
    :cond_b
    const/16 v22, 0x0

    goto :goto_4

    .line 176
    .end local v15           #pluggedType:I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.htc.android.startIS"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 178
    invoke-static {}, Lcom/android/settings/NSReceiver;->isUsbConnected()Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NSReceiver;->USB:Z

    .line 179
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "USB = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-boolean v22, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v22, :cond_3

    .line 184
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    .line 190
    const/16 v18, 0x0

    .line 191
    .local v18, sim:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 193
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "phonyType = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " sim_state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 195
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v18, 0x1

    .line 201
    :goto_5
    if-eqz v18, :cond_13

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/NSReceiver;->getPersistedMobileDataEnabled()Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 205
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/NSReceiver;->getPersistedAirplaneModeEnabled()Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/android/settings/NetSharingEnabler;->CheckWimax(Landroid/content/Context;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    .line 209
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "from settings provider : mobiledata = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", airplane = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " sim = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "wifi:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_18

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v22, :cond_18

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 217
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->controlCDMAnetShare(Z)V

    .line 220
    :cond_e
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xa1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 222
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string v23, "com.android.settings"

    const-string v24, "com.android.settings.ISActivity"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 223
    .local v12, mintent:Landroid/content/Intent;
    const/high16 v22, 0x1800

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const-string v22, "is_dialog_code"

    const/16 v23, 0x9

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 195
    .end local v12           #mintent:Landroid/content/Intent;
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 197
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_11

    const/16 v18, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_11
    const/16 v18, 0x0

    goto :goto_7

    .line 200
    :cond_12
    const-string v22, "NetSharing_NSReceiver"

    const-string v23, "null telephony manager"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 204
    :cond_13
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    goto/16 :goto_6

    .line 228
    :cond_14
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v22, :cond_15

    const-string v22, "internet_sharing"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "is_type"

    invoke-interface/range {v22 .. v23}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_15

    .line 230
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string v23, "com.android.settings"

    const-string v24, "com.android.settings.ISActivity"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 231
    .restart local v12       #mintent:Landroid/content/Intent;
    const/high16 v22, 0x1800

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const-string v22, "is_dialog_code"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 235
    .end local v12           #mintent:Landroid/content/Intent;
    :cond_15
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 238
    new-instance v12, Landroid/content/Intent;

    const-string v22, "com.android.usbtethering.warning_acg"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v12       #mintent:Landroid/content/Intent;
    const/high16 v22, 0x1800

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    const-string v22, "is_dialog_code"

    const/16 v23, 0x7

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 244
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/settings/NSReceiver$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver$2;-><init>(Lcom/android/settings/NSReceiver;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 260
    .end local v12           #mintent:Landroid/content/Intent;
    :cond_16
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_17

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 261
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    .line 264
    :cond_17
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 266
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/settings/NSReceiver$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver$3;-><init>(Lcom/android/settings/NSReceiver;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 284
    :cond_18
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v22

    if-nez v22, :cond_3

    .line 286
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_1a

    .line 289
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_19

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    .line 292
    :cond_19
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 294
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/settings/NSReceiver$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver$4;-><init>(Lcom/android/settings/NSReceiver;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 322
    :goto_8
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "alive = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->alive:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " hasTethered = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mobile = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " airplane =  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 313
    :cond_1a
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string v23, "com.android.settings"

    const-string v24, "com.android.settings.ISActivity"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 314
    .restart local v12       #mintent:Landroid/content/Intent;
    const/high16 v22, 0x1800

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    const-string v22, "is_dialog_code"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.htc.android.startIS.Fail"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 325
    .end local v12           #mintent:Landroid/content/Intent;
    .end local v18           #sim:Z
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 328
    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 330
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v22

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_3

    .line 332
    :try_start_0
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 334
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 337
    :catch_0
    move-exception v6

    .line 339
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 345
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 347
    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    .line 349
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_1e

    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v22, :cond_1e

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_1e

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 352
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->controlCDMAnetShare(Z)V

    .line 355
    :cond_1d
    :try_start_1
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 357
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 360
    :catch_1
    move-exception v6

    .line 362
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 365
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1e
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_3

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v22, :cond_3

    .line 366
    invoke-static/range {p1 .. p1}, Lcom/android/settings/ModemLinkEnabler;->notifyMLAirplane(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 368
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.htc.android.stopIS"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.android.internal.telephony.entitlement_check_fail"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 370
    :cond_20
    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_23

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_21

    .line 373
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->controlCDMAnetShare(Z)V

    .line 377
    :cond_21
    :try_start_2
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v22, Landroid/content/Intent;

    const-string v23, "INTENT_STOP_IS"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 382
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v22

    if-nez v22, :cond_22

    .line 383
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    :cond_22
    :goto_9
    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.htc.android.ackISOFF"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 387
    :catch_2
    move-exception v6

    .line 389
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 392
    .end local v6           #e:Ljava/lang/Exception;
    :cond_23
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_22

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_22

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    goto :goto_9

    .line 411
    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 413
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_25

    .line 414
    invoke-static/range {p1 .. p2}, Lcom/android/settings/NetSharingEnabler;->CheckWiFi(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 417
    :cond_25
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v22

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_3

    .line 419
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 421
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    goto/16 :goto_3

    .line 425
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 427
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_27

    .line 430
    :try_start_3
    const-string v22, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    .line 431
    .local v13, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 438
    .end local v13           #networkInfo:Landroid/net/NetworkInfo;
    :cond_27
    :goto_a
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "wifienabled:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v22

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_3

    .line 441
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 443
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    goto/16 :goto_3

    .line 433
    :catch_3
    move-exception v6

    .line 434
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 472
    .end local v6           #e:Ljava/lang/Exception;
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 473
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 476
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, mUsbRegexs:[Ljava/lang/String;
    const-string v22, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 480
    .local v3, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 481
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, o:Ljava/lang/String;
    move-object/from16 v17, v14

    .line 482
    check-cast v17, Ljava/lang/String;

    .line 483
    .local v17, s:Ljava/lang/String;
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_b
    if-ge v8, v9, :cond_29

    aget-object v16, v4, v8

    .line 484
    .local v16, regex:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2a

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 483
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 489
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v14           #o:Ljava/lang/String;
    .end local v16           #regex:Ljava/lang/String;
    .end local v17           #s:Ljava/lang/String;
    :cond_2b
    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_2c

    .line 490
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 498
    :goto_c
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Tethered state change:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 492
    :cond_2c
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->closing:Z

    goto :goto_c

    .line 500
    .end local v3           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v11           #mUsbRegexs:[Ljava/lang/String;
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 502
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get ShutDown intent. hasTethered:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "three condition:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_2e

    .line 506
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 508
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    goto/16 :goto_3

    .line 510
    :cond_2e
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_3

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 515
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 518
    const-string v22, "NetSharing_NSReceiver"

    const-string v23, "bt changed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v22, "android.bluetooth.adapter.extra.STATE"

    const/high16 v23, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 520
    .local v20, state:I
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bt state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v22, 0xc

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_30

    const/16 v22, 0x1

    :goto_d
    sput-boolean v22, Lcom/android/settings/NSReceiver;->BT:Z

    .line 524
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BT = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->BT:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", tethered = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v22, :cond_3

    .line 532
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NSReceiver;->BT:Z

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_3

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 522
    :cond_30
    const/16 v22, 0x0

    goto :goto_d

    .line 536
    .end local v20           #state:I
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 539
    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->alive:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v22, :cond_3

    .line 541
    const-string v22, "android.app.admin.extra.ALLOW_STATUS"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 543
    .local v21, status:I
    if-nez v21, :cond_34

    .line 544
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 547
    :goto_e
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EAS Allow IS:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-boolean v22, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v22, :cond_3

    .line 551
    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v22, :cond_35

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/NSReceiver;->mPhoneType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_32

    .line 554
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->controlCDMAnetShare(Z)V

    .line 558
    :cond_32
    :try_start_4
    const-string v22, "NetSharing"

    const-string v23, "setNetSharing(0)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v22, Landroid/content/Intent;

    const-string v23, "INTENT_STOP_IS"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 563
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v22

    if-nez v22, :cond_33

    .line 564
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 574
    :cond_33
    :goto_f
    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.htc.android.ackISOFF"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 546
    :cond_34
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto :goto_e

    .line 566
    :catch_4
    move-exception v6

    .line 568
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 571
    .end local v6           #e:Ljava/lang/Exception;
    :cond_35
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v22, :cond_33

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v22

    if-eqz v22, :cond_33

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    goto :goto_f

    .line 577
    .end local v21           #status:I
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.htc.is.enabled"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37

    .line 579
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_PREINSTALL:Z

    if-eqz v22, :cond_3

    .line 580
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    goto/16 :goto_3

    .line 583
    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.htc.is.disabled"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 585
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_PREINSTALL:Z

    if-eqz v22, :cond_3

    .line 586
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    goto/16 :goto_3

    .line 588
    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 590
    sget-boolean v22, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/settings/NetSharingEnabler;->requestMHS:Z

    if-eqz v22, :cond_3

    .line 593
    const-string v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 595
    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    const/16 v22, -0x22

    const/16 v23, -0x1

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v10

    .line 596
    .local v10, mMHSstatus:I
    const-string v22, "NetSharing_NSReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MHS status:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-nez v10, :cond_39

    .line 599
    sget-boolean v22, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v22, :cond_39

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.htc.android.startIS"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    const-string v22, "NetSharing_NSReceiver"

    const-string v23, "broadcast com.htc.android.startIS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_39
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/NetSharingEnabler;->requestMHS:Z

    goto/16 :goto_3

    .line 608
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v10           #mMHSstatus:I
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    goto/16 :goto_3
.end method
