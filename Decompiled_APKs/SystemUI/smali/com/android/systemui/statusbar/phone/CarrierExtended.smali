.class public Lcom/android/systemui/statusbar/phone/CarrierExtended;
.super Landroid/widget/LinearLayout;
.source "CarrierExtended.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;
    }
.end annotation


# static fields
.field private static final BATTERY_STATE:I = 0x2

.field private static final CPU_FREQ:I = 0x7

.field private static final CPU_STATE:I = 0x5

.field private static final CPU_USAGE:I = 0x6

.field static Cr:Landroid/content/ContentResolver; = null

.field private static final INTBUILD:Z = false

.field private static final MEMTOTAL_PATTERN:Ljava/lang/String; = "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

.field private static final RAM_STATE:I = 0x3

.field private static final SD_STATE:I = 0x4

.field private static final WIFI_STATE:I = 0x1

.field private static batteryInfo:Landroid/content/BroadcastReceiver;

.field private static isBattReceiverRegistred:Ljava/lang/Boolean;

.field private static isRefreshActive:Ljava/lang/Boolean;

.field private static isWifiReceiverRegistred:Ljava/lang/Boolean;

.field static lastIdle0:J

.field static lastIdle1:J

.field static lastTotal0:J

.field static lastTotal1:J

.field private static mContainer:Landroid/widget/LinearLayout;

.field static mContext:Landroid/content/Context;

.field private static mImage:Landroid/widget/ImageView;

.field private static mLabel:Landroid/widget/TextView;

.field private static mMode:I

.field static mRes:Landroid/content/res/Resources;

.field static mThread:Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

.field private static wifiInfo:Landroid/content/BroadcastReceiver;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mThread:Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isBattReceiverRegistred:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierExtended$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->batteryInfo:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierExtended$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->wifiInfo:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierExtended$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$3;-><init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierExtended$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$3;-><init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    int-to-char v5, v0

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static RemoveLast3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static UpdateSettings()V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    const v6, 0x7f02026e

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_statusbartext"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_statusbartext_showicon"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->setTextColor()V

    sget v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->setCustomText()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    const v3, 0x7f020270

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    const v3, 0x7f02026c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    const v3, 0x7f02026f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_5
    sput-wide v7, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal0:J

    sput-wide v7, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle0:J

    sput-wide v7, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal1:J

    sput-wide v7, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle1:J

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$0()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getWiFiInfo()V

    return-void
.end method

.method static synthetic access$3()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/phone/CarrierExtended;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static cancelRefresh()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m0narX_tweaks"

    const-string v1, "Disable refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static getCPUFreq()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/sys/devices/system/cpu/cpu1/online"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "idle"

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0800e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static getCPUInfo()V
    .locals 7

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0800d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getCPUUsage()V
    .locals 23

    :try_start_0
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v18, "/proc/stat"

    const-string v19, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v18, 0x0

    :try_start_1
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v18, "[ ]+"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v18, "cpu0"

    const/16 v19, 0x0

    aget-object v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    if-nez v18, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    sget-object v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    const-string v19, "/proc/stat error!"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v18, 0x4

    :try_start_2
    aget-object v18, v12, v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    const-wide/16 v14, 0x0

    const/4 v8, 0x1

    array-length v0, v12

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    sget-wide v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle0:J

    sub-long v3, v9, v18

    sget-wide v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal0:J

    sub-long v5, v14, v18

    sub-long v18, v5, v3

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v5

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c8

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    sput-wide v14, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal0:J

    sput-wide v9, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle0:J

    const/16 v17, -0x1

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v18, "[ ]+"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v18, "cpu1"

    const/16 v19, 0x0

    aget-object v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x4

    aget-object v18, v12, v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    const-wide/16 v14, 0x0

    const/4 v8, 0x1

    array-length v0, v12

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    sget-wide v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle1:J

    sub-long v3, v9, v18

    sget-wide v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal1:J

    sub-long v5, v14, v18

    sub-long v18, v5, v3

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v5

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c8

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    sput-wide v14, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal1:J

    sput-wide v9, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle1:J

    :cond_1
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    sget-object v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v19, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v20, 0x7f0800df

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v18

    :try_start_3
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    sget-object v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    const-string v19, "CPU usage error!"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    :try_start_4
    aget-object v11, v12, v18

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    add-long v14, v14, v20

    goto :goto_4

    :cond_4
    aget-object v11, v12, v18

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_5
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    add-long v14, v14, v20

    goto :goto_5

    :cond_6
    sget-object v18, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v19, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v20, 0x7f0800e0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v18

    goto :goto_3
.end method

.method private static getMEMInfo()V
    .locals 11

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sget-object v6, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long v2, v6, v8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getMemoryTotal()I

    move-result v6

    div-int/lit16 v6, v6, 0x400
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v6, 0x1

    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v7, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0800d6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemoryTotal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "/proc/meminfo"

    const-string v3, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getSDInfo()V
    .locals 15

    const-wide/16 v0, 0x400

    const-wide/32 v2, 0x100000

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v4, v9, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v7, v9, v11

    sget-object v9, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v10, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0800d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/32 v13, 0x100000

    div-long v13, v4, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-wide/32 v13, 0x100000

    div-long v13, v7, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getWiFiInfo()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0800dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0800dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0800db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, p1, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v5

    return-object v5

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static setCustomText()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isBattReceiverRegistred:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->batteryInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    if-eq v1, v5, :cond_1

    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    if-eq v1, v6, :cond_2

    sput-wide v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal0:J

    sput-wide v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle0:J

    sput-wide v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastTotal1:J

    sput-wide v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->lastIdle1:J

    :cond_2
    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_2
    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    if-eq v1, v6, :cond_4

    sget v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->cancelRefresh()V

    :cond_4
    return-void

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getWiFiInfo()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isWifiReceiverRegistred:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CarrierExtended;->batteryInfo:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isBattReceiverRegistred:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getMEMInfo()V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getSDInfo()V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getCPUInfo()V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getCPUUsage()V

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->getCPUFreq()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static setTextColor()V
    .locals 4

    const/4 v3, -0x2

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_extended_statusbartext_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public static startRefresh()V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m0narX_tweaks"

    const-string v1, "Enable refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mThread:Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;->run()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->cancelRefresh()V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, 0x0

    sput-object p1, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mRes:Landroid/content/res/Resources;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;-><init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mThread:Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

    new-instance v3, Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    const/high16 v4, 0x41a0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    const v4, -0xb3b3b4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x19

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mContainer:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CarrierExtended$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierExtended$4;-><init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;Landroid/os/Handler;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_extended_statusbartext"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_extended_statusbartext_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/CarrierExtended;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_extended_statusbartext_showicon"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->UpdateSettings()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "m0narX_tweaks"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "m0narX_tweaks"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->isRefreshActive:Ljava/lang/Boolean;

    return-void
.end method
